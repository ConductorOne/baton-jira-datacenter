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

type permissionBuilder struct {
	client *client.Client
}

// Create a new connector resource for a jira role.
func permissionResource(ctx context.Context, permission client.Permission, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	profile := map[string]interface{}{
		"permission_id":          permission.Key,
		"permission_name":        permission.Name,
		"permission_type":        permission.Type,
		"permission_description": permission.Description,
	}

	groupTraitOptions := []sdkResource.GroupTraitOption{
		sdkResource.WithGroupProfile(profile),
	}

	ret, err := sdkResource.NewGroupResource(
		permission.Name,
		permissionResourceType,
		permission.Key,
		groupTraitOptions,
		sdkResource.WithParentResourceID(parentResourceID),
	)
	if err != nil {
		return nil, err
	}

	return ret, nil
}

func (r *permissionBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return permissionResourceType
}

// List returns all the permissions from the database as resource objects.
// Permissions include a GroupTrait because they are the 'shape' of a standard permission.
func (r *permissionBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	var ret []*v2.Resource
	permissions, err := r.client.ListAllPermissionScheme(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, permission := range permissions.Permissions {
		permission := client.Permission{
			Key:         strconv.Itoa(permission.ID),
			Name:        permission.Permission,
			Type:        permission.Holder.Type,
			Description: permission.Self,
		}
		res, err := permissionResource(ctx, permission, parentResourceID)
		if err != nil {
			return nil, "", nil, err
		}

		ret = append(ret, res)
	}

	return ret, "", nil, nil
}

func (r *permissionBuilder) Entitlements(ctx context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	var rv []*v2.Entitlement
	permissionId := resource.DisplayName
	permissions, err := r.client.ListAllPermissionScheme(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, permission := range permissions.Permissions {
		if permissionId != permission.Permission {
			continue
		}

		// create entitlements for each project role
		permissionOptions := []ent.EntitlementOption{
			ent.WithGrantableTo(userResourceType, groupResourceType),
			ent.WithDisplayName(fmt.Sprintf("%s Permission %s", resource.DisplayName, permission.Permission)),
			ent.WithDescription(fmt.Sprintf("%s access to %s permission in Jira DC", titleCase(permission.Permission), resource.DisplayName)),
		}

		rv = append(rv, ent.NewPermissionEntitlement(
			resource,
			permission.Permission,
			permissionOptions...,
		))
	}

	return rv, "", nil, nil
}

func (r *permissionBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	var rv []*v2.Grant
	permissionName := resource.DisplayName
	permissions, err := r.client.ListAllPermissionScheme(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, permission := range permissions.Permissions {
		if permissionName != permission.Permission || permission.Holder.Type != "projectRole" {
			continue
		}

		roleId, _ := strconv.Atoi(permission.Holder.Parameter)
		rs, err := roleResource(ctx, client.RolesAPIData{
			ID:          roleId,
			Name:        permission.Holder.ProjectRole.Name,
			Description: permission.Holder.ProjectRole.Description,
		}, nil)
		if err != nil {
			return nil, "", nil, err
		}

		membershipGrant := grant.NewGrant(resource, permission.Permission, rs.Id)
		rv = append(rv, membershipGrant)
	}

	return rv, "", nil, nil
}

func newPermissionBuilder(client *client.Client) *permissionBuilder {
	return &permissionBuilder{
		client: client,
	}
}
