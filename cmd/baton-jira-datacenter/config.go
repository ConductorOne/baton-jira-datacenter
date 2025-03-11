package main

import (
	"github.com/conductorone/baton-sdk/pkg/field"
)

var (
	instanceURLField = field.StringField("instance-url", field.WithRequired(true), field.WithDescription(`The URL that Jira is hosted at. Example: "https://localhost:8080"`))
	accessTokenField = field.StringField("access-token", field.WithRequired(true), field.WithDescription("The Jira personal access token to authenticate with."))
	projectKeysField = field.StringSliceField("project-keys", field.WithDescription("Limit external ticket schemas to any of the provided project keys"))
	defaultGroupName = field.StringField("default-group-name", field.WithDefaultValue("jira-software-users"), field.WithDescription("The default group name for new users"))
)

// configurationFields defines the external configuration fields necessary for the Jira Datacenter connector to
// function.
var configurationFields = []field.SchemaField{
	instanceURLField,
	accessTokenField,
	projectKeysField,
	defaultGroupName,
}

var configRelations = []field.SchemaFieldRelationship{
	field.FieldsDependentOn([]field.SchemaField{projectKeysField}, []field.SchemaField{field.TicketingField}),
}
