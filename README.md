# baton-jira-datacenter

## Dev
A docker compose file exists to help you start up a local Jira Data Center instance.

It is recommended that you run this on a linux amd64 machine. This is due to the 
fact that Atlassian does not ship ARM containers, so emulated performance is 
poor on an ARM macbook.

### Start Jira Data Center
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