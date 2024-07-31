package connector

import (
	"context"
	"io"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/connectorbuilder"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type Connector struct {
	jiraClient    *client.Client
	ticketSchemas map[string]*v2.TicketSchema
}

// ResourceSyncers returns a ResourceSyncer for each resource type that should be synced from the upstream service.
func (d *Connector) ResourceSyncers(ctx context.Context) []connectorbuilder.ResourceSyncer {
	return []connectorbuilder.ResourceSyncer{
		newUserBuilder(d.jiraClient),
		newProjectBuilder(d.jiraClient),
		newPermissionBuilder(d.jiraClient),
		newGroupBuilder(d.jiraClient),
		newRoleBuilder(d.jiraClient),
	}
}

// Asset takes an input AssetRef and attempts to fetch it using the connector's authenticated http client
// It streams a response, always starting with a metadata object, following by chunked payloads for the asset.
func (d *Connector) Asset(ctx context.Context, asset *v2.AssetRef) (string, io.ReadCloser, error) {
	return "", nil, nil
}

// Metadata returns metadata about the connector.
func (d *Connector) Metadata(ctx context.Context) (*v2.ConnectorMetadata, error) {
	return &v2.ConnectorMetadata{
		DisplayName: "Jira (Datacenter)",
		Description: "Implements syncing, provisioning, and ticketing for jira datacenter instances",
	}, nil
}

// Validate is called to ensure that the connector is properly configured. It should exercise any API credentials
// to be sure that they are valid.
func (d *Connector) Validate(ctx context.Context) (annotations.Annotations, error) {
	return nil, nil
}

// New returns a new instance of the connector.
func New(ctx context.Context, instanceURL, accessToken string, projectKeys []string) (*Connector, error) {
	jiraClient, err := client.New(ctx, instanceURL, accessToken)
	if err != nil {
		return nil, err
	}

	c := &Connector{
		jiraClient:    jiraClient,
		ticketSchemas: make(map[string]*v2.TicketSchema),
		projectKeys:   projectKeys,
	}

	return c, nil
}
