package connector

import (
	"context"
	"crypto/rand"
	"fmt"
	"math/big"

	"github.com/conductorone/baton-jira-datacenter/pkg/client"
	v2 "github.com/conductorone/baton-sdk/pb/c1/connector/v2"
	"github.com/conductorone/baton-sdk/pkg/annotations"
	"github.com/conductorone/baton-sdk/pkg/connectorbuilder"
	"github.com/conductorone/baton-sdk/pkg/pagination"
	sdkResource "github.com/conductorone/baton-sdk/pkg/types/resource"
	jira "github.com/conductorone/go-jira/v2/onpremise"
	"github.com/grpc-ecosystem/go-grpc-middleware/logging/zap/ctxzap"
	"go.uber.org/zap"
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

// CreateAccountCapabilityDetails defines what credential options are supported by this connector.
func (u *userBuilder) CreateAccountCapabilityDetails(ctx context.Context) (*v2.CredentialDetailsAccountProvisioning, annotations.Annotations, error) {
	return &v2.CredentialDetailsAccountProvisioning{
		SupportedCredentialOptions: []v2.CapabilityDetailCredentialOption{
			v2.CapabilityDetailCredentialOption_CAPABILITY_DETAIL_CREDENTIAL_OPTION_RANDOM_PASSWORD,
		},
		PreferredCredentialOption: v2.CapabilityDetailCredentialOption_CAPABILITY_DETAIL_CREDENTIAL_OPTION_RANDOM_PASSWORD,
	}, nil, nil
}

// generateRandomPassword creates a secure random password for new user accounts.
func generateRandomPassword(length int) (string, error) {
	const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]"
	if length < 8 {
		length = 8 // Jira typically requires at least 8 characters
	}

	password := make([]byte, length)
	for i := 0; i < length; i++ {
		n, err := rand.Int(rand.Reader, big.NewInt(int64(len(charset))))
		if err != nil {
			return "", err
		}
		password[i] = charset[n.Int64()]
	}

	return string(password), nil
}

// CreateAccount provisions a new user in Jira Datacenter.
func (u *userBuilder) CreateAccount(
	ctx context.Context,
	accountInfo *v2.AccountInfo,
	credentialOptions *v2.CredentialOptions,
) (connectorbuilder.CreateAccountResponse, []*v2.PlaintextData, annotations.Annotations, error) {
	l := ctxzap.Extract(ctx)

	// Extract account information from the profile
	profile := accountInfo.Profile.AsMap()

	// Get required fields
	email, ok := profile["email"].(string)
	if !ok || email == "" {
		return nil, nil, nil, fmt.Errorf("email is required")
	}

	firstName, _ := profile["first_name"].(string)
	lastName, _ := profile["last_name"].(string)

	// Create a display name from the first and last name
	displayName := firstName
	if lastName != "" {
		displayName += " " + lastName
	}

	// If display name is empty, use email as display name
	if displayName == "" {
		displayName = email
	}

	// Generate username from email (common practice in Jira)
	username := email

	// Generate a password if needed
	var password string
	var plaintextData []*v2.PlaintextData

	if credentialOptions.GetRandomPassword() != nil {
		// Generate a random password
		length := int(credentialOptions.GetRandomPassword().GetLength())
		if length <= 0 {
			length = 12 // Default length
		}

		var err error
		password, err = generateRandomPassword(length)
		if err != nil {
			return nil, nil, nil, fmt.Errorf("failed to generate password: %w", err)
		}

		// Return the password as plaintext data
		plaintextData = append(plaintextData, &v2.PlaintextData{
			Name:        "password",
			Description: "Generated password for the new account",
			Bytes:       []byte(password),
		})
	} else {
		return nil, nil, nil, fmt.Errorf("random password is required for Jira user creation")
	}

	// Create the user request
	userRequest := &client.CreateUserRequest{
		Name:         username,
		Password:     password,
		EmailAddress: email,
		DisplayName:  displayName,
		Notification: false, // Set to false to avoid sending notification emails
	}

	// Call the API to create the user
	user, err := u.client.CreateUser(ctx, userRequest)
	if err != nil {
		l.Error("failed to create user", zap.Error(err), zap.String("email", email))
		return nil, nil, nil, fmt.Errorf("failed to create user: %w", err)
	}

	l.Info("user created successfully",
		zap.String("username", username),
		zap.String("email", email),
	)

	// Add user to the default group if available
	if u.client.DefaultGroupName != "" {
		_, err = u.client.AddUserToGroup(ctx, u.client.DefaultGroupName, username)
		if err != nil {
			l.Warn("failed to add user to default group",
				zap.String("group", u.client.DefaultGroupName),
				zap.String("username", username),
				zap.Error(err),
			)
			// Don't fail the whole operation if just the group assignment fails
		} else {
			l.Info("added user to default group",
				zap.String("group", u.client.DefaultGroupName),
				zap.String("username", username),
			)
		}
	}

	// Create a resource from the new user
	resource, err := userResource(*user)
	if err != nil {
		return nil, nil, nil, fmt.Errorf("failed to create resource for new user: %w", err)
	}

	// Return success result with the new user resource
	successResult := &v2.CreateAccountResponse_SuccessResult{
		Resource: resource,
	}

	return successResult, plaintextData, nil, nil
}
