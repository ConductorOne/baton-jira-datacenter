package connector

import (
	"context"
	"errors"
	"fmt"
	"net/http"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

const _member = "member"

type groupBuilder struct {
	client *client.Client
}

func (g *groupBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return groupResourceType
}

func groupResource(ctx context.Context, group client.Group, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	// jira groups does not include ids only names
	profile := map[string]interface{}{
		"group_name": group.Name,
		"group_id":   group.Name,
	}
	groupTraitOptions := []sdkResource.GroupTraitOption{sdkResource.WithGroupProfile(profile)}
	resource, err := sdkResource.NewGroupResource(
		group.Name,
		groupResourceType,
		group.Name,
		groupTraitOptions,
		sdkResource.WithParentResourceID(parentResourceID),
	)
	if err != nil {
		return nil, err
	}

	return resource, nil
}

// List returns all the groups from the database as resource objects.
// Groups include a GroupTrait because they are the 'shape' of a standard user.
func (g *groupBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	var ret []*v2.Resource
	groups, err := g.client.ListAllGroups(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, group := range groups {
		res, err := groupResource(ctx, group, parentResourceID)
		if err != nil {
			return nil, "", nil, err
		}

		ret = append(ret, res)
	}

	return ret, "", nil, nil
}

func (g *groupBuilder) Entitlements(ctx context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	groupId := resource.Id.Resource
	groupRoles, err := g.client.GetGroupLabelRoles(ctx, groupId)
	if err != nil {
		return nil, "", nil, err
	}

	rv := make([]*v2.Entitlement, 0, len(groupRoles)+1)
	rv = append(rv, ent.NewAssignmentEntitlement(
		resource,
		_member,
		ent.WithGrantableTo(userResourceType),
		ent.WithDisplayName(fmt.Sprintf("%s Group Member", resource.DisplayName)),
		ent.WithDescription(fmt.Sprintf("member access to %s group in Jira DC", resource.DisplayName)),
	))
	for _, groupRole := range groupRoles {
		permission := groupRole.Text
		// create entitlements for each project role
		permissionOptions := []ent.EntitlementOption{
			ent.WithGrantableTo(userResourceType, groupResourceType),
			ent.WithDisplayName(fmt.Sprintf("%s Group %s", resource.DisplayName, permission)),
			ent.WithDescription(fmt.Sprintf("%s access to %s group in Jira DC", titleCase(permission), resource.DisplayName)),
		}

		rv = append(rv, ent.NewPermissionEntitlement(
			resource,
			permission,
			permissionOptions...,
		))
	}

	return rv, "", nil, nil
}

func (g *groupBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	var rv []*v2.Grant
	groupId := resource.Id.Resource
	groupMembers, err := g.client.GetGroupMembers(ctx, groupId)
	if err != nil {
		return nil, "", nil, err
	}

	l := ctxzap.Extract(ctx)

	roles, err := g.client.GetGroupLabelRoles(ctx, groupId)
	if err != nil {
		return nil, "", nil, err
	}

	for _, member := range groupMembers {
		user, err := g.client.GetUser(ctx, member.Name)
		if err != nil {
			if errors.Is(err, client.ErrUserNotFound) {
				l.Warn("User not found", zap.String("userId", member.Name))
				continue
			}
			return nil, "", nil, err
		}
		ur, err := userResource(user)
		if err != nil {
			return nil, "", nil, err
		}

		for _, role := range roles {
			permission := role.Text

			membershipGrant := grant.NewGrant(resource, permission, ur.Id)
			rv = append(rv, membershipGrant)
		}

		rv = append(rv, grant.NewGrant(resource, _member, ur.Id))
	}
	return rv, "", nil, nil
}

func (g *groupBuilder) Grant(ctx context.Context, principal *v2.Resource, entitlement *v2.Entitlement) (annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)
	if principal.Id.ResourceType != userResourceType.Id {
		l.Warn(
			"jira(dc)-connector: only users can be granted role memberships",
			zap.String("principal_type", principal.Id.ResourceType),
			zap.String("principal_id", principal.Id.Resource),
		)
		return nil, fmt.Errorf("jira(dc)-connector: only users can be granted role memberships")
	}

	_, _, err := ParseEntitlementID(entitlement.Id)
	if err != nil {
		return nil, err
	}

	groupId := entitlement.Resource.Id.Resource
	userId := principal.Id.Resource
	userName, err := g.client.GetUserName(ctx, userId)
	if err != nil {
		return nil, err
	}

	statusCode, err := g.client.AddUserToGroup(ctx, groupId, userName)
	err = getError(err)
	if err != nil {
		return nil, err
	}

	if statusCode == http.StatusCreated {
		l.Warn("Group Membership has been created.",
			zap.String("userId", userId),
			zap.String("userName", userName),
			zap.String("group", groupId),
		)
	}

	return nil, nil
}

func (g *groupBuilder) Revoke(ctx context.Context, grant *v2.Grant) (annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)
	principal := grant.Principal
	entitlement := grant.Entitlement
	if principal.Id.ResourceType != userResourceType.Id &&
		principal.Id.ResourceType != groupResourceType.Id {
		l.Warn(
			"jira(dc)-connector: only users can have role membership revoked",
			zap.String("principal_id", principal.Id.String()),
			zap.String("principal_type", principal.Id.ResourceType),
		)

		return nil, fmt.Errorf("jira(dc)-connector: only users can have role membership revoked")
	}

	projectResourceId, _, err := ParseEntitlementID(entitlement.Id)
	if err != nil {
		return nil, err
	}

	groupId := projectResourceId.Resource
	userId := principal.Id.Resource
	userName, err := g.client.GetUserName(ctx, userId)
	if err != nil {
		return nil, err
	}

	statusCode, err := g.client.RemoveUserFromGroup(ctx, groupId, userName)
	err = getError(err)
	if err != nil {
		return nil, err
	}

	if statusCode == http.StatusOK {
		l.Warn("Group Membership has been revoked.",
			zap.String("groupId", groupId),
			zap.String("userId", userId),
			zap.String("userName", userName),
		)
	}

	return nil, nil
}
func newGroupBuilder(client *client.Client) *groupBuilder {
	return &groupBuilder{
		client: client,
	}
}
