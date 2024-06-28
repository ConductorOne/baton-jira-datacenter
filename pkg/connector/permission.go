package connector

import (
	"context"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type permissionBuilder struct {
	client *client.Client
}

// Create a new connector resource for a jenkins role.
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

// List returns all the users from the database as resource objects.
// Users include a UserTrait because they are the 'shape' of a standard user.
func (r *permissionBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	var ret []*v2.Resource
	permissions, err := r.client.ListAllPermissions(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, permission := range permissions {
		res, err := permissionResource(ctx, permission, parentResourceID)
		if err != nil {
			return nil, "", nil, err
		}

		ret = append(ret, res)
	}

	return ret, "", nil, nil
}

// Entitlements always returns an empty slice for users.
func (r *permissionBuilder) Entitlements(_ context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

// Grants always returns an empty slice for users since they don't have any entitlements.
func (r *permissionBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func newPermissionBuilder(client *client.Client) *permissionBuilder {
	return &permissionBuilder{
		client: client,
	}
}
