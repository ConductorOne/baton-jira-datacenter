package main

import (
	"context"
	"errors"

	"github.com/conductorone/baton-sdk/pkg/cli"
)

// config defines the external configuration required for the connector to run.
type config struct {
	cli.BaseConfig `mapstructure:",squash"` // Puts the base config options in the same place as the connector options
	InstanceURL    string                   `mapstructure:"instance-url" description:"The URL that Jira is hosted at. Example: \"https://localhost:8080\""`
	AccessToken    string                   `mapstructure:"access-token" description:"The Jira personal access token to authenticate with."`
}

// validateConfig is run after the configuration is loaded, and should return an error if it isn't valid.
func validateConfig(ctx context.Context, cfg *config) error {
	if cfg.InstanceURL == "" {
		return errors.New("--instance-url is required")
	}
	if cfg.AccessToken == "" {
		return errors.New("--access-token is required")
	}
	return nil
}
