package main

import (
	"github.com/conductorone/baton-sdk/pkg/field"
)

var (
	instanceURLField = field.StringField("instance-url", field.WithRequired(true), field.WithDescription(`The URL that Jira is hosted at. Example: "https://localhost:8080"`))
	accessTokenField = field.StringField("access-token", field.WithRequired(true), field.WithDescription("The Jira personal access token to authenticate with."))
	projectKeysField = field.StringSliceField("project-keys", field.WithDescription("Limit external ticket schemas to any of the provided project keys"))
)

// configurationFields defines the external configuration fields necessary for the Jira Datacenter connector to
// function.
var configurationFields = []field.SchemaField{
	instanceURLField,
	accessTokenField,
	projectKeysField,
}

var configRelations = []field.SchemaFieldRelationship{
	field.FieldsDependentOn([]field.SchemaField{projectKeysField}, []field.SchemaField{field.TicketingField}),
}
