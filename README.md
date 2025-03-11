![Baton Logo](./docs/images/baton-logo.png)

# `baton-jira-datacenter` [![Go Reference](https://pkg.go.dev/badge/github.com/conductorone/baton-jira-datacenter.svg)](https://pkg.go.dev/github.com/conductorone/baton-jira-datacenter) ![main ci](https://github.com/conductorone/baton-jira-datacenter/actions/workflows/main.yaml/badge.svg)

`baton-jira-datacenter` is a connector for jira-datacenter built using the [Baton SDK](https://github.com/conductorone/baton-sdk). It communicates with the jira-datacenter API to sync data about users and roles.

Check out [Baton](https://github.com/conductorone/baton) to learn more about the project in general.

# Getting Started

A docker compose file exists to help you start up a local Jira Data Center instance.

It is recommended that you run this on a linux amd64 machine. This is due to the 
fact that Atlassian does not ship ARM containers, so emulated performance is 
poor on an ARM macbook.

## Start Jira Data Center
```bash
mkdir -p dev/jira-data
docker-compose up
```

## Creating PATs in the application
All users are allowed to create their own PATs, which will match their current permission level. To create the tokens, you may follow these steps:

In your Atlassian application go to:
1) In Jira, select your profile picture at the top right of the screen, then choose Profile. Once you access your profile, select Personal Access Tokens in the left-hand menu.
2) Select Create token.
3) Give your new token a name.
4) Optionally, for security reasons, you can set your token to automatically expire after a set number of days. 

Note: Even though, every user can generate a personal access token, you must be an admin in order to sync resources.

## brew

```
brew install conductorone/baton/baton conductorone/baton/baton-jira-datacenter
baton-jira-datacenter
baton resources
```

## docker

```
docker run --rm -v $(pwd):/out -e BATON_ACCESS_TOKEN=access_token -e BATON_INSTANCE_URL=instance_url ghcr.io/conductorone/baton-jira-datacenter:latest -f "/out/sync.c1z"
docker run --rm -v $(pwd):/out ghcr.io/conductorone/baton:latest -f "/out/sync.c1z" resources
```

## source

```
go install github.com/conductorone/baton/cmd/baton@main
go install github.com/conductorone/baton-jira-datacenter/cmd/baton-jira-datacenter@main

BATON_ACCESS_TOKEN=access_token BATON_INSTANCE_URL=instance_url
baton resources
```

# Data Model

`baton-jira-datacenter` will pull down information about the following resources:
- Users
- Groups
- Roles
- Permissions
- Tickets 
- Projects

# Contributing, Support and Issues

We started Baton because we were tired of taking screenshots and manually building spreadsheets. We welcome contributions, and ideas, no matter how small -- our goal is to make identity and permissions sprawl less painful for everyone. If you have questions, problems, or ideas: Please open a Github Issue!

See [CONTRIBUTING.md](https://github.com/ConductorOne/baton/blob/main/CONTRIBUTING.md) for more details.

# `baton-jira-datacenter` Command Line Usage

```
baton-jira-datacenter

Usage:
  baton-jira-datacenter [flags]
  baton-jira-datacenter [command]

Available Commands:
  capabilities       Get connector capabilities
  completion         Generate the autocompletion script for the specified shell
  help               Help about any command

Flags:
      --access-token string    required: The Jira personal access token to authenticate with. ($BATON_ACCESS_TOKEN)
      --client-id string       The client ID used to authenticate with ConductorOne ($BATON_CLIENT_ID)
      --client-secret string   The client secret used to authenticate with ConductorOne ($BATON_CLIENT_SECRET)
      --default-group-name     The default group name (jira-software-users by default)
  -f, --file string            The path to the c1z file to sync with ($BATON_FILE) (default "sync.c1z")
  -h, --help                   help for baton-jira-datacenter
      --instance-url string    required: The URL that Jira is hosted at. Example: "https://localhost:8080" ($BATON_INSTANCE_URL)
      --log-format string      The output format for logs: json, console ($BATON_LOG_FORMAT) (default "json")
      --log-level string       The log level: debug, info, warn, error ($BATON_LOG_LEVEL) (default "info")
      --project-keys strings   Limit external ticket schemas to any of the provided project keys ($BATON_PROJECT_KEYS)
  -p, --provisioning           This must be set in order for provisioning actions to be enabled ($BATON_PROVISIONING)
      --skip-full-sync         This must be set to skip a full sync ($BATON_SKIP_FULL_SYNC)
      --ticketing              This must be set to enable ticketing support ($BATON_TICKETING)
  -v, --version                version for baton-jira-datacenter

Use "baton-jira-datacenter [command] --help" for more information about a command.

```
