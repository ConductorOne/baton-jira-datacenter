package connector

import (
	"context"
	"os"
	"testing"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	"github.com/stretchr/testify/assert"
)

var (
	ctx              = context.Background()
	instanceUrl, _   = os.LookupEnv("BATON_INSTANCE_URL")
	accessToken, _   = os.LookupEnv("BATON_ACCESS_TOKEN")
	parentResourceID = &v2.ResourceId{}
	pToken           = &pagination.Token{}
)

func Test_GroupBuilder_List(t *testing.T) {
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

func Test_ProjectBuilder_List(t *testing.T) {
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

func Test_UserBuilder_List(t *testing.T) {
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

func Test_RoleBuilder_List(t *testing.T) {
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
