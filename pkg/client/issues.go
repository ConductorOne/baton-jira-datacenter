package client

import (
	"context"
	"strings"

	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
)

func (c *Client) GetIssue(ctx context.Context, issueID string) (*jira.Issue, error) {
	l := ctxzap.Extract(ctx)

	issue, _, err := c.client.Issue.Get(ctx, issueID, nil)
	if err != nil {
		l.Error("error getting issue", zap.Error(err))
		return nil, err
	}

	return issue, nil
}

type FieldOption func(issue *jira.Issue)

func WithStatus(statusId string) FieldOption {
	return func(issue *jira.Issue) {
		if statusId != "" {
			issue.Fields.Status = &jira.Status{
				ID: statusId,
			}
		}
	}
}

func WithDescription(description string) FieldOption {
	return func(issue *jira.Issue) {
		issue.Fields.Description = description
	}
}

func WithType(id string) FieldOption {
	return func(issue *jira.Issue) {
		issue.Fields.Type = jira.IssueType{
			ID: id,
		}
	}
}

func WithLabels(labels ...string) FieldOption {
	for i, label := range labels {
		labels[i] = strings.ReplaceAll(label, " ", "_")
	}
	return func(issue *jira.Issue) {
		issue.Fields.Labels = labels
	}
}

func WithCustomField(id string, value interface{}) FieldOption {
	return func(issue *jira.Issue) {
		if issue.Fields.Unknowns == nil {
			issue.Fields.Unknowns = make(map[string]interface{})
		}
		issue.Fields.Unknowns[id] = value
	}
}

func WithComponents(componentIDs ...string) FieldOption {
	return func(issue *jira.Issue) {
		if len(issue.Fields.Components) == 0 {
			issue.Fields.Components = make([]*jira.Component, 0)
		}
		for _, componentID := range componentIDs {
			issue.Fields.Components = append(issue.Fields.Components, &jira.Component{ID: componentID})
		}
	}
}

func (c *Client) CreateIssue(ctx context.Context, projectKey string, summary string, opts ...FieldOption) (*jira.Issue, error) {
	l := ctxzap.Extract(ctx)

	i := &jira.Issue{
		Fields: &jira.IssueFields{
			Summary: summary,
			Project: jira.Project{
				Key: projectKey,
			},
		},
	}

	for _, opt := range opts {
		opt(i)
	}

	// Default to 'Task' if no type is provided
	if i.Fields.Type.ID == "" {
		i.Fields.Type = jira.IssueType{
			Name: "Task",
		}
	}

	issue, resp, err := c.client.Issue.Create(ctx, i)
	if err != nil {
		jerr := jira.NewJiraError(resp, err)
		l.Error("error creating issue", zap.Error(jerr))
		return nil, jerr
	}

	return issue, nil
}

func (c *Client) GetIssueTypesForProject(ctx context.Context, projectKey string, opts *jira.GetQueryIssueTypeOptions) ([]*jira.MetaIssueType, error) {
	l := ctxzap.Extract(ctx)

	var allIssueTypes []*jira.MetaIssueType
	for {
		issueTypes, _, isLast, err := c.client.Issue.GetCreateMetaProjectIssueTypes(ctx, projectKey, opts)
		if err != nil {
			l.Error("error getting issue types", zap.Error(err))
			return nil, err
		}

		allIssueTypes = append(allIssueTypes, issueTypes...)

		if isLast || opts == nil {
			break
		}

		opts.StartAt += len(allIssueTypes)
	}

	return allIssueTypes, nil
}

func (c *Client) GetIssueTypeFields(ctx context.Context, projectKey, issueTypeId string, opts *jira.GetQueryIssueTypeOptions) ([]*jira.MetaDataFields, error) {
	l := ctxzap.Extract(ctx)

	allMetaFields := make([]*jira.MetaDataFields, 0)

	for {
		issueFields, _, isLast, err := c.client.Issue.GetCreateMetaIssueType(ctx, projectKey, issueTypeId, opts)
		if err != nil {
			l.Error("error getting issue type", zap.Error(err))
			return nil, err
		}

		allMetaFields = append(allMetaFields, issueFields...)

		if isLast || opts == nil {
			break
		}

		opts.StartAt += len(allMetaFields)
	}

	return allMetaFields, nil
}
