package connector

import (
	"context"
	"fmt"
	"net/http"
	"strconv"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
	"golang.org/x/exp/slices"

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

		for _, actor := range role.Actors {
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

		rs, err := roleResource(ctx, role, nil)
		if err != nil {
			return nil, "", nil, err
		}

		membershipGrant := grant.NewGrant(resource, role.Name, rs.Id)
		rv = append(rv, membershipGrant)
	}

	return rv, "", nil, nil
}

func (p *projectBuilder) Grant(ctx context.Context, principal *v2.Resource, entitlement *v2.Entitlement) (annotations.Annotations, error) {
	var roleId string
	l := ctxzap.Extract(ctx)
	if principal.Id.ResourceType != userResourceType.Id && principal.Id.ResourceType != groupResourceType.Id {
		l.Warn(
			"jira(DC)-connector: only users or groups can be granted role memberships",
			zap.String("principal_type", principal.Id.ResourceType),
			zap.String("principal_id", principal.Id.Resource),
		)
		return nil, fmt.Errorf("jira(DC)-connector: only users or groups can be granted role memberships")
	}

	_, entitlementID, err := ParseEntitlementID(entitlement.Id)
	if err != nil {
		return nil, err
	}

	roles, err := p.client.ListAllRoles(ctx)
	if err != nil {
		return nil, err
	}

	roleName := entitlementID[2]
	rolePos := slices.IndexFunc(roles, func(c client.RolesAPIData) bool {
		return c.Name == roleName
	})

	if rolePos == NF {
		return nil, fmt.Errorf("role %s cannot be found", roleName)
	}

	projectId := entitlement.Resource.Id.Resource
	roleId = strconv.Itoa(roles[rolePos].ID)
	switch principal.Id.ResourceType {
	case userResourceType.Id:
		userId := principal.Id.Resource
		body := client.BodyActors{
			User: []string{
				userId,
			},
		}
		actors, err := p.client.AddActorsProjectRole(ctx, projectId, roleId, body)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		actorPos := slices.IndexFunc(actors.Actors, func(c client.Actors) bool {
			return c.Name == userId
		})

		if actorPos != NF {
			l.Warn("Role has been created.",
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
		actors, err := p.client.AddActorsProjectRole(ctx, projectId, roleId, body)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		actorPos := slices.IndexFunc(actors.Actors, func(c client.Actors) bool {
			return c.Name == groupName
		})

		if actorPos != NF {
			l.Warn("Role has been created.",
				zap.String("Name", actors.Actors[actorPos].Name),
				zap.String("DisplayName", actors.Actors[actorPos].DisplayName),
				zap.String("Type", actors.Actors[actorPos].Type),
				zap.Int("ID", actors.Actors[actorPos].ID),
			)
		}
	default:
		return nil, fmt.Errorf("jira(DC)-connector: invalid grant resource type: %s", principal.Id.ResourceType)
	}

	return nil, nil
}

func (p *projectBuilder) Revoke(ctx context.Context, grant *v2.Grant) (annotations.Annotations, error) {
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

	projectResourceId, permissions, err := ParseEntitlementID(entitlement.Id)
	if err != nil {
		return nil, err
	}

	projectId := projectResourceId.Resource
	roles, err := p.client.ListAllRoles(ctx)
	if err != nil {
		return nil, err
	}

	roleName := permissions[2]
	rolePos := slices.IndexFunc(roles, func(c client.RolesAPIData) bool {
		return c.Name == roleName
	})

	if rolePos == NF {
		return nil, fmt.Errorf("role %s cannot be found", roleName)
	}

	roleId := strconv.Itoa(roles[rolePos].ID)
	switch principal.Id.ResourceType {
	case userResourceType.Id:
		userName := principal.Id.Resource
		statusCode, err := p.client.RemoveActorsProjectRole(ctx, projectId, roleId, "user="+userName)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		if statusCode == http.StatusNoContent {
			l.Warn("Project Membership has been revoked.",
				zap.String("userName", userName),
				zap.String("ProjectId", projectId),
				zap.String("RoleId", roleId),
			)
		}
	case groupResourceType.Id:
		groupName := principal.Id.Resource
		statusCode, err := p.client.RemoveActorsProjectRole(ctx, projectId, roleId, "group="+groupName)
		err = getError(err)
		if err != nil {
			return nil, err
		}

		if statusCode == http.StatusNoContent {
			l.Warn("Project Membership has been revoked.",
				zap.String("GroupName", groupName),
				zap.String("ProjectId", projectId),
				zap.String("RoleId", roleId),
			)
		}
	default:
		return nil, fmt.Errorf("jira(dc) connector: invalid grant resource type: %s", principal.Id.ResourceType)
	}

	return nil, nil
}

func newProjectBuilder(client *client.Client) *projectBuilder {
	return &projectBuilder{
		client: client,
	}
}
