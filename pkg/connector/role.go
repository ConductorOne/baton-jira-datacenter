package connector

import (
	"context"
	"fmt"
	"strconv"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type roleBuilder struct {
	client *client.Client
}

// Create a new connector resource for a jenkins role.
func roleResource(ctx context.Context, role client.RolesAPIData, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	profile := map[string]interface{}{
		"role_id":          role.ID,
		"role_name":        role.Name,
		"role_Description": role.Description,
	}

	groupTraitOptions := []sdkResource.GroupTraitOption{
		sdkResource.WithGroupProfile(profile),
	}

	ret, err := sdkResource.NewGroupResource(
		role.Name,
		roleResourceType,
		role.ID,
		groupTraitOptions,
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
	projectRoles, err := r.client.ListAllRoles(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	roleId, err := strconv.Atoi(resource.Id.Resource)
	if err != nil {
		return nil, "", nil, err
	}

	for _, member := range projectRoles {
		if roleId != member.ID {
			continue
		}

		for _, actor := range member.Actors {
			switch actor.Type {
			case userRole:
				user, err := r.client.GetUser(ctx, actor.Name)
				if err != nil {
					return nil, "", nil, err
				}

				ur, err := userResource(user)
				if err != nil {
					return nil, "", nil, err
				}

				membershipGrant := grant.NewGrant(resource, member.Name, ur.Id)
				rv = append(rv, membershipGrant)
			case groupRole:
				group := client.Group{
					Name: actor.Name,
				}
				gr, err := groupResource(ctx, group, nil)
				if err != nil {
					return nil, "", nil, err
				}

				membershipGrant := grant.NewGrant(resource, member.Name, gr.Id)
				rv = append(rv, membershipGrant)
			default:
				return nil, "", nil, fmt.Errorf("jira(dc)-connector: invalid member resource type: %s", actor.Type)
			}
		}
	}

	return rv, "", nil, nil
}

func newRoleBuilder(client *client.Client) *roleBuilder {
	return &roleBuilder{
		client: client,
	}
}
