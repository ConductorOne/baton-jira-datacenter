package client

import (
	"context"
	"fmt"
	"net/http"
	"net/url"

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

// GET - http://{baseurl}/rest/api/2/permissions
const (
	allPermissions = "rest/api/2/permissions"
)

func NewClient() *Client {
	return &Client{
		httpClient: &uhttp.BaseHttpClient{},
	}
}

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

func getRequest(ctx context.Context, cli *Client, baseUrl, apiUrl string) (*http.Request, string, error) {
	endpointUrl := fmt.Sprintf("%s/%s", baseUrl, apiUrl)
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

// getPermissions
// Returns all permissions that are present in the Jira instance - Global, Project and the global ones added by plugins
// https://docs.atlassian.com/software/jira/docs/api/REST/9.14.0/#api/2-getAllPermissions
func (client *Client) ListAllPermissions(ctx context.Context) ([]Permission, error) {
	var permissionsData PermissionsAPIData
	req, endpointUrl, err := getRequest(ctx, client, client.BaseURL, allPermissions)
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
