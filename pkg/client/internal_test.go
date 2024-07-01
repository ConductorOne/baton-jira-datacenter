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

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.GetGroupMembers(ctx, "jira-software-users")
	assert.Nil(t, err)
	assert.NotNil(t, roles)
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
