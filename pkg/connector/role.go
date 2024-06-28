package connector

import (
	"context"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
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

func (r *roleBuilder) Entitlements(_ context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func (r *roleBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func newRoleBuilder(client *client.Client) *roleBuilder {
	return &roleBuilder{
		client: client,
	}
}
