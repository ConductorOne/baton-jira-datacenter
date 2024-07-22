package main

import (
	"github.com/conductorone/baton-sdk/pkg/field"
)

var (
	instanceURLField = field.StringField("instance-url", field.WithRequired(true), field.WithDescription(`The URL that Jira is hosted at. Example: "https://localhost:8080"`))
	accessTokenField = field.StringField("access-token", field.WithRequired(true), field.WithDescription("The Jira personal access token to authenticate with."))
)

// configurationFields defines the external configuration required for the connector to run.
var configurationFields = []field.SchemaField{
	instanceURLField,
	accessTokenField,
}
