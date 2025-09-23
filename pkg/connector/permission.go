package connector

import (
	"context"
	"fmt"
	"strconv"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"
)

type permissionBuilder struct {
	client *client.Client
}

// Create a new connector resource for a jira role.
func permissionResource(ctx context.Context, permission client.Permission, permissionHolderParam string, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	roleId, _ := strconv.Atoi(permissionHolderParam)
	profile := map[string]interface{}{
		"permission_id":               permission.Key,
		"permission_name":             permission.Name,
		"permission_type":             permission.Type,
		"permission_description":      permission.Description,
		"permission_holder_parameter": roleId,
	}

	groupTraitOptions := []sdkResource.GroupTraitOption{
		sdkResource.WithGroupProfile(profile),
	}

	resourceTraitOptions := []sdkResource.ResourceOption{sdkResource.WithParentResourceID(parentResourceID)}

	// We add the skip grants annotation to optimize the behavior of the Grants method
	// Which continues when permission type is not projectRole
	if permission.Type != "projectRole" {
		resourceTraitOptions = append(resourceTraitOptions, sdkResource.WithAnnotation(&v2.SkipGrants{}))
	}

	ret, err := sdkResource.NewGroupResource(
		permission.Name,
		permissionResourceType,
		permission.Key,
		groupTraitOptions,
		resourceTraitOptions...,
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
		permissionHolderParameter := permission.Holder.Parameter
		permission := client.Permission{
			Key:         strconv.Itoa(permission.ID),
			Name:        permission.Permission,
			Type:        permission.Holder.Type,
			Description: permission.Self,
		}
		res, err := permissionResource(ctx, permission, permissionHolderParameter, parentResourceID)
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

	permissionOptions := []ent.EntitlementOption{
		ent.WithGrantableTo(userResourceType, groupResourceType),
		ent.WithDisplayName(fmt.Sprintf("%s Permission %s", resource.DisplayName, permissionId)),
		ent.WithDescription(fmt.Sprintf("%s access to %s permission in Jira DC", titleCase(permissionId), permissionId)),
	}

	rv = append(rv, ent.NewPermissionEntitlement(
		resource,
		permissionId,
		permissionOptions...,
	))

	return rv, "", nil, nil
}

func (r *permissionBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	var rv []*v2.Grant

	permissionName := resource.DisplayName

	groupTrait, err := sdkResource.GetGroupTrait(resource)
	if err != nil {
		return nil, "", nil, fmt.Errorf("list-grants: failed to get group trait from group: %w", err)
	}
	groupProfile := groupTrait.GetProfile()

	roleId, ok := sdkResource.GetProfileInt64Value(groupProfile, "permission_holder_parameter")
	if ok && roleId != 0 {
		rID, err := sdkResource.NewResourceID(roleResourceType, roleId)
		if err != nil {
			return nil, "", nil, fmt.Errorf("list-grants: error creating principal id: %w", err)
		}
		membershipGrant := grant.NewGrant(resource, permissionName, rID)
		rv = append(rv, membershipGrant)
		return rv, "", nil, nil
	}

	// Fall back to original behavior if role id not present on trait
	permissions, err := r.client.ListAllPermissionScheme(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, permission := range permissions.Permissions {
		if permissionName != permission.Permission || permission.Holder.Type != "projectRole" {
			continue
		}

		roleId, _ := strconv.Atoi(permission.Holder.Parameter)
		rID, err := sdkResource.NewResourceID(roleResourceType, roleId)
		if err != nil {
			return nil, "", nil, fmt.Errorf("list-grants: error creating principal id: %w", err)
		}
		membershipGrant := grant.NewGrant(resource, permission.Permission, rID)
		rv = append(rv, membershipGrant)
	}

	return rv, "", nil, nil
}

func newPermissionBuilder(client *client.Client) *permissionBuilder {
	return &permissionBuilder{
		client: client,
	}
}
