package connector

import (
	"context"
	"fmt"
	"strconv"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
)

type projectBuilder struct {
	client *client.Client
}

const (
	userRole  = "atlassian-user-role-actor"
	groupRole = "atlassian-group-role-actor"
)

func projectResource(ctx context.Context, project jira.Project, parentResourceID *v2.ResourceId) (*v2.Resource, error) {
	profile := map[string]interface{}{
		"project_id":   project.ID,
		"project_name": project.Name,
		"project_key":  project.Key,
	}

	groupTraitOptions := []sdkResource.GroupTraitOption{
		sdkResource.WithGroupProfile(profile),
	}

	ret, err := sdkResource.NewGroupResource(
		project.Name,
		projectResourceType,
		project.ID,
		groupTraitOptions,
		sdkResource.WithParentResourceID(parentResourceID),
	)
	if err != nil {
		return nil, err
	}

	return ret, nil
}

func (p *projectBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return projectResourceType
}

// List returns all the projects from the database as resource objects.
func (p *projectBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	var ret []*v2.Resource
	projects, err := p.client.ListProjects(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, project := range projects {
		res, err := projectResource(ctx, *project, parentResourceID)
		if err != nil {
			return nil, "", nil, err
		}

		ret = append(ret, res)
	}

	return ret, "", nil, nil
}

func (p *projectBuilder) Entitlements(ctx context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	var rv []*v2.Entitlement
	projectId := resource.Id.Resource
	projectRoles, err := p.client.GetProjectRoles(ctx, projectId)
	if err != nil {
		return nil, "", nil, err
	}

	for _, uri := range projectRoles {
		role, err := p.client.GetProjectRoleDetails(ctx, uri)
		if err != nil {
			return nil, "", nil, err
		}

		permission := role.Name
		// create entitlements for each project role
		permissionOptions := []ent.EntitlementOption{
			ent.WithGrantableTo(userResourceType, groupResourceType),
			ent.WithDisplayName(fmt.Sprintf("%s Project %s", resource.DisplayName, permission)),
			ent.WithDescription(fmt.Sprintf("%s access to %s project in Jira DC", titleCase(permission), resource.DisplayName)),
		}

		rv = append(rv, ent.NewPermissionEntitlement(
			resource,
			permission,
			permissionOptions...,
		))
	}

	return rv, "", nil, nil
}

func (p *projectBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	var rv []*v2.Grant
	projectId := resource.Id.Resource
	projectRoles, err := p.client.GetProjectRoles(ctx, projectId)
	if err != nil {
		return nil, "", nil, err
	}

	for _, uri := range projectRoles {
		role, err := p.client.GetProjectRoleDetails(ctx, uri)
		if err != nil {
			return nil, "", nil, err
		}
		// Getting actors from role
		roleDetails, err := p.client.GetRole(ctx, strconv.Itoa(role.ID))
		if err != nil {
			return nil, "", nil, err
		}

		for _, actor := range roleDetails.Actors {
			switch actor.Type {
			case userRole:
				user, err := p.client.GetUser(ctx, actor.Name)
				if err != nil {
					return nil, "", nil, err
				}

				ur, err := userResource(user)
				if err != nil {
					return nil, "", nil, err
				}

				membershipGrant := grant.NewGrant(resource, role.Name, ur.Id)
				rv = append(rv, membershipGrant)
			case groupRole:
				group := client.Group{
					Name: actor.Name,
				}
				gr, err := groupResource(ctx, group, nil)
				if err != nil {
					return nil, "", nil, err
				}

				membershipGrant := grant.NewGrant(resource, role.Name, gr.Id)
				rv = append(rv, membershipGrant)
			}
		}
	}

	return rv, "", nil, nil
}

func newProjectBuilder(client *client.Client) *projectBuilder {
	return &projectBuilder{
		client: client,
	}
}
