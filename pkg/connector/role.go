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
	"golang.org/x/exp/slices"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type roleBuilder struct {
	client *client.Client
}

const NF = -1

func extractActorsFromRoleProfile(profile *structpb.Struct) []client.Actors {
	if profile == nil {
		return nil
	}
	field, ok := profile.Fields["actors"]
	if !ok || field.GetListValue() == nil {
		return nil
	}
	var actors []client.Actors
	for _, val := range field.GetListValue().Values {
		m := val.GetStructValue()
		if m == nil {
			continue
		}

		a := client.Actors{
			ID:          int(m.Fields["id"].GetNumberValue()),
			DisplayName: m.Fields["displayName"].GetStringValue(),
			Type:        m.Fields["type"].GetStringValue(),
			Name:        m.Fields["name"].GetStringValue(),
		}
		actors = append(actors, a)
	}
	return actors
}

// Create a new connector resource for a jira role.
func roleResource(ctx context.Context, role client.RolesAPIData, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	profile := map[string]any{
		"role_id":          role.ID,
		"role_name":        role.Name,
		"role_Description": role.Description,
	}

	var actorsList []any
	for _, a := range role.Actors {
		actorsList = append(actorsList, map[string]any{
			"id":          a.ID,
			"displayName": a.DisplayName,
			"type":        a.Type,
			"name":        a.Name,
		})
	}
	profile["actors"] = actorsList

	roleTraitOptions := []sdkResource.GroupTraitOption{
		sdkResource.WithGroupProfile(profile),
	}

	ret, err := sdkResource.NewGroupResource(
		role.Name,
		roleResourceType,
		role.ID,
		roleTraitOptions,
		sdkResource.WithParentResourceID(parentResourceID),
	)
	if err != nil {
		return nil, err
	}

	return ret, nil
}

func (r *roleBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return roleResourceType
}

// List returns all the roles from the database as resource objects.
// Roles include a GroupTrait because they are the 'shape' of a standard role.
func (r *roleBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	var ret []*v2.Resource
	roles, err := r.client.ListAllRoles(ctx)
	l := ctxzap.Extract(ctx)

	if err != nil {
		return nil, "", nil, err
	}

	for _, role := range roles {
		res, err := roleResource(ctx, role, parentResourceID)
		if err != nil {
			return nil, "", nil, err
		}

		ret = append(ret, res)
	}

	return ret, "", nil, nil
}

func (r *roleBuilder) Entitlements(ctx context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	var rv []*v2.Entitlement
	roles, err := r.client.ListAllRoles(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, role := range roles {
		permission := role.Name
		// create entitlements for each project role
		permissionOptions := []ent.EntitlementOption{
			ent.WithGrantableTo(userResourceType, groupResourceType),
			ent.WithDisplayName(fmt.Sprintf("%s Role %s", resource.DisplayName, permission)),
			ent.WithDescription(fmt.Sprintf("%s access to %s role in Jira DC", titleCase(permission), resource.DisplayName)),
		}

		rv = append(rv, ent.NewPermissionEntitlement(
			resource,
			permission,
			permissionOptions...,
		))
	}

	return rv, "", nil, nil
}

func (r *roleBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	var rv []*v2.Grant

	l := ctxzap.Extract(ctx)

	roleTrait, err := sdkResource.GetGroupTrait(resource)
	if err != nil {
		return nil, "", nil, fmt.Errorf("Failed to get group trait from role: %w", err)
	}
	roleProfile := roleTrait.GetProfile()

	roleActors := extractActorsFromRoleProfile(roleProfile)

	if roleActors == nil {
		role, err := r.client.GetRole(ctx, resource.Id.Resource)
		if err != nil {
			return nil, "", nil, err
		}
		roleActors = role.Actors
	}

	for _, actor := range roleActors {
		switch actor.Type {
		case userRole:
			user, err := r.client.GetUser(ctx, actor.Name)
			if err != nil {
				if errors.Is(err, client.ErrUserNotFound) {
					l.Warn("User not found", zap.String("userId", actor.Name))
					continue
				}
				return nil, "", nil, err
			}

			ur, err := userResource(user)
			if err != nil {
				return nil, "", nil, err
			}

			membershipGrant := grant.NewGrant(resource, resource.DisplayName, ur.Id)
			rv = append(rv, membershipGrant)
		case groupRole:
			group := client.Group{
				Name: actor.Name,
			}
			gr, err := groupResource(ctx, group, nil)
			if err != nil {
				return nil, "", nil, err
			}

			membershipGrant := grant.NewGrant(resource, resource.DisplayName, gr.Id)
			rv = append(rv, membershipGrant)
		default:
			return nil, "", nil, fmt.Errorf("jira(dc)-connector: invalid member resource type: %s", actor.Type)
		}
	}

	return rv, "", nil, nil
}

func (r *roleBuilder) Grant(ctx context.Context, principal *v2.Resource, entitlement *v2.Entitlement) (annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)
	if principal.Id.ResourceType != userResourceType.Id && principal.Id.ResourceType != groupResourceType.Id {
		l.Warn(
			"jira(DC)-connector: only users or groups can be granted role memberships",
			zap.String("principal_type", principal.Id.ResourceType),
			zap.String("principal_id", principal.Id.Resource),
		)
		return nil, fmt.Errorf("jira(dc)-connector: only users or groups can be granted role memberships")
	}

	_, _, err := ParseEntitlementID(entitlement.Id)
	if err != nil {
		return nil, err
	}

	roleId := entitlement.Resource.Id.Resource
	switch principal.Id.ResourceType {
	case userResourceType.Id:
		userId := principal.Id.Resource
		userName, err := r.client.GetUserName(ctx, userId)
		if err != nil {
			return nil, err
		}

		body := client.BodyActors{
			User: []string{
				userId,
			},
		}
		actors, err := r.client.AddProjectRoleActorsToRole(ctx, roleId, body)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		actorPos := slices.IndexFunc(actors.Actors, func(c client.Actors) bool {
			return c.Name == userName
		})
		if actorPos != NF {
			l.Warn("Role Membership has been created.",
				zap.String("Name", actors.Actors[actorPos].Name),
				zap.String("DisplayName", actors.Actors[actorPos].DisplayName),
				zap.String("Type", actors.Actors[actorPos].Type),
				zap.Int("ID", actors.Actors[actorPos].ID),
			)
		}
	case groupResourceType.Id:
		groupName := principal.Id.Resource
		body := client.BodyActors{
			Group: []string{
				groupName,
			},
		}
		actors, err := r.client.AddProjectRoleActorsToRole(ctx, roleId, body)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		actorPos := slices.IndexFunc(actors.Actors, func(c client.Actors) bool {
			return c.Name == groupName
		})
		if actorPos != NF {
			l.Warn("Role Membership has been created.",
				zap.String("Name", actors.Actors[actorPos].Name),
				zap.String("DisplayName", actors.Actors[actorPos].DisplayName),
				zap.String("Type", actors.Actors[actorPos].Type),
				zap.Int("ID", actors.Actors[actorPos].ID),
			)
		}
	default:
		return nil, fmt.Errorf("jira(dc)-connector: invalid grant resource type: %s", principal.Id.ResourceType)
	}

	return nil, nil
}

func (r *roleBuilder) Revoke(ctx context.Context, grant *v2.Grant) (annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)
	principal := grant.Principal
	entitlement := grant.Entitlement
	if principal.Id.ResourceType != userResourceType.Id &&
		principal.Id.ResourceType != groupResourceType.Id {
		l.Warn(
			"jira(dc)-connector: only users or groups can have role membership revoked",
			zap.String("principal_id", principal.Id.String()),
			zap.String("principal_type", principal.Id.ResourceType),
		)

		return nil, fmt.Errorf("jira(dc)-connector: only users or groups can have role membership revoked")
	}

	projectResourceId, _, err := ParseEntitlementID(entitlement.Id)
	if err != nil {
		return nil, err
	}

	roleId := projectResourceId.Resource
	switch principal.Id.ResourceType {
	case userResourceType.Id:
		userId := principal.Id.Resource
		userName, err := r.client.GetUserName(ctx, userId)
		if err != nil {
			return nil, err
		}

		statusCode, err := r.client.DeleteProjectRoleActorsFromRole(ctx, roleId, "user", userId)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		if statusCode == http.StatusOK {
			l.Warn("Role Membership has been revoked.",
				zap.String("userId", userId),
				zap.String("userName", userName),
				zap.String("RoleId", roleId),
			)
		}
	case groupResourceType.Id:
		groupName := principal.Id.Resource
		statusCode, err := r.client.DeleteProjectRoleActorsFromRole(ctx, roleId, "group", groupName)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		if statusCode == http.StatusOK {
			l.Warn("Role Membership has been revoked.",
				zap.String("GroupName", groupName),
				zap.String("RoleId", roleId),
			)
		}
	default:
		return nil, fmt.Errorf("jira(dc) connector: invalid grant resource type: %s", principal.Id.ResourceType)
	}

	return nil, nil
}

func newRoleBuilder(client *client.Client) *roleBuilder {
	return &roleBuilder{
		client: client,
	}
}
