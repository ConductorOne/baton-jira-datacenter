package connector

import (
	"context"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type groupBuilder struct {
	client *client.Client
}

func (g *groupBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return groupResourceType
}

func groupResource(ctx context.Context, group client.Group, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	// jira groups does not have ids only names
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

// Entitlements always returns an empty slice for users.
func (g *groupBuilder) Entitlements(_ context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

// Grants always returns an empty slice for users since they don't have any entitlements.
func (g *groupBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func newGroupBuilder(client *client.Client) *groupBuilder {
	return &groupBuilder{
		client: client,
	}
}
