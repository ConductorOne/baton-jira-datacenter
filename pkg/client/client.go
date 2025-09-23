package client

import (
	"context"
	"fmt"
	"net/http"
	"net/url"
	"slices"
	"strconv"

	"github.com/conductorone/baton-sdk/pkg/uhttp"
	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
)

type Client struct {
	BaseURL          string
	client           *jira.Client
	httpClient       *uhttp.BaseHttpClient
	DefaultGroupName string
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

var (
	ErrUserNotFound = fmt.Errorf("user not found")
)

type Query map[string]string

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
// POST - {instanceURL}/rest/api/2/group/user
// POST - {instanceURL}/rest/api/2/role/{id}/actors
// DELETE - {instanceURL}/rest/api/2/project/{projectIdOrKey}/role/{roleId}?user={username}
// DELETE - {instanceURL}/rest/api/2/project/{projectIdOrKey}/role/{roleId}?group={groupname}
// DELETE - {instanceURL}/rest/api/2/group/user?groupname={groupname}&username={username}
// DELETE - {instanceURL}/rest/api/2/role/{id}/actors

// ------------------------------
// Global Permissions
// ------------------------------
// To allow users to log in, they must have 'application access'
// https://confluence.atlassian.com/adminjiraserver/managing-global-permissions-938847142.html

// ------------------------------
// Application access
// ------------------------------
// Set defaults for new users
// A user must belong to a group assigned to an application to be able to log in and access that application.
// When you create a user for a Jira application, that user is automatically added to the application's default group.
// Additional permissions can be assigned to a group via 'global permissions'.

// ------------------------------
// Jira Permissions
// ------------------------------
// Jira System Administrators
// Ability to perform all administration functions. There must be at least one group with this permission.

// Jira Administrators
// Ability to perform most administration functions (excluding Import & Export, SMTP Configuration, etc.).

const (
	myself                = "rest/api/2/myself"
	allPermissions        = "rest/api/2/permissions"
	allUsersV2            = "rest/api/2/user/search"
	allUsersV3            = "rest/api/latest/user/search"
	groupMembersV2        = "rest/api/2/group/member"
	allRoles              = "rest/api/2/role"
	allProjects           = "rest/api/2/project"
	allGroupsV2           = "rest/api/2/groups/picker"
	allPermissionSchemeV2 = "rest/api/2/permissionscheme"
	addUserToGroup        = "rest/api/2/group/user"
	baseUserPath          = "rest/api/2/user"
	NF                    = -1
	maxMembersPerPage     = 50 // This is the max the group member api returns
)

func New(ctx context.Context, instanceURL, accessToken string, defaultGroupName string) (*Client, error) {
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
		BaseURL:          baseURL.String(),
		client:           jiraClient,
		httpClient:       uhttp.NewBaseHttpClient(jiraClient.Client()),
		DefaultGroupName: defaultGroupName,
	}, nil
}

func IsUrl(str string) bool {
	u, err := url.Parse(str)
	return err == nil && u.Scheme != "" && u.Host != ""
}

func getRequest(ctx context.Context, cli *Client, apiUrl string, queryString map[string]string) (*http.Request, error) {
	var (
		endpointUrl = apiUrl
		err         error
	)
	if !IsUrl(apiUrl) {
		endpointUrl, err = url.JoinPath(cli.BaseURL, apiUrl)
		if err != nil {
			return nil, err
		}
	}

	uri, err := url.Parse(endpointUrl)
	if err != nil {
		return nil, err
	}

	if len(queryString) > 0 {
		q := uri.Query()
		for k, v := range queryString {
			q.Set(k, v)
		}

		uri.RawQuery = q.Encode()
	}

	req, err := cli.httpClient.NewRequest(ctx,
		http.MethodGet,
		uri,
		uhttp.WithAcceptJSONHeader(),
		uhttp.WithContentTypeJSONHeader(),
	)
	if err != nil {
		return nil, err
	}

	return req, nil
}

// ListAllPermissions
// Returns all permissions that are present in the Jira instance
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2-getAllPermissions
func (client *Client) ListAllPermissions(ctx context.Context) ([]Permission, error) {
	var permissionsData PermissionsAPIData
	req, err := getRequest(ctx, client, allPermissions, nil)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&permissionsData))
	if err != nil {
		return nil, err
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
// Returns all users that are present in the Jira instance.
// By default all users are assigned a group to get access to jira.
// We get the complete list of users by fetching default group members.
func (client *Client) ListAllUsers(ctx context.Context) ([]jira.User, error) {
	var allUsers []jira.User
	defaultGroupName := client.DefaultGroupName
	users, err := client.GetGroupMembers(ctx, defaultGroupName)
	if err != nil {
		return nil, err
	}

	for _, user := range users {
		jiraUser := jira.User{
			Self:         user.Self,
			Key:          user.Key,
			Name:         user.Name,
			EmailAddress: user.EmailAddress,
			DisplayName:  user.DisplayName,
			Active:       user.Active,
			TimeZone:     user.TimeZone,
			Locale:       "",
		}
		allUsers = append(allUsers, jiraUser)
	}

	return allUsers, nil
}

func (client *Client) ListUsersPaginated(ctx context.Context, pageToken string) ([]jira.User, string, error) {
	var allUsers []jira.User
	defaultGroupName := client.DefaultGroupName
	users, nextToken, err := client.GetGroupMembersPaginated(ctx, defaultGroupName, pageToken)
	if err != nil {
		return nil, "", err
	}

	for _, user := range users {
		jiraUser := jira.User{
			Self:         user.Self,
			Key:          user.Key,
			Name:         user.Name,
			EmailAddress: user.EmailAddress,
			DisplayName:  user.DisplayName,
			Active:       user.Active,
			TimeZone:     user.TimeZone,
			Locale:       "",
		}
		allUsers = append(allUsers, jiraUser)
	}

	return allUsers, nextToken, nil
}

// ListAllGroups
// Returns all groups that are present in the Jira instance.
func (client *Client) ListAllGroups(ctx context.Context) ([]Group, error) {
	var groupsData GroupsAPIData
	req, err := getRequest(ctx, client, allGroupsV2, Query{
		// As per API documentation: The number of groups returned is limited by the system property "jira.ajax.autocomplete.limit".
		"maxResults": "10000",
	})
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupsData))
	if err != nil {
		return nil, err
	}

	defer resp.Body.Close()
	return groupsData.Groups, err
}

// GetGroupMembers
// Returns all members that are present in a group.
func (client *Client) GetGroupMembers(ctx context.Context, groupName string) ([]GroupUser, error) {
	var allMembers []GroupUser
	var groupMembersAPIData GroupMembersAPIData
	startAt := 0
	for {
		req, err := getRequest(ctx, client, groupMembersV2, Query{
			"groupname": groupName,
			"startAt":   strconv.Itoa(startAt),
		})
		if err != nil {
			return nil, err
		}

		resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupMembersAPIData))
		if err != nil {
			return nil, err
		}

		defer resp.Body.Close()
		allMembers = append(allMembers, groupMembersAPIData.Users...)
		// If we've fetched all users, break the loop.
		if groupMembersAPIData.IsLast || len(groupMembersAPIData.Users) == 0 {
			break
		}
		startAt = len(allMembers)
	}
	return allMembers, nil
}

func ConvertPageToken(token string) (int, error) {
	if token == "" {
		return 0, nil
	}
	return strconv.Atoi(token)
}

func (client *Client) GetGroupMembersPaginated(ctx context.Context, groupName string, pageToken string) ([]GroupUser, string, error) {
	var allMembers []GroupUser
	var groupMembersAPIData GroupMembersAPIData
	startAt, err := ConvertPageToken(pageToken)
	if err != nil {
		return nil, "", err
	}
	req, err := getRequest(ctx, client, groupMembersV2, Query{
		"groupname":  groupName,
		"startAt":    strconv.Itoa(startAt),
		"maxResults": strconv.Itoa(maxMembersPerPage),
	})
	if err != nil {
		return nil, "", err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupMembersAPIData))
	if err != nil {
		return nil, "", err
	}

	defer resp.Body.Close()
	allMembers = append(allMembers, groupMembersAPIData.Users...)

	if groupMembersAPIData.IsLast || len(groupMembersAPIData.Users) == 0 {
		return allMembers, "", nil
	} else {
		startAt += maxMembersPerPage
		nextPage := strconv.Itoa(startAt)
		return allMembers, nextPage, nil
	}
}

// ListAllRoles
// Returns all roles that are present in the Jira instance.
func (client *Client) ListAllRoles(ctx context.Context) ([]RolesAPIData, error) {
	var rolesData []RolesAPIData
	req, err := getRequest(ctx, client, allRoles, nil)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&rolesData))
	if err != nil {
		return nil, err
	}

	defer resp.Body.Close()
	return rolesData, err
}

// GetUser
// Returns specific users.
func (client *Client) GetUser(ctx context.Context, userName string) (jira.User, error) {
	l := ctxzap.Extract(ctx)
	var usersAPIData []UsersAPIData
	req, err := getRequest(ctx, client, allUsersV2, Query{
		"username": userName,
	})
	if err != nil {
		return jira.User{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&usersAPIData))
	if err != nil {
		l.Debug("error fetching user", zap.String("username", userName), zap.Error(err))
		return jira.User{}, err
	}

	defer resp.Body.Close()

	if len(usersAPIData) == 0 {
		l.Debug("user not found error", zap.String("username", userName))
		return jira.User{}, fmt.Errorf("%w: %s", ErrUserNotFound, userName)
	}

	if len(usersAPIData) > 1 {
		l.Debug("multiple users found for username", zap.String("username", userName))
		return jira.User{}, fmt.Errorf("%w: more than one result for %s", ErrUserNotFound, userName)
	}

	user := usersAPIData[0]
	if user.Name != userName && user.EmailAddress != userName {
		l.Debug("user not found error, no exact match for username", zap.String("username", userName))
		return jira.User{}, fmt.Errorf("%w: no exact match for username %s", ErrUserNotFound, userName)
	}

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

func (client *Client) GetUserByKey(ctx context.Context, userKey string) (*UsersAPIData, error) {
	var userAPIData UsersAPIData
	req, err := getRequest(ctx, client, baseUserPath, Query{
		"key":    userKey,
		"expand": "groups",
	})
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&userAPIData))
	if err != nil {
		return nil, err
	}

	defer resp.Body.Close()

	return &userAPIData, err
}

// GetProjectRoles
// Returns all roles that are present in specific project.
func (client *Client) GetProjectRoles(ctx context.Context, projectId string) (map[string]string, error) {
	var projectRolesAPIData map[string]string
	endpointUrl, err := url.JoinPath(allProjects, projectId, "role")
	if err != nil {
		return nil, err
	}

	req, err := getRequest(ctx, client, endpointUrl, nil)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&projectRolesAPIData))
	if err != nil {
		return nil, err
	}

	defer resp.Body.Close()
	return projectRolesAPIData, err
}

func (client *Client) GetProjectRoleDetailsById(ctx context.Context, projectId string, roleId string) (*RolesAPIData, error) {
	var projectRoleDetailsAPIData RolesAPIData
	endpointUrl, err := url.JoinPath(allProjects, projectId, "role", roleId)
	if err != nil {
		return nil, err
	}

	req, err := getRequest(ctx, client, endpointUrl, nil)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&projectRoleDetailsAPIData))
	if err != nil {
		return nil, err
	}

	defer resp.Body.Close()
	return &projectRoleDetailsAPIData, err
}

// GetProjectRoleDetails
// Returns all role details that are present in specific project.
func (client *Client) GetProjectRoleDetails(ctx context.Context, urlApi string) (RolesAPIData, error) {
	var projectRoleDetailsAPIData RolesAPIData
	req, err := getRequest(ctx, client, urlApi, nil)
	if err != nil {
		return RolesAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&projectRoleDetailsAPIData))
	if err != nil {
		return RolesAPIData{}, err
	}

	defer resp.Body.Close()
	return projectRoleDetailsAPIData, err
}

// GetRole
// Return specific role.
func (client *Client) GetRole(ctx context.Context, roleId string) (RolesAPIData, error) {
	var rolesData RolesAPIData
	endpointUrl, err := url.JoinPath(allRoles, roleId)
	if err != nil {
		return rolesData, err
	}

	req, err := getRequest(ctx, client, endpointUrl, nil)
	if err != nil {
		return RolesAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&rolesData))
	if err != nil {
		return RolesAPIData{}, err
	}

	defer resp.Body.Close()
	return rolesData, err
}

// GetGroupRole
// Return all group roles.
func (client *Client) GetGroupRole(ctx context.Context) ([]Group, error) {
	var groupRolesData GroupRolesAPIData
	req, err := getRequest(ctx, client, allGroupsV2, nil)
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupRolesData))
	if err != nil {
		return nil, err
	}

	defer resp.Body.Close()
	return groupRolesData.Groups, err
}

// GetGroupLabelRoles
// Return group label roles.
func (client *Client) GetGroupLabelRoles(ctx context.Context, groupName string) ([]Labels, error) {
	var (
		groupRoleData GroupRolesAPIData
		groupRoles    []Labels
	)
	req, err := getRequest(ctx, client, allGroupsV2, Query{
		"query": groupName,
	})
	if err != nil {
		return nil, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&groupRoleData))
	if err != nil {
		return nil, err
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
	req, err := getRequest(ctx, client, allPermissionSchemeV2, Query{
		"expand": "permissions",
	})
	if err != nil {
		return PermissionSchemes{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&permissionSchemesAPIData))
	if err != nil {
		return PermissionSchemes{}, err
	}

	defer resp.Body.Close()
	// Default Permission Scheme. New projects created will be assigned this scheme.
	return permissionSchemesAPIData.PermissionSchemes[0], err
}

// post and delete requests.
func getXRequest(ctx context.Context, cli *Client, method, apiPath string, queryString map[string]string, body BodyActors) (*http.Request, error) {
	endpointUrl, err := url.JoinPath(cli.BaseURL, apiPath)
	if err != nil {
		return nil, err
	}

	uri, err := url.Parse(endpointUrl)
	if err != nil {
		return nil, err
	}

	if len(queryString) > 0 {
		q := uri.Query()
		for k, v := range queryString {
			q.Set(k, v)
		}

		uri.RawQuery = q.Encode()
	}

	options := []uhttp.RequestOption{
		uhttp.WithAcceptJSONHeader(),
	}
	if method != http.MethodDelete {
		options = append(options, uhttp.WithJSONBody(body))
	}

	req, err := cli.httpClient.NewRequest(ctx,
		method,
		uri,
		options...,
	)
	if err != nil {
		return nil, err
	}

	return req, nil
}

// AddActorsToProjectRole
// Adds an actor (user or group) to a project role in the Jira DC.
// For user actors, their usernames should be used.
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/project/{projectIdOrKey}/role-addActorUsers
func (client *Client) AddActorsToProjectRole(ctx context.Context, projectId, roleId string, body BodyActors) (ActorsAPIData, error) {
	var actorsAPIData ActorsAPIData
	endpointUrl, err := url.JoinPath(allProjects, projectId, "role", roleId)
	if err != nil {
		return actorsAPIData, err
	}

	req, err := getXRequest(ctx, client, http.MethodPost, endpointUrl, nil, body)
	if err != nil {
		return ActorsAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&actorsAPIData))
	if err != nil {
		return ActorsAPIData{}, err
	}

	defer resp.Body.Close()
	return actorsAPIData, err
}

// RemoveActorsProjectRole
// Deletes actors (users or groups) from a project role in the Jira DC.
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/project/{projectIdOrKey}/role-deleteActor
func (client *Client) RemoveActorsFromProjectRole(ctx context.Context, projectId, roleId, actor, actorName string) (int, error) {
	endpointUrl, err := url.JoinPath(allProjects, projectId, "role", roleId)
	if err != nil {
		return NF, err
	}

	req, err := getXRequest(ctx, client, http.MethodDelete, endpointUrl, Query{
		actor: actorName,
	}, BodyActors{})
	if err != nil {
		return NF, err
	}

	resp, err := client.httpClient.Do(req)
	if err != nil {
		return NF, err
	}

	defer resp.Body.Close()
	return resp.StatusCode, err
}

// AddUserToGroup
// Adds given user to a group in the Jira DC.
// Returns the true is the user was added successfully (status code = 201).
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/group-addUserToGroup
func (client *Client) AddUserToGroup(ctx context.Context, groupName string, userName string) (bool, error) {
	endpointUrl, err := url.JoinPath(addUserToGroup)
	if err != nil {
		return false, err
	}

	req, err := getXRequest(ctx, client, http.MethodPost, endpointUrl, Query{
		"groupname": groupName,
	}, BodyActors{
		Name: userName,
	})
	if err != nil {
		return false, err
	}

	resp, err := client.httpClient.Do(req)
	if err != nil {
		return false, err
	}

	defer resp.Body.Close()
	return resp.StatusCode == http.StatusCreated, err
}

// GetUserName
// Returns user name.
func (client *Client) GetUserName(ctx context.Context, userId string) (string, error) {
	users, err := client.ListAllUsers(ctx)
	if err != nil {
		return "", err
	}

	userPos := slices.IndexFunc(users, func(c jira.User) bool {
		return c.Key == userId
	})

	if userPos == -1 {
		return "", fmt.Errorf("user %s cannot be found", userId)
	}

	return users[userPos].Name, nil
}

// RemoveUserFromGroup
// Removes given user from a group in the Jira DC.
// Returns true if the user was successfully removed.
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2/group-removeUserFromGroup
func (client *Client) RemoveUserFromGroup(ctx context.Context, groupName, userName string) (bool, error) {
	endpointUrl, err := url.JoinPath(addUserToGroup)
	if err != nil {
		return false, err
	}

	req, err := getXRequest(ctx, client, http.MethodDelete, endpointUrl, Query{
		"groupname": groupName,
		"username":  userName,
	}, BodyActors{})
	if err != nil {
		return false, err
	}

	resp, err := client.httpClient.Do(req)
	if err != nil {
		return false, err
	}

	defer resp.Body.Close()
	return resp.StatusCode == http.StatusOK, err
}

// AddProjectRoleActorsToRole
// Adds default actors to the given role. The request data should contain a list of usernames or a list of groups to add.
// https://docs.atlassian.com/software/jira/docs/api/REST/7.6.1/#api/2/role-addProjectRoleActorsToRole
func (client *Client) AddProjectRoleActorsToRole(ctx context.Context, roleId string, body BodyActors) (ActorsAPIData, error) {
	var actorsAPIData ActorsAPIData
	endpointUrl, err := url.JoinPath(allRoles, roleId, "actors")
	if err != nil {
		return actorsAPIData, err
	}

	req, err := getXRequest(ctx, client, http.MethodPost, endpointUrl, nil, body)
	if err != nil {
		return ActorsAPIData{}, err
	}

	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&actorsAPIData))
	if err != nil {
		return ActorsAPIData{}, err
	}

	defer resp.Body.Close()
	return actorsAPIData, err
}

// DeleteProjectRoleActorsFromRole
// Removes default actor from the given role.
// https://docs.atlassian.com/software/jira/docs/api/REST/7.6.1/#api/2/role-deleteProjectRoleActorsFromRole
func (client *Client) DeleteProjectRoleActorsFromRole(ctx context.Context, roleId, actor, actorName string) (int, error) {
	endpointUrl, err := url.JoinPath(allRoles, roleId, "actors")
	if err != nil {
		return NF, err
	}

	req, err := getXRequest(ctx, client, http.MethodDelete, endpointUrl, Query{
		actor: actorName,
	}, BodyActors{})
	if err != nil {
		return NF, err
	}

	resp, err := client.httpClient.Do(req)
	if err != nil {
		return NF, err
	}

	defer resp.Body.Close()
	return resp.StatusCode, err
}

func (client *Client) Myself(ctx context.Context) error {
	req, err := getRequest(ctx, client, myself, nil)
	if err != nil {
		return err
	}
	resp, err := client.httpClient.Do(req)
	if err != nil {
		return err
	}
	defer resp.Body.Close()
	return nil
}

// CreateUser creates a new user in Jira Datacenter
// Returns the created user information.
// https://developer.atlassian.com/server/jira/platform/rest/v2/api-group-user/#api-api-2-user-post
func (client *Client) CreateUser(ctx context.Context, userRequest *CreateUserRequest) (*jira.User, error) {
	var userData UsersAPIData

	// Create the URL
	endpointUrl, err := url.JoinPath(client.BaseURL, baseUserPath)
	if err != nil {
		return nil, err
	}

	uri, err := url.Parse(endpointUrl)
	if err != nil {
		return nil, err
	}

	// Create the request
	req, err := client.httpClient.NewRequest(
		ctx,
		http.MethodPost,
		uri,
		uhttp.WithJSONBody(userRequest),
		uhttp.WithAcceptJSONHeader(),
		uhttp.WithContentTypeJSONHeader(),
	)
	if err != nil {
		return nil, err
	}

	// Make the request
	resp, err := client.httpClient.Do(req, uhttp.WithJSONResponse(&userData))
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	// Convert to jira.User format
	return &jira.User{
		Self:         userData.Self,
		Key:          userData.Key,
		Name:         userData.Name,
		EmailAddress: userData.EmailAddress,
		DisplayName:  userData.DisplayName,
		Active:       userData.Active,
		TimeZone:     userData.TimeZone,
		Locale:       userData.Locale,
	}, nil
}
