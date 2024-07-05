package client

import (
	"context"
	"fmt"
	"net/http"
	"net/url"
	"slices"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
	"github.com/conductorone/baton-sdk/pkg/uhttp"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
)

type Client struct {
	BaseURL    string
	client     *jira.Client
	httpClient *uhttp.BaseHttpClient
}

type JiraError struct {
	ErrorMessage     string                   `json:"error"`
	ErrorDescription string                   `json:"error_description"`
	ErrorCode        int                      `json:"errorCode,omitempty"`
	ErrorSummary     string                   `json:"errorSummary,omitempty" toml:"error_description"`
	ErrorLink        string                   `json:"errorLink,omitempty"`
	ErrorId          string                   `json:"errorId,omitempty"`
	ErrorCauses      []map[string]interface{} `json:"errorCauses,omitempty"`
}

func (b *JiraError) Error() string {
	return b.ErrorMessage
}

// GET - {instanceURL}/rest/api/2/permissions
// GET - {instanceURL}/rest/api/2/user/search?username=.
// GET - {instanceURL}/rest/api/2/groups/picker?maxResults=1000
// GET - {instanceURL}/rest/api/2/group/member?groupname={groupname}
// GET - {instanceURL}/rest/api/latest/user/search?username=.&maxResults=1000
// GET - {instanceURL}/rest/api/2/role
// GET - {instanceURL}/rest/api/2/project
// GET - {instanceURL}/rest/api/2/groups/picker
// GET - {instanceURL}/rest/api/2/groups/picker?query=.
// POST - {instanceURL}/rest/api/2/project/{projectIdOrKey}/role/{id}
// DELETE - {instanceURL}/rest/api/2/project/{projectIdOrKey}/role/{roleId}?user={username}
// DELETE - {instanceURL}/rest/api/2/project/{projectIdOrKey}/role/{roleId}?group={groupname}
// POST - {instanceURL}/rest/api/2/group/user
// DELETE - {instanceURL}/rest/api/2/group/user

const (
	allPermissions      = "rest/api/2/permissions"
	allUsersV2          = "rest/api/2/user/search?username="
	allUsers            = "rest/api/latest/user/search?username=.&maxResults=10000"
	allGroups           = "rest/api/2/groups/picker?maxResults=10000"
	groupMembers        = "rest/api/2/group/member?groupname="
	allRoles            = "rest/api/2/role"
	allProjects         = "rest/api/2/project/"
	groupRoles          = "rest/api/2/groups/picker"
	groupRolesQuery     = "rest/api/2/groups/picker?query="
	allPermissionScheme = "rest/api/2/permissionscheme?expand=permissions"
	addUserToGroup      = "rest/api/2/group/user"
	NF                  = -1
)

func New(ctx context.Context, instanceURL, accessToken string) (*Client, error) {
	l := ctxzap.Extract(ctx)

	httpClient, err := uhttp.NewBearerAuth(accessToken).GetClient(ctx)
	if err != nil {
		l.Error("error creating http client", zap.Error(err))
		return nil, err
	}

	jiraClient, err := jira.NewClient(instanceURL, httpClient)
	if err != nil {
		l.Error("error creating Jira client", zap.Error(err))
		return nil, err
	}

	baseURL, err := url.Parse(instanceURL)
	if err != nil {
		return nil, err
	}

	return &Client{
		BaseURL:    baseURL.String(),
		client:     jiraClient,
		httpClient: uhttp.NewBaseHttpClient(jiraClient.Client()),
	}, nil
}

func IsUrl(str string) bool {
	u, err := url.Parse(str)
	return err == nil && u.Scheme != "" && u.Host != ""
}

func getRequest(ctx context.Context, cli *Client, apiUrl string) (*http.Request, string, error) {
	var endpointUrl string = apiUrl
	if !IsUrl(apiUrl) {
		endpointUrl = fmt.Sprintf("%s/%s", cli.BaseURL, apiUrl)
	}
	uri, err := url.Parse(endpointUrl)
	if err != nil {
		return nil, "", err
	}

	req, err := cli.httpClient.NewRequest(ctx,
		http.MethodGet,
		uri,
		uhttp.WithAcceptJSONHeader(),
		uhttp.WithContentTypeJSONHeader(),
	)
	if err != nil {
		return nil, "", err
	}

	return req, endpointUrl, nil
}

func getCustomError(err error, resp *http.Response, endpointUrl string) *JiraError {
	return &JiraError{
		ErrorMessage:     err.Error(),
		ErrorDescription: err.Error(),
		ErrorCode:        resp.StatusCode,
		ErrorSummary:     fmt.Sprint(resp.Body),
		ErrorLink:        endpointUrl,
	}
}

// ListAllPermissions
// Returns all permissions that are present in the Jira instance - Global, Project and the global ones added by plugins
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2-getAllPermissions
func (client *Client) ListAllPermissions(ctx context.Context) ([]Permission, error) {
	var permissionsData PermissionsAPIData
	req, endpointUrl, err := getRequest(ctx, client, allPermissions)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&permissionsData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	for key, val := range permissionsData.Permissions {
		permission := val.(map[string]any)
		permissionsData.Roles = append(permissionsData.Roles, Permission{
			Key:         key,
			Name:        permission["name"].(string),
			Type:        permission["type"].(string),
			Description: permission["description"].(string),
		})
	}

	return permissionsData.Roles, nil
}

// ListAllUsers
// Returns all users that are present in the Jira instance - Global, Project and the global ones added by plugins.
func (client *Client) ListAllUsers(ctx context.Context) ([]jira.User, error) {
	var usersData []jira.User
	req, endpointUrl, err := getRequest(ctx, client, allUsers)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&usersData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return usersData, err
}

// ListAllGroups
// Returns all groups that are present in the Jira instance - Global, Project and the global ones added by plugins.
func (client *Client) ListAllGroups(ctx context.Context) ([]Group, error) {
	var groupsData GroupsAPIData
	req, endpointUrl, err := getRequest(ctx, client, allGroups)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupsData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return groupsData.Groups, err
}

// GetGroupMembers
// Returns all group members that are present in specific groups.
func (client *Client) GetGroupMembers(ctx context.Context, groupName string) ([]GroupUser, error) {
	var groupMembersAPIData GroupMembersAPIData
	req, endpointUrl, err := getRequest(ctx, client, groupMembers+groupName)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupMembersAPIData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return groupMembersAPIData.Users, err
}

// ListAllRoles
// Returns all roles that are present in the Jira instance - Global, Project and the global ones added by plugins.
func (client *Client) ListAllRoles(ctx context.Context) ([]RolesAPIData, error) {
	var rolesData []RolesAPIData
	req, endpointUrl, err := getRequest(ctx, client, allRoles)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&rolesData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return rolesData, err
}

// GetUser
// Returns specific users.
func (client *Client) GetUser(ctx context.Context, userName string) (jira.User, error) {
	var usersAPIData []UsersAPIData
	req, endpointUrl, err := getRequest(ctx, client, allUsersV2+userName)
	if err != nil {
		return jira.User{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&usersAPIData))
	if err != nil {
		return jira.User{}, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	user := usersAPIData[0]

	return jira.User{
		Self:         user.Self,
		Key:          user.Key,
		Name:         user.Name,
		EmailAddress: user.Name,
		DisplayName:  user.DisplayName,
		Active:       user.Active,
		TimeZone:     user.TimeZone,
		Locale:       user.Locale,
	}, err
}

// GetProjectRoles
// Returns all project roles that are present in specific project.
func (client *Client) GetProjectRoles(ctx context.Context, projectId string) (map[string]string, error) {
	var projectRolesAPIData map[string]string
	req, endpointUrl, err := getRequest(ctx, client, allProjects+projectId+"/role")
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&projectRolesAPIData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return projectRolesAPIData, err
}

// GetProjectRoleDetails
// Returns all role details that are present in specific project.
func (client *Client) GetProjectRoleDetails(ctx context.Context, urlApi string) (RolesAPIData, error) {
	var projectRoleDetailsAPIData RolesAPIData
	req, endpointUrl, err := getRequest(ctx, client, urlApi)
	if err != nil {
		return RolesAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&projectRoleDetailsAPIData))
	if err != nil {
		return RolesAPIData{}, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return projectRoleDetailsAPIData, err
}

// GetRole
// Return specific role.
func (client *Client) GetRole(ctx context.Context, roleId string) (RolesAPIData, error) {
	var rolesData RolesAPIData
	req, endpointUrl, err := getRequest(ctx, client, allRoles+"/"+roleId)
	if err != nil {
		return RolesAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&rolesData))
	if err != nil {
		return RolesAPIData{}, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return rolesData, err
}

// GetGroupRole
// Return specific all group roles.
func (client *Client) GetGroupRole(ctx context.Context) ([]Group, error) {
	var groupRolesData GroupRolesAPIData
	req, endpointUrl, err := getRequest(ctx, client, groupRoles)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupRolesData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return groupRolesData.Groups, err
}

// GetGroupLabelRoles
// Return group roles.
func (client *Client) GetGroupLabelRoles(ctx context.Context, groupName string) ([]Labels, error) {
	var (
		groupRoleData GroupRolesAPIData
		groupRoles    []Labels
	)
	req, endpointUrl, err := getRequest(ctx, client, groupRolesQuery+groupName)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupRoleData))
	if err != nil {
		return nil, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	for _, group := range groupRoleData.Groups {
		groupRoles = append(groupRoles, group.Labels...)
	}

	return groupRoles, err
}

// ListAllPermissionScheme
// Returns all permission schemes that are present in the Jira DC.
func (client *Client) ListAllPermissionScheme(ctx context.Context) (PermissionSchemes, error) {
	var permissionSchemesAPIData PermissionSchemesAPIData
	req, endpointUrl, err := getRequest(ctx, client, allPermissionScheme)
	if err != nil {
		return PermissionSchemes{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&permissionSchemesAPIData))
	if err != nil {
		return PermissionSchemes{}, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	// This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
	return permissionSchemesAPIData.PermissionSchemes[0], err
}

func getXRequest(ctx context.Context, cli *Client, method, apiUrl string, body BodyActors) (*http.Request, string, error) {
	var (
		req     *http.Request
		options []uhttp.RequestOption
	)
	endpointUrl := fmt.Sprintf("%s/%s", cli.BaseURL, apiUrl)
	uri, err := url.Parse(endpointUrl)
	if err != nil {
		return nil, "", err
	}

	options = append(options, uhttp.WithAcceptJSONHeader())
	if method != http.MethodDelete {
		options = append(options, uhttp.WithJSONBody(body))
	}

	req, err = cli.httpClient.NewRequest(ctx,
		method,
		uri,
		options...,
	)
	if err != nil {
		return nil, "", err
	}

	return req, endpointUrl, nil
}

// AddActorsProjectRole
// Adds an actor (user or group) to a project role in the Jira DC.
// For user actors, their usernames should be used.
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/project/{projectIdOrKey}/role-addActorUsers
func (client *Client) AddActorsProjectRole(ctx context.Context, projectId, roleId string, body BodyActors) (ActorsAPIData, error) {
	var actorsAPIData ActorsAPIData
	url := fmt.Sprintf("%s%s/role/%s", allProjects, projectId, roleId)
	req, endpointUrl, err := getXRequest(ctx, client, http.MethodPost, url, body)
	if err != nil {
		return ActorsAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&actorsAPIData))
	if err != nil {
		return ActorsAPIData{}, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return actorsAPIData, err
}

// RemoveActorsProjectRole
// Deletes actors (users or groups) from a project role in the Jira DC.
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/project/{projectIdOrKey}/role-deleteActor
func (client *Client) RemoveActorsProjectRole(ctx context.Context, projectId, roleId, actor string) (int, error) {
	url := fmt.Sprintf("%s%s/role/%s?%s", allProjects, projectId, roleId, actor)
	req, endpointUrl, err := getXRequest(ctx, client, http.MethodDelete, url, BodyActors{})
	if err != nil {
		return 0, err
	}

	resp, err := client.httpClient.Do(req)
	if err != nil {
		return 0, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return resp.StatusCode, err
}

// AddUserToGroup
// Adds given user to a group in the Jira DC.
// Returns the current state of the group.
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/group-addUserToGroup
func (client *Client) AddUserToGroup(ctx context.Context, groupName string, body BodyActors) (any, error) {
	var actorsAPIData any
	req, endpointUrl, err := getXRequest(ctx, client, http.MethodPost, addUserToGroup+"?groupname="+groupName, body)
	if err != nil {
		return ActorsAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&actorsAPIData))
	if err != nil {
		return ActorsAPIData{}, getCustomError(err, resp, endpointUrl)
	}

	defer resp.Body.Close()
	return actorsAPIData, err
}

func (client *Client) GetUserName(ctx context.Context, userId string) (string, error) {
	users, err := client.ListAllUsers(ctx)
	if err != nil {
		return "", err
	}

	userPos := slices.IndexFunc(users, func(c jira.User) bool {
		return c.Key == userId
	})

	if userPos == NF {
		return "", fmt.Errorf("user %s cannot be found", userId)
	}

	return users[userPos].Name, nil
}
