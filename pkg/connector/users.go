package connector

import (
	"context"

	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"
	jira "github.com/conductorone/go-jira/v2/onpremise"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
)

type userBuilder struct {
	client *client.Client
}

func userResource(u jira.User) (*v2.Resource, error) {
	var (
		userTraitOpts []sdkResource.UserTraitOption
		userStatus    v2.UserTrait_Status_Status = v2.UserTrait_Status_STATUS_ENABLED
	)
	firstName, lastName := splitFullName(u.DisplayName)
	profile := map[string]interface{}{
		"user_id":    u.Key,
		"user_name":  u.Name,
		"email":      u.EmailAddress,
		"login":      u.EmailAddress,
		"first_name": firstName,
		"last_name":  lastName,
	}

	switch u.Active {
	case true:
		userStatus = v2.UserTrait_Status_STATUS_ENABLED
	case false:
		userStatus = v2.UserTrait_Status_STATUS_DISABLED
	}

	userTraitOpts = []sdkResource.UserTraitOption{
		sdkResource.WithUserProfile(profile),
		sdkResource.WithStatus(userStatus),
		sdkResource.WithUserLogin(u.EmailAddress),
		sdkResource.WithEmail(u.EmailAddress, true),
	}
	displayName := u.DisplayName
	if displayName == "" {
		displayName = u.EmailAddress
	}

	if u.Key == "" {
		return nil, nil
	}

	if u.EmailAddress != "" {
		userTraitOpts = append(userTraitOpts, sdkResource.WithEmail(u.EmailAddress, true))
	}

	ret, err := sdkResource.NewUserResource(displayName, userResourceType, u.Key, userTraitOpts)
	if err != nil {
		return nil, err
	}

	return ret, nil
}

func (u *userBuilder) ResourceType(ctx context.Context) *v2.ResourceType {
	return userResourceType
}

// List returns all the users from the database as resource objects.
// Users include a UserTrait because they are the 'shape' of a standard user.
func (u *userBuilder) List(ctx context.Context, parentResourceID *v2.ResourceId, pToken *pagination.Token) ([]*v2.Resource, string, annotations.Annotations, error) {
	var ret []*v2.Resource
	users, err := u.client.ListAllUsers(ctx)
	if err != nil {
		return nil, "", nil, err
	}

	for _, user := range users {
		res, err := userResource(user)
		if err != nil {
			return nil, "", nil, err
		}

		ret = append(ret, res)
	}

	return ret, "", nil, nil
}

// Entitlements always returns an empty slice for users.
func (u *userBuilder) Entitlements(_ context.Context, resource *v2.Resource, _ *pagination.Token) ([]*v2.Entitlement, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

// Grants always returns an empty slice for users since they don't have any entitlements.
func (u *userBuilder) Grants(ctx context.Context, resource *v2.Resource, pToken *pagination.Token) ([]*v2.Grant, string, annotations.Annotations, error) {
	return nil, "", nil, nil
}

func newUserBuilder(client *client.Client) *userBuilder {
	return &userBuilder{
		client: client,
	}
}
