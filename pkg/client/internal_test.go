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

func TestClient_ListAllPermissions(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllPermissions(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClient_ListAllUsers(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllUsers(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClient_ListAllGroups(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllGroups(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClient_GetGroupMembers(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.GetGroupMembers(ctx, "jira-software-users")
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}

func TestClient_ListAllRoles(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllRoles(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}
