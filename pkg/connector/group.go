package connector

import (
	"context"
	"errors"
	"fmt"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

const _member = "member"

type groupBuilder struct {
	client *client.Client
}

func (g *groupBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return groupResourceType
}

func extractGroupLabelRolesFromGroupProfile(profile *structpb.Struct) []client.Labels {
	if profile == nil {
		return nil
	}
	field, ok := profile.Fields["group_label_roles"]
	if !ok || field.GetListValue() == nil {
		return nil
	}
	var actors []client.Labels
	for _, val := range field.GetListValue().Values {
		m := val.GetStructValue()
		if m == nil {
			continue
		}
		gl := client.Labels{
			Text:  m.Fields["text"].GetStringValue(),
			Type:  m.Fields["type"].GetStringValue(),
			Title: m.Fields["title"].GetStringValue(),
		}
		actors = append(actors, gl)
	}
	return actors
}

func groupResource(ctx context.Context, group client.Group, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	// jira groups does not include ids only names
	profile := map[string]interface{}{
		"group_name": group.Name,
		"group_id":   group.Name,
	}

	var groupLabelRoles []any
	for _, gl := range group.Labels {
		groupLabelRoles = append(groupLabelRoles, map[string]any{
			"text":  gl.Text,
			"title": gl.Title,
			"type":  gl.Type,
		})
	}
	profile["group_label_roles"] = groupLabelRoles

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

	groupTrait, err := sdkResource.GetGroupTrait(resource)
	if err != nil {
		return nil, "", nil, fmt.Errorf("list-entitlements: Failed to get group trait from group: %w", err)
	}
	groupProfile := groupTrait.GetProfile()

	groupRoles := extractGroupLabelRolesFromGroupProfile(groupProfile)
	if groupRoles == nil {
		groupRoles, err = g.client.GetGroupLabelRoles(ctx, groupId)
		if err != nil {
			return nil, "", nil, err
		}
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

	groupTrait, err := sdkResource.GetGroupTrait(resource)
	if err != nil {
		return nil, "", nil, fmt.Errorf("list-grants: failed to get group trait from group: %w", err)
	}
	groupProfile := groupTrait.GetProfile()

	roles := extractGroupLabelRolesFromGroupProfile(groupProfile)
	if roles == nil {
		roles, err = g.client.GetGroupLabelRoles(ctx, groupId)
		if err != nil {
			return nil, "", nil, err
		}
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
	userInfo, err := g.client.GetUserByKey(ctx, userId)
	if err != nil {
		return nil, fmt.Errorf("jira(dc)-connector: error retrieving user %s: %w", userId, err)
	}

	// Check user's group membership
	if userInfo.Groups != nil && userInfo.Groups.Size > 0 {
		for _, group := range userInfo.Groups.Items {
			if group.Name == groupId {
				l.Debug("Group Membership already exists.",
					zap.String("userId", userId),
					zap.String("userName", userInfo.Name),
					zap.String("group", groupId),
				)
				return annotations.New(&v2.GrantAlreadyExists{}), nil
			}
		}
	}

	succeded, err := g.client.AddUserToGroup(ctx, groupId, userInfo.Name)
	err = getError(err)
	if err != nil {
		return nil, err
	}

	if !succeded {
		return nil, fmt.Errorf("jira(dc)-connector: failed when granting user to group %s", groupId)
	}

	l.Warn("Group Membership has been created.",
		zap.String("userId", userId),
		zap.String("userName", userInfo.Name),
		zap.String("group", groupId),
	)
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
	userInfo, err := g.client.GetUserByKey(ctx, userId)
	if err != nil {
		return nil, fmt.Errorf("jira(dc)-connector: error retrieving user %s: %w", userId, err)
	}

	// Check user's group membership
	membershipExists := false
	if userInfo.Groups != nil && userInfo.Groups.Size > 0 {
		for _, group := range userInfo.Groups.Items {
			if group.Name == groupId {
				membershipExists = true
				break
			}
		}
	}
	if !membershipExists {
		l.Debug("Group Membership already revoked.",
			zap.String("userId", userId),
			zap.String("userName", userInfo.Name),
			zap.String("group", groupId),
		)
		return annotations.New(&v2.GrantAlreadyRevoked{}), nil
	}

	success, err := g.client.RemoveUserFromGroup(ctx, groupId, userInfo.Name)
	err = getError(err)
	if err != nil {
		return nil, err
	}

	if !success {
		l.Error("Failed to revoke Group Membership.",
			zap.String("groupId", groupId),
			zap.String("userId", userId),
			zap.String("userName", userInfo.Name),
		)
		return nil, fmt.Errorf("jira(dc)-connector: failed when revoking user from group %s", groupId)
	}

	l.Warn("Group Membership has been revoked.",
		zap.String("groupId", groupId),
		zap.String("userId", userId),
		zap.String("userName", userInfo.Name),
	)
	return nil, nil
}
func newGroupBuilder(client *client.Client) *groupBuilder {
	return &groupBuilder{
		client: client,
	}
}
