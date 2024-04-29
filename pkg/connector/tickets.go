package connector

import (
	"context"
	"errors"
	"time"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	sdkTicket "github.com/conductorone/baton-sdk/pkg/types/ticket"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

func (d *Connector) GetTicketSchema(ctx context.Context) (*v2.TicketSchema, annotations.Annotations, error) {
	if d.ticketSchema != nil {
		return d.ticketSchema, nil, nil
	}

	var ticketTypes []*v2.TicketType
	customFields := make(map[string]*v2.TicketCustomField)

	projects, err := d.jiraClient.ListProjects(ctx)
	if err != nil {
		return nil, nil, err
	}
	var projectIDs []*v2.TicketCustomFieldObjectValue
	var components []*v2.TicketCustomFieldObjectValue

	for _, project := range projects {
		projectIDs = append(projectIDs, &v2.TicketCustomFieldObjectValue{
			Id:          project.ID,
			DisplayName: project.Name,
		})
		for _, issueType := range project.IssueTypes {
			// TODO: Maybe we care about subtasks?
			if !issueType.Subtask {
				ticketTypes = append(ticketTypes, &v2.TicketType{
					Id:          issueType.ID,
					DisplayName: issueType.Name,
				})
			}
		}
		for _, component := range project.Components {
			components = append(components, &v2.TicketCustomFieldObjectValue{
				Id:          component.ID,
				DisplayName: component.Name,
			})
		}
	}

	statuses, err := d.jiraClient.ListStatuses(ctx)
	if err != nil {
		return nil, nil, err
	}

	ticketStatuses := make([]*v2.TicketStatus, 0, len(statuses))
	for _, status := range statuses {
		ticketStatuses = append(ticketStatuses, &v2.TicketStatus{
			Id:          status.ID,
			DisplayName: status.Name,
		})
	}

	// Add a required field for the project
	customFields["project"] = sdkTicket.PickObjectValueFieldSchema(
		"project",
		"Project",
		true,
		projectIDs,
	)

	customFields["components"] = sdkTicket.PickMultipleObjectValuesFieldSchema(
		"components",
		"Components",
		false,
		components,
	)

	ret := &v2.TicketSchema{
		Types:        ticketTypes,
		Statuses:     ticketStatuses,
		CustomFields: customFields,
	}

	d.ticketSchema = ret

	return ret, nil, nil
}

func (d *Connector) issueToTicket(ctx context.Context, issue *jira.Issue) (*v2.Ticket, error) {
	if issue.Fields == nil {
		return nil, errors.New("issue has no fields")
	}
	schema, _, err := d.GetTicketSchema(ctx)
	if err != nil {
		return nil, err
	}

	var comments []*v2.TicketComment
	if issue.Fields.Comments != nil {
		for _, comment := range issue.Fields.Comments.Comments {
			c := &v2.TicketComment{
				Id:              comment.ID,
				OriginalContent: comment.Body,
				UpdatedContent:  comment.Updated,
				// TODO figure out how timestamps are returned and pares them
				//CreatedAt: timestamppb.New(time.Time(comment.Created)),
				//UpdatedAt: timestamppb.New(time.Time(comment.Updated)),
			}

			if createdBy, err := userResource(comment.Author); err == nil && createdBy != nil {
				c.CreatedBy = createdBy
			}
			if updatedBy, err := userResource(comment.UpdateAuthor); err == nil && updatedBy != nil {
				c.LastUpdatedBy = updatedBy
			}

			comments = append(comments, c)
		}
	}

	ret := &v2.Ticket{
		Id:          issue.ID,
		DisplayName: issue.Fields.Summary,
		Description: issue.Fields.Description,
		Type: &v2.TicketType{
			Id:          issue.Fields.Type.ID,
			DisplayName: issue.Fields.Type.Name,
		},
		Status: &v2.TicketStatus{
			Id:          issue.Fields.Status.ID,
			DisplayName: issue.Fields.Status.Name,
		},
		Labels:    issue.Fields.Labels,
		Comments:  comments,
		CreatedAt: timestamppb.New(time.Time(issue.Fields.Created)),
		UpdatedAt: timestamppb.New(time.Time(issue.Fields.Updated)),
	}
	if issue.Fields.Assignee != nil {
		if assignee, err := userResource(*issue.Fields.Assignee); err == nil && assignee != nil {
			ret.Assignees = []*v2.Resource{assignee}
		}
	}

	if issue.Fields.Reporter != nil {
		if reporter, err := userResource(*issue.Fields.Reporter); err == nil && reporter != nil {
			ret.Reporter = reporter
		}
	}

	retCustomFields := make(map[string]*v2.TicketCustomField)
	for id, cf := range schema.GetCustomFields() {
		switch id {
		case "project":
			retCustomFields[id] = sdkTicket.PickObjectValueField(cf.GetId(), &v2.TicketCustomFieldObjectValue{
				Id:          issue.Fields.Project.ID,
				DisplayName: issue.Fields.Project.Name,
			})
		case "components":
			var components []*v2.TicketCustomFieldObjectValue
			for _, component := range issue.Fields.Components {
				components = append(components, &v2.TicketCustomFieldObjectValue{
					Id:          component.ID,
					DisplayName: component.Name,
				})
			}
			retCustomFields[id] = sdkTicket.PickMultipleObjectValuesField(cf.GetId(), components)
		}
	}
	ret.CustomFields = retCustomFields

	valid, err := sdkTicket.ValidateTicket(ctx, schema, ret)
	if err != nil {
		return nil, err
	}
	if !valid {
		return nil, errors.New("ticket is invalid")
	}

	return ret, nil
}
func (d *Connector) GetTicket(ctx context.Context, ticketId string) (*v2.Ticket, annotations.Annotations, error) {
	issue, err := d.jiraClient.GetIssue(ctx, ticketId)
	if err != nil {
		return nil, nil, err
	}

	if issue == nil {
		return nil, nil, errors.New("issue not found")
	}

	ret, err := d.issueToTicket(ctx, issue)
	if err != nil {
		return nil, nil, err
	}

	return ret, nil, nil
}

func (d *Connector) CreateTicket(ctx context.Context, ticket *v2.Ticket) (*v2.Ticket, annotations.Annotations, error) {
	schema, _, err := d.GetTicketSchema(ctx)
	if err != nil {
		return nil, nil, err
	}

	ticketOptions := []client.FieldOption{
		client.WithType(ticket.GetType().GetId()),
		client.WithDescription(ticket.GetDescription()),
		client.WithLabels(ticket.GetLabels()...),
	}

	ticketFields := ticket.GetCustomFields()

	var projectID string

	for id, cf := range schema.GetCustomFields() {
		switch id {
		case "project":
			val, err := sdkTicket.GetCustomFieldValue(ticketFields[id])
			if err != nil {
				return nil, nil, err
			}

			if val == nil {
				return nil, nil, errors.New("error: unable to create ticket, project is required")
			}

			project, ok := val.(*v2.TicketCustomFieldObjectValue)
			if !ok || project.GetId() == "" {
				return nil, nil, errors.New("error: unable to create ticket, project is required")
			}

			projectID = project.GetId()

		case "components":
			val, err := sdkTicket.GetCustomFieldValue(ticketFields[id])
			if err != nil {
				return nil, nil, err
			}
			comps, ok := val.([]*v2.TicketCustomFieldObjectValue)
			if !ok {
				return nil, nil, errors.New("error: unable to create ticket, components are required")
			}
			componentIds := make([]string, 0, len(comps))
			for _, component := range comps {
				componentIds = append(componentIds, component.GetId())
			}
			ticketOptions = append(ticketOptions, client.WithComponents(componentIds...))

		default:
			val, err := sdkTicket.GetCustomFieldValue(ticketFields[id])
			if err != nil {
				return nil, nil, err
			}

			// The ticket doesn't have this key set, so we skip it
			if val == nil {
				continue
			}

			ticketOptions = append(ticketOptions, client.WithCustomField(cf.GetId(), val))
		}
	}

	valid, err := sdkTicket.ValidateTicket(ctx, schema, ticket)
	if err != nil {
		return nil, nil, err
	}
	if !valid {
		return nil, nil, errors.New("error: unable to create ticket, ticket is invalid")
	}

	iss, err := d.jiraClient.CreateIssue(ctx, projectID, ticket.GetDisplayName(), ticketOptions...)
	if err != nil {
		return nil, nil, err
	}

	fullIss, err := d.jiraClient.GetIssue(ctx, iss.ID)
	if err != nil {
		return nil, nil, err
	}

	ret, err := d.issueToTicket(ctx, fullIss)
	if err != nil {
		return nil, nil, err
	}

	return ret, nil, nil
}
