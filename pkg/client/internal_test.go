package client

import (
	"context"
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
	roles, err := client.ListAllPermissions(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
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
	roles, err := client.GetUser(ctx, "globaluser")
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClientGetProjectRoles(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.GetProjectRoles(ctx, "10000")
	assert.Nil(t, err)
	assert.NotNil(t, roles)
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
	roles, err := client.GetGroupRole(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
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
	roles, err := client.ListAllPermissionScheme(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClientAddActorsProjectRole(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.AddActorsProjectRole(ctx, "10000", "10002")
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestAddingGroupMembers(t *testing.T) {
	_, err := AddingGroupMembers()
	assert.Nil(t, err)
}
