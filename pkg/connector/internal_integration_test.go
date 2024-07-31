package connector

import (
	"context"
	"fmt"
	"os"
	"strconv"
	"testing"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	ent "github.com/conductorone/baton-sdk/pkg/types/entitlement"
	"github.com/conductorone/baton-sdk/pkg/types/grant"
	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/stretchr/testify/assert"
)

var (
	ctx                    = context.Background()
	instanceUrl, _         = os.LookupEnv("BATON_INSTANCE_URL")
	accessToken, _         = os.LookupEnv("BATON_ACCESS_TOKEN")
	parentResourceID       = &v2.ResourceId{}
	pToken                 = &pagination.Token{}
	grantPrincipalTypeUser = "user"
)

func TestGroupBuilderList(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	g := &groupBuilder{
		client: cli,
	}
	res, _, _, err := g.List(ctx, parentResourceID, pToken)
	assert.Nil(t, err)
	assert.NotNil(t, res)
}

func TestProjectBuilderList(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	p := &projectBuilder{
		client: cli,
	}
	res, _, _, err := p.List(ctx, parentResourceID, pToken)
	assert.Nil(t, err)
	assert.NotNil(t, res)
}

func TestUserBuilderList(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	u := &userBuilder{
		client: cli,
	}
	res, _, _, err := u.List(ctx, parentResourceID, pToken)
	assert.Nil(t, err)
	assert.NotNil(t, res)
}

func TestRoleBuilderList(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	r := &roleBuilder{
		client: cli,
	}
	res, _, _, err := r.List(ctx, parentResourceID, pToken)
	assert.Nil(t, err)
	assert.NotNil(t, res)
}

func TestProjectBuilderGrants(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	pToken := &pagination.Token{}
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	p := &projectBuilder{
		client: cli,
	}
	project := jira.Project{
		ID:          "10100",
		Key:         "devpro",
		Name:        "devpro",
		Description: "Developers",
	}
	resource, err := projectResource(ctx, project, nil)
	assert.Nil(t, err)

	gr, _, _, err := p.Grants(ctx, resource, pToken)
	assert.Nil(t, err)
	assert.NotNil(t, gr)
}

func TestGroupBuilderEntitlements(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	tests := []struct {
		nTest  string
		Name   string
		HTML   string
		Labels []client.Labels
	}{
		{
			nTest: "Checking global-group",
			Name:  "global-group",
			HTML:  "global-group",
			Labels: []client.Labels{
				{
					Text:  "Admin",
					Title: "Users added to this group will be given administrative access",
					Type:  "ADMIN",
				},
			},
		},
		{
			nTest: "Checking jira-administrators",
			Name:  "jira-administrators",
			HTML:  "jira-administrators",
			Labels: []client.Labels{
				{
					Text:  "Admin",
					Title: "Users added to this group will be given administrative access",
					Type:  "ADMIN",
				},
				{
					Text:  "Jira Software",
					Title: "Users added to this group will be given access to \u003Cstrong\u003EJira Software\u003C/strong\u003E",
					Type:  "SINGLE",
				},
			},
		},
		{
			nTest: "Checking jira-software-users",
			Name:  "jira-software-users",
			HTML:  "jira-software-users",
			Labels: []client.Labels{
				{
					Text:  "Jira Software",
					Title: "Users added to this group will be given access to \u003Cstrong\u003EJira Software\u003C/strong\u003E",
					Type:  "SINGLE",
				},
			},
		},
		{
			nTest:  "empty labels",
			Name:   "local-group",
			HTML:   "local-group",
			Labels: []client.Labels{},
		},
	}

	pToken := &pagination.Token{}
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	g := &groupBuilder{
		client: cli,
	}
	for _, test := range tests {
		t.Run(test.Name, func(t *testing.T) {
			group := client.Group{
				Name:   test.Name,
				HTML:   test.HTML,
				Labels: test.Labels,
			}
			resource, err := groupResource(ctx, group, nil)
			assert.Nil(t, err)

			rv, _, _, err := g.Entitlements(ctx, resource, pToken)
			assert.Nil(t, err)

			if test.nTest == "empty labels" {
				assert.Nil(t, rv)
				t.Skip()
			}

			assert.NotNil(t, rv)
		})
	}
}

func TestProjectBuilderGrantGroup(t *testing.T) {
	var roleEntitlement string
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --grant-entitlement project:10000:Administrators
	// --grant-principal-type group
	// --grant-principal jira-administrators
	grantEntitlement := "project:10000:Administrators"
	grantPrincipalType := "group"
	grantPrincipal := "jira-administrators"
	_, data, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, data)

	projectId := data[1]
	roleEntitlement = data[2]
	groupName := grantPrincipal
	group := getGroupForTesting(groupName)
	principal, err := groupResource(ctx, *group, nil)
	assert.Nil(t, err)

	project := getProjectForTesting(projectId)
	resource, err := projectResource(ctx, *project, nil)
	assert.Nil(t, err)

	entitlement := getEntitlementForTesting(resource, grantPrincipalType, roleEntitlement)
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	projectBuilder := getProjectBuilderForTesting(cli)
	_, err = projectBuilder.Grant(ctx, principal, entitlement)
	assert.Nil(t, err)
}

func TestProjectBuilderGrantUsers(t *testing.T) {
	var roleEntitlement string
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --grant-entitlement project:10000:Administrators
	// --grant-principal-type user
	// --grant-principal JIRAUSER10103
	grantEntitlement := "project:10000:Administrators"
	grantPrincipalType := grantPrincipalTypeUser
	grantPrincipal := "JIRAUSER10103"
	_, data, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, data)

	projectId := data[1]
	roleEntitlement = data[2]
	userId := grantPrincipal
	user := getUserForTesting(userId)
	principal, err := userResource(*user)
	assert.Nil(t, err)

	project := getProjectForTesting(projectId)
	resource, err := projectResource(ctx, *project, nil)
	assert.Nil(t, err)

	entitlement := getEntitlementForTesting(resource, grantPrincipalType, roleEntitlement)
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	projectBuilder := getProjectBuilderForTesting(cli)
	_, err = projectBuilder.Grant(ctx, principal, entitlement)
	assert.Nil(t, err)
}

func TestProjectBuilderRevokeGroup(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --revoke-grant project:10000:Administrators:group:jira-administrators
	revokeGrant := "project:10000:Administrators:group:jira-administrators"
	_, grantData, err := ParseGrantID(revokeGrant)
	assert.Nil(t, err)
	assert.NotNil(t, grantData)

	grantEntitlement := fmt.Sprintf("%s:%s:%s", grantData[0], grantData[1], grantData[2])
	grantPrincipal := grantData[4]
	_, entitlemenData, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, entitlemenData)

	projectId := entitlemenData[1]
	roleId := entitlemenData[2]
	groupName := grantPrincipal
	group := getGroupForTesting(groupName)
	principal, err := groupResource(ctx, *group, nil)
	assert.Nil(t, err)

	project := getProjectForTesting(projectId)
	resource, err := projectResource(ctx, *project, nil)
	assert.Nil(t, err)

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	projectBuilder := getProjectBuilderForTesting(cli)
	gr := grant.NewGrant(resource, roleId, principal.Id)
	annos := annotations.Annotations(gr.Annotations)
	v1Identifier := &v2.V1Identifier{
		Id: V1GrantID(V1MembershipEntitlementID(projectId), groupName),
	}
	annos.Update(v1Identifier)
	gr.Annotations = annos
	_, err = projectBuilder.Revoke(ctx, gr)
	assert.Nil(t, err)
}

func TestProjectBuilderRevokeUser(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --revoke-grant project:10000:Administrators:user:JIRAUSER10103
	revokeGrant := "project:10000:Administrators:user:JIRAUSER10103"
	_, grantData, err := ParseGrantID(revokeGrant)
	assert.Nil(t, err)
	assert.NotNil(t, grantData)

	grantEntitlement := fmt.Sprintf("%s:%s:%s", grantData[0], grantData[1], grantData[2])
	grantPrincipal := grantData[4]
	_, entitlemenData, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, entitlemenData)

	projectId := entitlemenData[1]
	roleId := entitlemenData[2]
	userId := grantPrincipal
	user := getUserForTesting(userId)
	principal, err := userResource(*user)
	assert.Nil(t, err)

	project := getProjectForTesting(projectId)
	resource, err := projectResource(ctx, *project, nil)
	assert.Nil(t, err)

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	projectBuilder := getProjectBuilderForTesting(cli)
	gr := grant.NewGrant(resource, roleId, principal.Id)
	annos := annotations.Annotations(gr.Annotations)
	v1Identifier := &v2.V1Identifier{
		Id: V1GrantID(V1MembershipEntitlementID(projectId), userId),
	}
	annos.Update(v1Identifier)
	gr.Annotations = annos
	_, err = projectBuilder.Revoke(ctx, gr)
	assert.Nil(t, err)
}

func TestGroupBuilderGrantUser(t *testing.T) {
	var roleEntitlement string
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --grant-entitlement group:jira-administrators:Admin
	// --grant-principal-type user
	// --grant-principal JIRAUSER10102
	grantEntitlement := "group:jira-administrators:Admin"
	grantPrincipalType := "user"
	grantPrincipal := "JIRAUSER10102"
	_, data, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, data)

	groupId := data[1]
	roleEntitlement = data[2]
	userId := grantPrincipal
	user := getUserForTesting(userId)
	principal, err := userResource(*user)
	assert.Nil(t, err)

	group := getGroupForTesting(groupId)
	resource, err := groupResource(ctx, *group, nil)
	assert.Nil(t, err)

	entitlement := getEntitlementForTesting(resource, grantPrincipalType, roleEntitlement)
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	groupBuilder := getGroupBuilderForTesting(cli)
	_, err = groupBuilder.Grant(ctx, principal, entitlement)
	assert.Nil(t, err)
}

func TestGroupBuilderRevokeUser(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --revoke-grant group:jira-administrators:Admin:user:JIRAUSER10102
	revokeGrant := "group:jira-administrators:Admin:user:JIRAUSER10102"
	_, grantData, err := ParseGrantID(revokeGrant)
	assert.Nil(t, err)
	assert.NotNil(t, grantData)

	grantEntitlement := fmt.Sprintf("%s:%s:%s", grantData[0], grantData[1], grantData[2])
	grantPrincipal := grantData[4]
	_, entitlemenData, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, entitlemenData)

	groupId := entitlemenData[1]
	roleId := entitlemenData[2]
	userId := grantPrincipal
	user := getUserForTesting(userId)
	principal, err := userResource(*user)
	assert.Nil(t, err)

	group := getGroupForTesting(groupId)
	resource, err := groupResource(ctx, *group, nil)
	assert.Nil(t, err)

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	groupBuilder := getGroupBuilderForTesting(cli)
	gr := grant.NewGrant(resource, roleId, principal.Id)
	annos := annotations.Annotations(gr.Annotations)
	v1Identifier := &v2.V1Identifier{
		Id: V1GrantID(V1MembershipEntitlementID(groupId), userId),
	}
	annos.Update(v1Identifier)
	gr.Annotations = annos
	_, err = groupBuilder.Revoke(ctx, gr)
	assert.Nil(t, err)
}

func getUserForTesting(userId string) *jira.User {
	return &jira.User{
		Key: userId,
	}
}

func getProjectForTesting(projectId string) *jira.Project {
	return &jira.Project{
		ID: projectId,
	}
}

func getRoleForTesting(role string) *client.RolesAPIData {
	roleId, err := strconv.Atoi(role)
	if err != nil {
		return nil
	}

	return &client.RolesAPIData{
		ID: roleId,
	}
}

func getProjectBuilderForTesting(cli *client.Client) *projectBuilder {
	return &projectBuilder{
		client: cli,
	}
}

func getRoleBuilderForTesting(cli *client.Client) *roleBuilder {
	return &roleBuilder{
		client: cli,
	}
}

func getGroupBuilderForTesting(cli *client.Client) *groupBuilder {
	return &groupBuilder{
		client: cli,
	}
}

func getGroupForTesting(fullName string) *client.Group {
	return &client.Group{
		Name: fullName,
	}
}

func getEntitlementForTesting(resource *v2.Resource, resourceDisplayName, roleEntitlement string) *v2.Entitlement {
	options := []ent.EntitlementOption{
		ent.WithGrantableTo(roleResourceType),
		ent.WithDisplayName(fmt.Sprintf("%s resource %s", resourceDisplayName, roleEntitlement)),
		ent.WithDescription(fmt.Sprintf("%s of %s Jira project", roleEntitlement, resourceDisplayName)),
	}

	return ent.NewAssignmentEntitlement(resource, roleEntitlement, options...)
}

func TestRoleBuilderGrantGroup(t *testing.T) {
	var roleEntitlement string
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --grant-entitlement role:10002:Administrators
	// --grant-principal-type group
	// --grant-principal jira-software-users
	grantEntitlement := "role:10002:Administrators"
	grantPrincipalType := "group"
	grantPrincipal := "jira-software-users"
	_, data, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, data)

	roleId := data[1]
	roleEntitlement = data[2]
	groupName := grantPrincipal
	group := getGroupForTesting(groupName)
	principal, err := groupResource(ctx, *group, nil)
	assert.Nil(t, err)

	role := getRoleForTesting(roleId)
	resource, err := roleResource(ctx, *role, nil)
	assert.Nil(t, err)

	entitlement := getEntitlementForTesting(resource, grantPrincipalType, roleEntitlement)
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	roleBuilder := getRoleBuilderForTesting(cli)
	_, err = roleBuilder.Grant(ctx, principal, entitlement)
	assert.Nil(t, err)
}

func TestRoleBuilderGrantUsers(t *testing.T) {
	var roleEntitlement string
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --grant-entitlement role:10002:Administrators
	// --grant-principal-type user
	// --grant-principal JIRAUSER10102
	grantEntitlement := "role:10002:Administrators"
	grantPrincipalType := "user"
	grantPrincipal := "JIRAUSER10102"
	_, data, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, data)

	projectId := data[1]
	roleEntitlement = data[2]
	userId := grantPrincipal
	user := getUserForTesting(userId)
	principal, err := userResource(*user)
	assert.Nil(t, err)

	role := getRoleForTesting(projectId)
	resource, err := roleResource(ctx, *role, nil)
	assert.Nil(t, err)

	entitlement := getEntitlementForTesting(resource, grantPrincipalType, roleEntitlement)
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	roleBuilder := getRoleBuilderForTesting(cli)
	_, err = roleBuilder.Grant(ctx, principal, entitlement)
	assert.Nil(t, err)
}

func TestRoleBuilderRevokeGroup(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --revoke-grant role:10002:Administrators:group:jira-software-users
	revokeGrant := "role:10002:Administrators:group:jira-software-users"
	_, grantData, err := ParseGrantID(revokeGrant)
	assert.Nil(t, err)
	assert.NotNil(t, grantData)

	grantEntitlement := fmt.Sprintf("%s:%s:%s", grantData[0], grantData[1], grantData[2])
	grantPrincipal := grantData[4]
	_, entitlemenData, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, entitlemenData)

	projectId := entitlemenData[1]
	roleId := entitlemenData[2]
	groupName := grantPrincipal
	group := getGroupForTesting(groupName)
	principal, err := groupResource(ctx, *group, nil)
	assert.Nil(t, err)

	role := getRoleForTesting(projectId)
	resource, err := roleResource(ctx, *role, nil)
	assert.Nil(t, err)

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	roleBuilder := getRoleBuilderForTesting(cli)
	gr := grant.NewGrant(resource, roleId, principal.Id)
	annos := annotations.Annotations(gr.Annotations)
	v1Identifier := &v2.V1Identifier{
		Id: V1GrantID(V1MembershipEntitlementID(projectId), groupName),
	}
	annos.Update(v1Identifier)
	gr.Annotations = annos
	_, err = roleBuilder.Revoke(ctx, gr)
	assert.Nil(t, err)
}

func TestRoleBuilderRevokeUser(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	// --revoke-grant role:10002:Administrators:user:JIRAUSER10102
	revokeGrant := "role:10002:Administrators:user:JIRAUSER10102"
	_, grantData, err := ParseGrantID(revokeGrant)
	assert.Nil(t, err)
	assert.NotNil(t, grantData)

	grantEntitlement := fmt.Sprintf("%s:%s:%s", grantData[0], grantData[1], grantData[2])
	grantPrincipal := grantData[4]
	_, entitlemenData, err := ParseEntitlementID(grantEntitlement)
	assert.Nil(t, err)
	assert.NotNil(t, entitlemenData)

	projectId := entitlemenData[1]
	roleId := entitlemenData[2]
	userId := grantPrincipal
	user := getUserForTesting(userId)
	principal, err := userResource(*user)
	assert.Nil(t, err)

	role := getRoleForTesting(projectId)
	resource, err := roleResource(ctx, *role, nil)
	assert.Nil(t, err)

	cli, _ := client.New(ctx, instanceUrl, accessToken)
	roleBuilder := getRoleBuilderForTesting(cli)
	gr := grant.NewGrant(resource, roleId, principal.Id)
	annos := annotations.Annotations(gr.Annotations)
	v1Identifier := &v2.V1Identifier{
		Id: V1GrantID(V1MembershipEntitlementID(projectId), userId),
	}
	annos.Update(v1Identifier)
	gr.Annotations = annos
	_, err = roleBuilder.Revoke(ctx, gr)
	assert.Nil(t, err)
}
