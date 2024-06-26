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

func TestClient_getPermissions(t *testing.T) {
	if instanceUrl == "" && accessToken == "" {
		t.Skip()
	}

	client, _ := New(ctx, instanceUrl, accessToken)
	roles, err := client.ListAllPermissions(ctx)
	assert.Nil(t, err)
	assert.NotNil(t, roles)
}
