package connector

import (
	"context"
	"fmt"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
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
	var rv []*v2.Entitlement
	groupId := resource.Id.Resource
	groupRoles, err := g.client.GetGroupRole(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, group := range groupRoles {
		if group.Name != groupId {
			continue
		}

		for _, groupRole := range group.Labels {
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
	}

	return rv, "", nil, nil
}

func (g *groupBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func newGroupBuilder(client *client.Client) *groupBuilder {
	return &groupBuilder{
		client: client,
	}
}
