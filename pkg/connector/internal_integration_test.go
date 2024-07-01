package connector

import (
	"context"
	"os"
	"testing"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
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

	pToken := &pagination.Token{}
	resource := &v2.Resource{}
	cli, _ := client.New(ctx, instanceUrl, accessToken)
	g := &groupBuilder{
		client: cli,
	}
	rv, _, _, err := g.Entitlements(ctx, resource, pToken)
	assert.Nil(t, err)
	assert.NotNil(t, rv)
}
