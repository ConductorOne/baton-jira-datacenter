FROM gcr.io/distroless/static-debian11:nonroot
ENTRYPOINT ["/baton-jira-datacenter"]
COPY baton-jira-datacenter /