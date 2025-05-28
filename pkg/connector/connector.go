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
	jiraClient     *client.Client
	ticketSchemas  map[string]*v2.TicketSchema
	projectKeys    []string
	cfIdToJiraType map[string]string
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
		Description: "Implements syncing, provisioning, and ticketing for Jira Datacenter instances",
		AccountCreationSchema: &v2.ConnectorAccountCreationSchema{
			FieldMap: map[string]*v2.ConnectorAccountCreationSchema_Field{
				"email": {
					DisplayName: "Email",
					Required:    true,
					Description: "User's email address (used for login)",
					Field: &v2.ConnectorAccountCreationSchema_Field_StringField{
						StringField: &v2.ConnectorAccountCreationSchema_StringField{},
					},
					Placeholder: "user@example.com",
					Order:       1,
				},
				"first_name": {
					DisplayName: "First Name",
					Required:    true,
					Description: "User's first name",
					Field: &v2.ConnectorAccountCreationSchema_Field_StringField{
						StringField: &v2.ConnectorAccountCreationSchema_StringField{},
					},
					Placeholder: "John",
					Order:       2,
				},
				"last_name": {
					DisplayName: "Last Name",
					Required:    true,
					Description: "User's last name",
					Field: &v2.ConnectorAccountCreationSchema_Field_StringField{
						StringField: &v2.ConnectorAccountCreationSchema_StringField{},
					},
					Placeholder: "Doe",
					Order:       3,
				},
				"username": {
					DisplayName: "Username",
					Required:    false,
					Description: "User's username (optional, defaults to email if not provided)",
					Field: &v2.ConnectorAccountCreationSchema_Field_StringField{
						StringField: &v2.ConnectorAccountCreationSchema_StringField{},
					},
					Placeholder: "john.doe",
					Order:       4,
				},
			},
		},
	}, nil
}

// Validate is called to ensure that the connector is properly configured. It should exercise any API credentials
// to be sure that they are valid.
func (d *Connector) Validate(ctx context.Context) (annotations.Annotations, error) {
	return nil, d.jiraClient.Myself(ctx)
}

// New returns a new instance of the connector.
func New(ctx context.Context, instanceURL, accessToken string, projectKeys []string, defaultGroupName string) (*Connector, error) {
	jiraClient, err := client.New(ctx, instanceURL, accessToken, defaultGroupName)
	if err != nil {
		return nil, err
	}

	c := &Connector{
		jiraClient:     jiraClient,
		ticketSchemas:  make(map[string]*v2.TicketSchema),
		projectKeys:    projectKeys,
		cfIdToJiraType: make(map[string]string),
	}

	return c, nil
}
