package connector

import (
	"context"
	"errors"
	"fmt"
	"net/url"
	"path"
	"strconv"
	"time"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkTicket "github.com/conductorone/baton-sdk/pkg/types/ticket"
	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

const maxProjects = 100

// example https://developer.atlassian.com/server/jira/platform/jira-rest-api-example-create-issue-7897248/
func (d *Connector) customFieldSchemaToMetaField(field *v2.TicketCustomField) (interface{}, error) {
	if field == nil {
		return nil, nil
	}

	type JiraPickerStruct struct {
		Id string `json:"id"`
	}

	pickObjects := []*JiraPickerStruct{}

	switch v := field.GetValue().(type) {
	case *v2.TicketCustomField_StringValue:
		strValue := v.StringValue.GetValue()
		if typ, ok := d.cfIdToJiraType[field.GetId()]; ok {
			if typ == jira.TypeUser {
				return jira.User{
					Name: strValue,
				}, nil
			}
			if typ == jira.TypeNumber {
				v, err := strconv.Atoi(strValue)
				if err != nil {
					return nil, err
				}
				return v, nil
			}
		}
		return strValue, nil

	case *v2.TicketCustomField_StringValues:
		if len(v.StringValues.GetValues()) == 0 {
			return nil, nil
		}
		return v.StringValues.GetValues(), nil

	case *v2.TicketCustomField_BoolValue:
		return v.BoolValue.GetValue(), nil

	case *v2.TicketCustomField_TimestampValue:
		// must be in ISO 8601 date time format (RFC3339)
		// https://developer.atlassian.com/server/jira/platform/jira-rest-api-example-create-issue-7897248/#datetimefield
		// -> Date time picker custom field
		val := v.TimestampValue.GetValue()
		if val != nil {
			return val.AsTime().Format(time.RFC3339), nil
		}
		return val, nil

	case *v2.TicketCustomField_PickStringValue:
		return v.PickStringValue.GetValue(), nil

	case *v2.TicketCustomField_PickMultipleStringValues:
		if len(v.PickMultipleStringValues.GetValues()) == 0 {
			return nil, nil
		}
		return v.PickMultipleStringValues.GetValues(), nil

	case *v2.TicketCustomField_PickObjectValue:
		if v.PickObjectValue.GetValue() != nil {
			return &JiraPickerStruct{
				Id: v.PickObjectValue.GetValue().GetId(),
			}, nil
		}
	case *v2.TicketCustomField_PickMultipleObjectValues:
		if len(v.PickMultipleObjectValues.GetValues()) == 0 {
			return nil, nil
		}
		for _, value := range v.PickMultipleObjectValues.GetValues() {
			pickObjects = append(pickObjects, &JiraPickerStruct{Id: value.GetId()})
		}
		return pickObjects, nil

	default:
		return nil, fmt.Errorf("error: unknown custom field type for field ID %s", field.GetId())
	}

	return nil, nil
}

func (d *Connector) getCustomFieldsForProject(ctx context.Context, projectId string, issueTypes []jira.IssueType) ([]*v2.TicketCustomField, error) {
	customFields := make([]*v2.TicketCustomField, 0)
	excludeTypes := map[string]bool{
		"Epic":        true,
		"Bug":         true,
		"Improvement": true,
		"New Feature": true,
	}

	for _, issueType := range issueTypes {
		if excludeTypes[issueType.Name] {
			continue
		}
		issueFields, err := d.jiraClient.GetIssueTypeFields(ctx, projectId, issueType.ID, &jira.GetQueryIssueTypeOptions{
			MaxResults: 100,
			StartAt:    0,
		})
		if err != nil {
			return nil, err
		}

		for _, field := range issueFields {
			var customField *v2.TicketCustomField
			var allowedValues []*v2.TicketCustomFieldObjectValue

			if !field.Required || field.Schema.Custom == "" {
				continue
			}

			hasAllowedValues := len(field.AllowedValues) > 0
			isMultiSelect := field.Schema.Items != ""

			if hasAllowedValues {
				for _, choice := range field.AllowedValues {
					displayName := choice.Name
					if displayName == "" {
						displayName = choice.Value
					}
					allowedValues = append(allowedValues, &v2.TicketCustomFieldObjectValue{
						Id:          choice.Id,
						DisplayName: displayName,
					})
				}
			}

			id := field.FieldId

			switch field.Schema.Type {
			case jira.TypeString:
				customField = sdkTicket.StringFieldSchema(id, field.Name, false)
			case jira.TypeArray:
				switch {
				case isMultiSelect && hasAllowedValues:
					customField = sdkTicket.PickMultipleObjectValuesFieldSchema(id, field.Name, false, allowedValues)
				case !isMultiSelect && hasAllowedValues:
					customField = sdkTicket.PickObjectValueFieldSchema(id, field.Name, false, allowedValues)
				case isMultiSelect && !hasAllowedValues:
					customField = sdkTicket.StringsFieldSchema(id, field.Name, false)
				default:
					customField = sdkTicket.StringFieldSchema(id, field.Name, false)
				}
			case jira.TypeDate, jira.TypeDateTime:
				customField = sdkTicket.TimestampFieldSchema(id, field.Name, false)
			case jira.TypeNumber:
				customField = sdkTicket.StringFieldSchema(id, field.Name, false)
			case jira.TypeObject, jira.TypeOption:
				if hasAllowedValues {
					customField = sdkTicket.PickObjectValueFieldSchema(id, field.Name, false, allowedValues)
				} else {
					customField = sdkTicket.StringFieldSchema(id, field.Name, false)
				}
			// We're exluding some types as they have a specific jira object type for the create issue request
			// and we dont really have a way to model them on our settings page, other than just them providing a string id
			// We'll need to check their type and create the correct object in customFieldSchemaToMetaField
			default:
				// Default to pick object or string depending on if has options. These fields would still be required to create a ticket
				// even if these types dont perfectly match the jira object
				if hasAllowedValues {
					customField = sdkTicket.PickObjectValueFieldSchema(id, field.Name, false, allowedValues)
				} else {
					customField = sdkTicket.StringFieldSchema(id, field.Name, false)
				}
			}
			d.cfIdToJiraType[id] = field.Schema.Type
			customFields = append(customFields, customField)
		}
	}

	return customFields, nil
}

func (d *Connector) ListTicketSchemas(ctx context.Context, pToken *pagination.Token) ([]*v2.TicketSchema, string, annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)
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

	for i, project := range projects {
		if len(ret) == maxProjects {
			remainingProjects := len(projects) - i
			l.Info("reached max of 100 projects", zap.Int("remainingProjects", remainingProjects))
			break
		}
		if shouldFilterByProjectKey {
			if _, ok := projectKeyMap[project.Key]; !ok {
				continue
			}
		}
		schema, err := d.schemaForProject(ctx, project)
		if err != nil {
			return nil, "", nil, err
		}
		ret = append(ret, schema)
	}

	return ret, "", nil, nil
}

func (d *Connector) getTicketStatuses(ctx context.Context, projectId string) ([]*v2.TicketStatus, error) {
	statuses, err := d.jiraClient.ListStatusesForProject(ctx, projectId)
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
		if issueType.Name == "Epic" || issueType.Name == "Bug" {
			continue
		}
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

	otherCustomFields, err := d.getCustomFieldsForProject(ctx, project.ID, project.IssueTypes)
	if err != nil {
		return nil, err
	}

	for _, cf := range otherCustomFields {
		customFields[cf.GetId()] = cf
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

	statuses, err := d.getTicketStatuses(ctx, project.ID)
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
		case "issue_type":
			retCustomFields[id] = sdkTicket.PickObjectValueField(cf.GetId(), &v2.TicketCustomFieldObjectValue{
				Id:          issue.Fields.Type.ID,
				DisplayName: issue.Fields.Type.Name,
			})
		}
	}
	ret.CustomFields = retCustomFields

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
		case "issue_type":
			issueType, err := sdkTicket.GetPickObjectValue(ticketFields[id])
			if err != nil {
				return nil, nil, err
			}

			ticketOptions = append(ticketOptions, client.WithType(issueType.GetId()))
		default:
			metaFieldValue, err := d.customFieldSchemaToMetaField(ticketFields[id])
			if err != nil {
				return nil, nil, fmt.Errorf("error converting custom field to meta field %s: %w", id, err)
			}

			// The ticket doesn't have this key set, so we skip it
			if metaFieldValue == nil {
				continue
			}

			ticketOptions = append(ticketOptions, client.WithCustomField(cf.GetId(), metaFieldValue))
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
