package client

import (
	"context"
	"errors"

	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
)

func (c *Client) GetProject(ctx context.Context, projectID string) (*jira.Project, error) {
	l := ctxzap.Extract(ctx)

	if projectID == "" {
		return nil, errors.New("projectID is required")
	}

	project, _, err := c.client.Project.Get(ctx, projectID)
	if err != nil {
		l.Error("Error getting project", zap.Error(err))
		return nil, err
	}

	return project, nil
}

func (c *Client) ListProjects(ctx context.Context) ([]*jira.Project, error) {
	l := ctxzap.Extract(ctx)

	projects, _, err := c.client.Project.GetAll(ctx, nil)
	if err != nil {
		l.Error("Error getting projects", zap.Error(err))
		return nil, err
	}

	var ret []*jira.Project
	for _, i := range *projects {
		p, err := c.GetProject(ctx, i.ID)
		if err != nil {
			return nil, err
		}
		ret = append(ret, p)
	}

	return ret, nil
}

func (c *Client) ListStatuses(ctx context.Context) ([]*jira.Status, error) {
	l := ctxzap.Extract(ctx)

	statuses, _, err := c.client.Status.GetAllStatuses(ctx)
	if err != nil {
		l.Error("error getting statuses", zap.Error(err))
		return nil, err
	}

	ret := make([]*jira.Status, 0, len(statuses))
	for _, status := range statuses {
		status := status
		ret = append(ret, &status)
	}

	return ret, nil
}

func (c *Client) ListStatusesForProject(ctx context.Context, projectID string) ([]*jira.Status, error) {
	l := ctxzap.Extract(ctx)

	if projectID == "" {
		return nil, errors.New("projectID is required")
	}

	statuses, _, err := c.client.Status.GetStatusesPaginated(ctx, &jira.StatusSearchOptions{
		ProjectIDs: []string{projectID},
	})
	if err != nil {
		l.Error("error getting statuses for project", zap.Error(err))
		return nil, err
	}

	ret := make([]*jira.Status, 0, len(statuses))
	for _, status := range statuses {
		if status.StatusCategory.Key == "done" {
			status := status
			ret = append(ret, &status)
		}
	}

	return ret, nil
}
