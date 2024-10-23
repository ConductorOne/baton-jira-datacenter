package connector

import (
	"context"
	"errors"
	"fmt"
	"net/url"
	"path"
	"strconv"
	"strings"
	"time"

	pt "github.com/conductorone/baton-jira-datacenter/pb/c1/connector/v2"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkTicket "github.com/conductorone/baton-sdk/pkg/types/ticket"
	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

const maxProjects = 100

var ignoreRequiredSystem = map[string]bool{
	"issuetype": true,
	"project":   true,
	"assignee":  true,
	"summary":   true,
	"reporter":  true,
}

var excludeTypes = map[string]bool{
	"Epic":        true,
	"Bug":         true,
	"Improvement": true,
	"New Feature": true,
}

// Format is projectKey:issueID.
type ProjectKeyIssueTypeIDSchemaID struct {
	ProjectKey  string
	IssueTypeID string
}

func (p ProjectKeyIssueTypeIDSchemaID) String() string {
	return fmt.Sprintf("%s:%s", p.ProjectKey, p.IssueTypeID)
}

func (p *ProjectKeyIssueTypeIDSchemaID) Parse(schemaID string) error {
	schemaIDParts := strings.Split(schemaID, ":")
	if len(schemaIDParts) != 2 {
		return errors.New("invalid schemaID format, expected 'projectKey:issueTypeID'")
	}
	p.ProjectKey = schemaIDParts[0]
	p.IssueTypeID = schemaIDParts[1]
	return nil
}

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
		if len(strValue) == 0 {
			return nil, nil
		}
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

func (d *Connector) ListTicketSchemas(ctx context.Context, pToken *pagination.Token) ([]*v2.TicketSchema, string, annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)
	var ret []*v2.TicketSchema

	shouldFilterByProjectKey := len(d.projectKeys) != 0

	// If we have more than 1 project we want to include the project key
	// in the schema display name because issue type names can be the same
	// across projects
	multipleProjects := len(d.projectKeys) != 1

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
		statuses, err := d.getTicketStatuses(ctx, project.ID)
		if err != nil {
			return nil, "", nil, err
		}
		for _, issueType := range project.IssueTypes {
			if excludeTypes[issueType.Name] {
				continue
			}

			if issueType.Subtask {
				continue
			}

			schema, err := d.schemaForProjectIssueType(ctx, project, &issueType, statuses, multipleProjects)
			if err != nil {
				return nil, "", nil, err
			}
			ret = append(ret, schema)
		}
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

func (d *Connector) getCustomFieldsForIssueType(ctx context.Context, projectId string, issueType *jira.IssueType) ([]*v2.TicketCustomField, error) {
	customFields := make([]*v2.TicketCustomField, 0)

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

		// TODO(lauren) remove custom?
		if !field.Required {
			if field.Schema.Custom == "" && field.FieldId != "components" {
				continue
			}
		} else {
			if _, ok := ignoreRequiredSystem[field.FieldId]; ok {
				continue
			}
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
			customField = sdkTicket.StringFieldSchema(id, field.Name, field.Required)
		case jira.TypeArray:
			switch {
			case isMultiSelect && hasAllowedValues:
				customField = sdkTicket.PickMultipleObjectValuesFieldSchema(id, field.Name, field.Required, allowedValues)
			case !isMultiSelect && hasAllowedValues:
				customField = sdkTicket.PickObjectValueFieldSchema(id, field.Name, field.Required, allowedValues)
			case isMultiSelect && !hasAllowedValues:
				customField = sdkTicket.StringsFieldSchema(id, field.Name, field.Required)
			default:
				customField = sdkTicket.StringFieldSchema(id, field.Name, field.Required)
			}
		case jira.TypeDate, jira.TypeDateTime:
			customField = sdkTicket.TimestampFieldSchema(id, field.Name, field.Required)
		case jira.TypeNumber:
			customField = sdkTicket.StringFieldSchema(id, field.Name, field.Required)
		case jira.TypeObject, jira.TypeOption:
			if hasAllowedValues {
				customField = sdkTicket.PickObjectValueFieldSchema(id, field.Name, field.Required, allowedValues)
			} else {
				customField = sdkTicket.StringFieldSchema(id, field.Name, field.Required)
			}
		// We're exluding some types as they have a specific jira object type for the create issue request
		// and we dont really have a way to model them on our settings page, other than just them providing a string id
		// We'll need to check their type and create the correct object in customFieldSchemaToMetaField
		default:
			// Default to pick object or string depending on if has options. These fields would still be required to create a ticket
			// even if these types dont perfectly match the jira object
			if hasAllowedValues {
				customField = sdkTicket.PickObjectValueFieldSchema(id, field.Name, field.Required, allowedValues)
			} else {
				customField = sdkTicket.StringFieldSchema(id, field.Name, field.Required)
			}
		}
		d.cfIdToJiraType[id] = field.Schema.Type
		customFields = append(customFields, customField)
	}

	return customFields, nil
}

func (d *Connector) schemaForProjectIssueType(ctx context.Context, project *jira.Project, issueType *jira.IssueType, statuses []*v2.TicketStatus, includeProjectInName bool) (*v2.TicketSchema, error) {
	customFieldsMap := make(map[string]*v2.TicketCustomField)

	issueTypeCustomFields, err := d.getCustomFieldsForIssueType(ctx, project.ID, issueType)
	if err != nil {
		return nil, err
	}

	for _, cf := range issueTypeCustomFields {
		customFieldsMap[cf.GetId()] = cf
	}

	projectKeySchemaID := &ProjectKeyIssueTypeIDSchemaID{
		ProjectKey:  project.Key,
		IssueTypeID: issueType.ID,
	}
	schemaId := projectKeySchemaID.String()

	displayName := issueType.Name

	if includeProjectInName {
		displayName = fmt.Sprintf("%s (%s)", displayName, project.Key)
	}

	projectAnno := &pt.IssueTypeProject{
		ProjectId:   project.ID,
		ProjectName: project.Name,
		ProjectKey:  project.Key,
	}

	ret := &v2.TicketSchema{
		Id:           schemaId,
		DisplayName:  displayName,
		CustomFields: customFieldsMap,
		Annotations:  annotations.New(projectAnno),
	}

	ret.Statuses = statuses

	d.ticketSchemas[schemaId] = ret

	return ret, nil
}

func (d *Connector) GetTicketSchema(ctx context.Context, schemaID string) (*v2.TicketSchema, annotations.Annotations, error) {
	if schema, ok := d.ticketSchemas[schemaID]; ok {
		return schema, nil, nil
	}

	projectKeyIssueTypeID := &ProjectKeyIssueTypeIDSchemaID{}
	err := projectKeyIssueTypeID.Parse(schemaID)
	if err != nil {
		return nil, nil, err
	}

	project, err := d.jiraClient.GetProject(ctx, projectKeyIssueTypeID.ProjectKey)
	if err != nil {
		return nil, nil, err
	}

	issueType := findIssueTypeFromProject(project, projectKeyIssueTypeID.IssueTypeID)
	if issueType == nil {
		return nil, nil, errors.New("issueType not found")
	}

	statuses, err := d.getTicketStatuses(ctx, project.ID)
	if err != nil {
		return nil, nil, err
	}

	ret, err := d.schemaForProjectIssueType(ctx, project, issueType, statuses, false)
	if err != nil {
		return nil, nil, err
	}

	ret.Statuses = statuses

	return ret, nil, nil
}

func (d *Connector) issueToTicket(ctx context.Context, issue *jira.Issue) (*v2.Ticket, error) {
	if issue.Fields == nil {
		return nil, errors.New("issue has no fields")
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
	l := ctxzap.Extract(ctx)
	ticketOptions := []client.FieldOption{
		client.WithStatus(ticket.GetStatus().GetId()),
		client.WithDescription(ticket.GetDescription()),
		client.WithLabels(ticket.GetLabels()...),
	}

	ticketFields := ticket.GetCustomFields()

	var projectKey string
	var issueTypeID string

	projectAnno := GetProjectAnnotation(schema.Annotations)
	if projectAnno == nil {
		// If no projectAnnotation assume schema id is project
		// Because the config schema may have not been updated
		projectKey = schema.Id
	} else {
		projectKeyIssueTypeID := &ProjectKeyIssueTypeIDSchemaID{}
		err := projectKeyIssueTypeID.Parse(schema.Id)
		if err != nil {
			return nil, nil, err
		}
		projectKey = projectKeyIssueTypeID.ProjectKey
		issueTypeID = projectKeyIssueTypeID.IssueTypeID
		// This could use projectAnno.ProjectKey but the former schemaID is the projectKey so using
		// this for consistency
	}

	for id, cf := range schema.GetCustomFields() {
		switch id {
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
			// If issueTypeID is empty, the config has not been updated to use issue type as schema
			// So issue type is still stored in the custom fields
			if issueTypeID == "" {
				issueType, err := sdkTicket.GetPickObjectValue(ticketFields[id])
				if err != nil {
					return nil, nil, err
				}
				issueTypeID = issueType.GetId()
			}
		default:
			metaFieldValue, err := d.customFieldSchemaToMetaField(ticketFields[id])
			if err != nil {
				return nil, nil, fmt.Errorf("error converting custom field to meta field %s: %w", id, err)
			}

			// The ticket doesn't have this key set, so we skip it
			if metaFieldValue == nil {
				continue
			}

			l.Info("adding custom field to new ticket", zap.String("id", id), zap.Any("value", metaFieldValue))
			ticketOptions = append(ticketOptions, client.WithCustomField(cf.GetId(), metaFieldValue))
		}
	}

	if issueTypeID == "" {
		return nil, nil, errors.New("error: unable to create ticket, issue type is required")
	}

	ticketOptions = append(ticketOptions, client.WithType(issueTypeID))

	valid, err := sdkTicket.ValidateTicket(ctx, schema, ticket)
	if err != nil {
		return nil, nil, err
	}
	if !valid {
		return nil, nil, errors.New("error: unable to create ticket, ticket is invalid")
	}

	iss, err := d.jiraClient.CreateIssue(ctx, projectKey, ticket.GetDisplayName(), ticketOptions...)
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

func (d *Connector) BulkCreateTickets(ctx context.Context, request *v2.TicketsServiceBulkCreateTicketRequest) (*v2.TicketsServiceBulkCreateTicketResponse, error) {
	tickets := make([]*v2.TicketsServiceCreateTicketResponse, 0)
	for _, ticketReq := range request.GetTicketRequests() {
		reqBody := ticketReq.GetRequest()
		ticketBody := &v2.Ticket{
			DisplayName:  reqBody.GetDisplayName(),
			Description:  reqBody.GetDescription(),
			Status:       reqBody.GetStatus(),
			Labels:       reqBody.GetLabels(),
			CustomFields: reqBody.GetCustomFields(),
			RequestedFor: reqBody.GetRequestedFor(),
		}
		ticket, annos, err := d.CreateTicket(ctx, ticketBody, ticketReq.GetSchema())
		// So we can track the external ticket ref annotation
		annos.Merge(ticketReq.GetAnnotations()...)
		var ticketResp *v2.TicketsServiceCreateTicketResponse

		if err != nil {
			ticketResp = &v2.TicketsServiceCreateTicketResponse{Ticket: ticket, Annotations: annos, Error: err.Error()}
		} else {
			ticketResp = &v2.TicketsServiceCreateTicketResponse{Ticket: ticket, Annotations: annos}
		}
		tickets = append(tickets, ticketResp)
	}
	return &v2.TicketsServiceBulkCreateTicketResponse{Tickets: tickets}, nil
}

func (d *Connector) BulkGetTickets(ctx context.Context, request *v2.TicketsServiceBulkGetTicketRequest) (*v2.TicketsServiceBulkGetTicketResponse, error) {
	tickets := make([]*v2.TicketsServiceGetTicketResponse, 0)
	for _, ticketReq := range request.GetTicketRequests() {
		ticket, annos, err := d.GetTicket(ctx, ticketReq.GetId())
		// So we can track the external ticket ref annotation
		annos.Merge(ticketReq.GetAnnotations()...)
		var ticketResp *v2.TicketsServiceGetTicketResponse
		if err != nil {
			ticketResp = &v2.TicketsServiceGetTicketResponse{Ticket: ticket, Annotations: annos, Error: err.Error()}
		} else {
			ticketResp = &v2.TicketsServiceGetTicketResponse{Ticket: ticket, Annotations: annos}
		}
		tickets = append(tickets, ticketResp)
	}
	return &v2.TicketsServiceBulkGetTicketResponse{Tickets: tickets}, nil
}

func (d *Connector) generateIssueURL(issueKey string) (string, error) {
	baseURL, err := url.Parse(d.jiraClient.BaseURL)
	if err != nil {
		return "", err
	}
	baseURL.Path = path.Join("browse", issueKey)
	return baseURL.String(), nil
}

// TODO(lauren) add this to go-jira fork
func findIssueTypeFromProject(project *jira.Project, issueTypeId string) *jira.IssueType {
	for _, issueType := range project.IssueTypes {
		if issueType.ID == issueTypeId {
			return &issueType
		}
	}
	return nil
}

func GetProjectAnnotation(annotations []*anypb.Any) *pt.IssueTypeProject {
	pta := &pt.IssueTypeProject{}
	for _, a := range annotations {
		if a.MessageIs(pta) {
			err := a.UnmarshalTo(pta)
			if err != nil {
				return nil
			}
			return pta
		}
	}
	return nil
}
