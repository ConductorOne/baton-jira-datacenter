# baton-jira-datacenter

## Dev
A docker compose file exists to help you start up a local Jira Data Center instance.

It is recommended that you run this on a linux amd64 machine. This is due to the fact that Atlassian does not ship ARM containers, so emulated performance is poor on a ARM macbook.

### Start Jira Data Center
```bash
mkdir -p dev/jira-data
docker-compose up
```