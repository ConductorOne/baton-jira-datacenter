package client

import (
	"context"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
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

func (c *Client) CreateIssue(ctx context.Context, projectID string, summary string, opts ...FieldOption) (*jira.Issue, error) {
	l := ctxzap.Extract(ctx)

	i := &jira.Issue{
		Fields: &jira.IssueFields{
			Summary: summary,
			Project: jira.Project{
				ID: projectID,
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

	issue, _, err := c.client.Issue.Create(ctx, i)
	if err != nil {
		l.Error("error creating issue", zap.Error(err))
		return nil, err
	}

	return issue, nil
}
