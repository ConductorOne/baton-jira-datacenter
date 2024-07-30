package connector

import (
	"context"
	"errors"
	"net/url"
	"path"
	"time"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkTicket "github.com/conductorone/baton-sdk/pkg/types/ticket"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

const maxProjects = 100

func (d *Connector) ListTicketSchemas(ctx context.Context, pToken *pagination.Token) ([]*v2.TicketSchema, string, annotations.Annotations, error) {
	var ret []*v2.TicketSchema

	shouldFilterByProjectKey := len(d.projectKeys) != 0
	projectKeyMap := make(map[string]bool)
	for _, str := range d.projectKeys {
		projectKeyMap[str] = true
	}

	projects, err := d.jiraClient.ListProjects(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	if len(projects) == 0 {
		return nil, "", nil, errors.New("no projects found")
	}

	for _, project := range projects {
		if shouldFilterByProjectKey {
			if _, ok := projectKeyMap[project.Key]; !ok {
				continue
			}
		}
		if len(ret) == maxProjects {
			break
		}
		schema, err := d.schemaForProject(ctx, project)
		if err != nil {
			return nil, "", nil, err
		}
		ret = append(ret, schema)
	}

	return ret, "", nil, nil
}

func (d *Connector) getTicketStatuses(ctx context.Context) ([]*v2.TicketStatus, error) {
	if d.ticketStatuses != nil {
		return d.ticketStatuses, nil
	}

	statuses, err := d.jiraClient.ListStatuses(ctx)
	if err != nil {
		return nil, err
	}

	ret := make([]*v2.TicketStatus, 0, len(statuses))
	for _, status := range statuses {
		ret = append(ret, &v2.TicketStatus{
			Id:          status.ID,
			DisplayName: status.Name,
		})
	}

	d.ticketStatuses = ret

	return ret, nil
}

func (d *Connector) schemaForProject(ctx context.Context, project *jira.Project) (*v2.TicketSchema, error) {
	var ticketTypes []*v2.TicketType
	var issueTypeAllowedValues []*v2.TicketCustomFieldObjectValue

	customFields := make(map[string]*v2.TicketCustomField)

	var components []*v2.TicketCustomFieldObjectValue

	for _, component := range project.Components {
		components = append(components, &v2.TicketCustomFieldObjectValue{
			Id:          component.ID,
			DisplayName: component.Name,
		})
	}

	for _, issueType := range project.IssueTypes {
		// TODO: Maybe we care about subtasks?
		if !issueType.Subtask {
			// We want to migrate ticket type to be a custom field
			// Remove this once everything is in a good state
			ticketTypes = append(ticketTypes, &v2.TicketType{
				Id:          issueType.ID,
				DisplayName: issueType.Name,
			})

			issueTypeAllowedValues = append(issueTypeAllowedValues, &v2.TicketCustomFieldObjectValue{
				Id:          issueType.ID,
				DisplayName: issueType.Name,
			})
		}
	}

	customFields["issue_type"] = sdkTicket.PickObjectValueFieldSchema(
		"issue_type",
		"Issue Type",
		true,
		issueTypeAllowedValues,
	)

	// Add a required field for the project
	customFields["project"] = sdkTicket.PickObjectValueFieldSchema(
		"project",
		"Project",
		true,
		[]*v2.TicketCustomFieldObjectValue{
			{
				Id:          project.ID,
				DisplayName: project.Name,
			},
		},
	)

	if len(components) > 0 {
		customFields["components"] = sdkTicket.PickMultipleObjectValuesFieldSchema(
			"components",
			"Components",
			false,
			components,
		)
	}

	ret := &v2.TicketSchema{
		Id:           project.Key,
		DisplayName:  project.Name,
		Types:        ticketTypes,
		CustomFields: customFields,
	}

	statuses, err := d.getTicketStatuses(ctx)
	if err != nil {
		return nil, err
	}
	ret.Statuses = statuses

	d.ticketSchemas[project.Key] = ret

	return ret, nil
}

func (d *Connector) GetTicketSchema(ctx context.Context, schemaID string) (*v2.TicketSchema, annotations.Annotations, error) {
	if schema, ok := d.ticketSchemas[schemaID]; ok {
		return schema, nil, nil
	}

	project, err := d.jiraClient.GetProject(ctx, schemaID)
	if err != nil {
		return nil, nil, err
	}

	ret, err := d.schemaForProject(ctx, project)
	if err != nil {
		return nil, nil, err
	}

	return ret, nil, nil
}

func (d *Connector) issueToTicket(ctx context.Context, issue *jira.Issue) (*v2.Ticket, error) {
	if issue.Fields == nil {
		return nil, errors.New("issue has no fields")
	}
	schema, _, err := d.GetTicketSchema(ctx, issue.Fields.Project.ID)
	if err != nil {
		return nil, err
	}

	issueURL, err := d.generateIssueURL(issue.Key)
	if err != nil {
		return nil, err
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
		CreatedAt: timestamppb.New(time.Time(issue.Fields.Created)),
		UpdatedAt: timestamppb.New(time.Time(issue.Fields.Updated)),
		Url:       issueURL,
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

// This is returning nil for annotations.
func (d *Connector) CreateTicket(ctx context.Context, ticket *v2.Ticket, schema *v2.TicketSchema) (*v2.Ticket, annotations.Annotations, error) {
	ticketOptions := []client.FieldOption{
		client.WithStatus(ticket.GetStatus().GetId()),
		client.WithType(ticket.GetType().GetId()),
		client.WithDescription(ticket.GetDescription()),
		client.WithLabels(ticket.GetLabels()...),
	}

	ticketFields := ticket.GetCustomFields()

	var projectID string

	for id, cf := range schema.GetCustomFields() {
		switch id {
		case "project":
			project, err := sdkTicket.GetPickObjectValue(ticketFields[id])
			if err != nil {
				return nil, nil, err
			}

			if project.GetId() == "" {
				return nil, nil, errors.New("error: unable to create ticket, project is required")
			}

			projectID = project.GetId()

		case "components":
			comps, err := sdkTicket.GetPickMultipleObjectValues(ticketFields[id])
			if err != nil {
				if errors.Is(err, sdkTicket.ErrFieldNil) {
					continue
				}
				return nil, nil, err
			}

			componentIDs := make([]string, 0, len(comps))
			for _, component := range comps {
				componentIDs = append(componentIDs, component.GetId())
			}
			ticketOptions = append(ticketOptions, client.WithComponents(componentIDs...))

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

func (d *Connector) generateIssueURL(issueKey string) (string, error) {
	baseURL, err := url.Parse(d.jiraClient.BaseURL)
	if err != nil {
		return "", err
	}
	baseURL.Path = path.Join("browse", issueKey)
	return baseURL.String(), nil
}
