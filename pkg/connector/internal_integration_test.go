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
