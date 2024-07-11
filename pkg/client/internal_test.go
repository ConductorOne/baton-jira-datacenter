package client

import (
	"context"
	"net/http"
	"os"
	"testing"

	"github.com/stretchr/testify/assert"
)

var (
	ctx            = context.Background()
	instanceUrl, _ = os.LookupEnv("BATON_INSTANCE_URL")
	accessToken, _ = os.LookupEnv("BATON_ACCESS_TOKEN")
)

func TestClientListAllPermissions(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	permissions, err := client.ListAllPermissions(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, permissions)
}

func TestClientListAllUsers(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllUsers(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClientListAllGroups(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllGroups(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClientGetGroupMembers(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	tests := []struct {
		name      string
		groupName string
	}{
		{
			name:      "Checking local-group",
			groupName: "local-group",
		},
		{
			name:      "Checking jira-software-users",
			groupName: "jira-software-users",
		},
		{
			name:      "Checking jira-administrators",
			groupName: "jira-administrators",
		},
		{
			name:      "Checking global-group",
			groupName: "global-group",
		},
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			roles, err := client.GetGroupMembers(ctx, test.groupName)
			assert.Nil(t, err)
			assert.NotNil(t, roles)
		})
	}
}

func TestClientListAllRoles(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllRoles(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClientGetUser(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	user, err := client.GetUser(ctx, "globaluser")
	assert.Nil(t, err)
	assert.NotNil(t, user)
}

func TestClientGetProjectRoles(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roleList, err := client.GetProjectRoles(ctx, "10000")
	assert.Nil(t, err)
	assert.NotNil(t, roleList)
}

func TestClientGetProjectRoleDetails(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	tests := []struct {
		name string
		url  string
	}{
		{
			name: "Checking role 10002",
			url:  "http://localhost:8080/rest/api/2/project/10000/role/10002?expand=actors",
		},
		{
			name: "Checking role 10100",
			url:  "http://localhost:8080/rest/api/2/project/10000/role/10100?expand=actors",
		},
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			roles, err := client.GetProjectRoleDetails(ctx, test.url)
			assert.Nil(t, err)
			assert.NotNil(t, roles)
		})
	}
}

func TestClientGetRole(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	tests := []struct {
		name   string
		roleId string
	}{
		{
			name:   "Checking role 10002",
			roleId: "10002",
		},
		{
			name:   "Checking role 10100",
			roleId: "10100",
		},
	}
	client, _ := New(ctx, instanceUrl, accessToken)
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			roles, err := client.GetRole(ctx, test.roleId)
			assert.Nil(t, err)
			assert.NotNil(t, roles)
		})
	}
}

func TestClientGetGroupRole(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roleByGroups, err := client.GetGroupRole(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roleByGroups)
}

func TestClientGetGroupRoles(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.GetGroupLabelRoles(ctx, "global-group")
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClientListAllPermissionScheme(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	permissionList, err := client.ListAllPermissionScheme(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, permissionList)
}

func TestClientAddActorsToProjectRole(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	body := BodyActors{
		Group: []string{
			"jira-software-users",
		},
	}
	actors, err := client.AddActorsToProjectRole(ctx, "10000", "10002", body)
	assert.Nil(t, err)
	assert.NotNil(t, actors)
}

func TestClientRemoveActorsFromProjectRole(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	statusCode, err := client.RemoveActorsFromProjectRole(ctx, "10000", "10002", "group", "jira-administrators")
	assert.Nil(t, err)
	assert.Equal(t, http.StatusNoContent, statusCode)
}

func TestClientAddUserToGroupFails(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	userName, err := client.GetUserName(ctx, "JIRAUSER10103")
	assert.Nil(t, err)

	_, err = client.AddUserToGroup(ctx, "jira-software-users", userName)
	assert.NotNil(t, err)
}

func TestClientAddUserToGroup(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	userName, err := client.GetUserName(ctx, "JIRAUSER10103")
	assert.Nil(t, err)

	statusCode, err := client.AddUserToGroup(ctx, "jira-administrators", userName)
	assert.Nil(t, err)
	assert.Equal(t, http.StatusCreated, statusCode)
}

func TestClientRemoveUserFromGroup(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	userName, err := client.GetUserName(ctx, "JIRAUSER10103")
	assert.Nil(t, err)

	statusCode, err := client.RemoveUserFromGroup(ctx, "jira-administrators", userName)
	assert.Nil(t, err)
	assert.Equal(t, http.StatusOK, statusCode)
}

func TestClientAddProjectRoleActorsToRoleWithGroup(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	actors, err := client.AddProjectRoleActorsToRole(ctx, "10002", BodyActors{
		Group: []string{
			"jira-software-users",
		},
	})
	assert.Nil(t, err)
	assert.NotNil(t, actors)
}

func TestClientAddProjectRoleActorsToRoleWithUser(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	actors, err := client.AddProjectRoleActorsToRole(ctx, "10002", BodyActors{
		User: []string{
			"JIRAUSER10103",
		},
	})
	assert.Nil(t, err)
	assert.NotNil(t, actors)
}

func TestClientDeleteProjectRoleActorsFromRoleWithGroup(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	statusCode, err := client.DeleteProjectRoleActorsFromRole(ctx, "10002", "group", "jira-software-users")
	assert.Nil(t, err)
	assert.Equal(t, http.StatusOK, statusCode)
}

func TestClientDeleteProjectRoleActorsFromRoleWithUser(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	statusCode, err := client.DeleteProjectRoleActorsFromRole(ctx, "10002", "user", "JIRAUSER10102")
	assert.Nil(t, err)
	assert.Equal(t, http.StatusOK, statusCode)
}
