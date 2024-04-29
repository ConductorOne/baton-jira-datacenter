package connector

import (
	"context"

	jira "github.com/andygrunwald/go-jira/v2/onpremise"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type userBuilder struct {
	client *client.Client
}

func userResource(u jira.User) (*v2.Resource, error) {
	var userTraitOpts []sdkResource.UserTraitOption

	if u.Key == "" {
		return nil, nil
	}

	if u.EmailAddress != "" {
		userTraitOpts = append(userTraitOpts, sdkResource.WithEmail(u.EmailAddress, true))
	}

	ret, err := sdkResource.NewUserResource(u.DisplayName, userResourceType, u.Key, userTraitOpts)
	if err != nil {
		return nil, err
	}

	return ret, nil
}

func (o *userBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return userResourceType
}

// List returns all the users from the database as resource objects.
// Users include a UserTrait because they are the 'shape' of a standard user.
func (o *userBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

// Entitlements always returns an empty slice for users.
func (o *userBuilder) Entitlements(_ context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

// Grants always returns an empty slice for users since they don't have any entitlements.
func (o *userBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func newUserBuilder(client *client.Client) *userBuilder {
	return &userBuilder{
		client: client,
	}
}
