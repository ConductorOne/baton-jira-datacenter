package client

type PermissionsAPIData struct {
	Permissions map[string]any `json:"Permissions,omitempty"`
	Roles       []Permission   `json:"Roles,omitempty"`
}

type Permission struct {
	Key         string `json:"key,omitempty"`
	Name        string `json:"name,omitempty"`
	Type        string `json:"type,omitempty"`
	Description string `json:"description,omitempty"`
}

type GroupsAPIData struct {
	Header string  `json:"header,omitempty"`
	Total  int     `json:"total,omitempty"`
	Groups []Group `json:"groups,omitempty"`
}

type Group struct {
	Name   string   `json:"name,omitempty"`
	HTML   string   `json:"html,omitempty"`
	Labels []Labels `json:"labels,omitempty"`
}

type Labels struct {
	Text  string `json:"text,omitempty"`
	Title string `json:"title,omitempty"`
	Type  string `json:"type,omitempty"`
}

type GroupMembersAPIData struct {
	Self       string      `json:"self,omitempty"`
	MaxResults int         `json:"maxResults,omitempty"`
	StartAt    int         `json:"startAt,omitempty"`
	Total      int         `json:"total,omitempty"`
	IsLast     bool        `json:"isLast,omitempty"`
	Users      []GroupUser `json:"values,omitempty"`
}

type AvatarUrls struct {
	Four8X48  string `json:"48x48"`
	Two4X24   string `json:"24x24"`
	One6X16   string `json:"16x16"`
	Three2X32 string `json:"32x32"`
}

type GroupUser struct {
	Self         string     `json:"self,omitempty"`
	Name         string     `json:"name,omitempty"`
	Key          string     `json:"key,omitempty"`
	EmailAddress string     `json:"emailAddress,omitempty"`
	AvatarUrls   AvatarUrls `json:"avatarUrls,omitempty"`
	DisplayName  string     `json:"displayName,omitempty"`
	Active       bool       `json:"active,omitempty"`
	TimeZone     string     `json:"timeZone,omitempty"`
}

type RolesAPIData struct {
	Self        string   `json:"self,omitempty"`
	Name        string   `json:"name,omitempty"`
	ID          int      `json:"id,omitempty"`
	Description string   `json:"description,omitempty"`
	Actors      []Actors `json:"actors,omitempty"`
}

type Actors struct {
	ID          int    `json:"id,omitempty"`
	DisplayName string `json:"displayName,omitempty"`
	Type        string `json:"type,omitempty"`
	Name        string `json:"name,omitempty"`
}

type UsersAPIData struct {
	Self         string     `json:"self,omitempty"`
	Key          string     `json:"key,omitempty"`
	Name         string     `json:"name,omitempty"`
	EmailAddress string     `json:"emailAddress,omitempty"`
	AvatarUrls   AvatarUrls `json:"avatarUrls,omitempty"`
	DisplayName  string     `json:"displayName,omitempty"`
	Active       bool       `json:"active,omitempty"`
	Deleted      bool       `json:"deleted,omitempty"`
	TimeZone     string     `json:"timeZone,omitempty"`
	Locale       string     `json:"locale,omitempty"`
}

type GroupRolesAPIData struct {
	Header string  `json:"header,omitempty"`
	Total  int     `json:"total,omitempty"`
	Groups []Group `json:"groups,omitempty"`
}

type PermissionSchemesAPIData struct {
	PermissionSchemes []PermissionSchemes `json:"permissionSchemes,omitempty"`
}

type PermissionSchemes struct {
	Expand      string        `json:"expand,omitempty"`
	ID          int           `json:"id,omitempty"`
	Self        string        `json:"self,omitempty"`
	Name        string        `json:"name,omitempty"`
	Description string        `json:"description,omitempty"`
	Permissions []Permissions `json:"permissions,omitempty"`
}

type Permissions struct {
	ID         int    `json:"id,omitempty"`
	Self       string `json:"self,omitempty"`
	Holder     Holder `json:"holder,omitempty"`
	Permission string `json:"permission,omitempty"`
}
type Holder struct {
	Type        string      `json:"type,omitempty"`
	Parameter   string      `json:"parameter,omitempty"`
	ProjectRole ProjectRole `json:"projectRole,omitempty"`
}

type ProjectRole struct {
	Self        string `json:"self,omitempty"`
	Name        string `json:"name,omitempty"`
	Id          int    `json:"id,omitempty"`
	Description string `json:"description,omitempty"`
}

type BodyActors struct {
	Group []string `json:"group,omitempty"`
	User  []string `json:"user,omitempty"`
	Name  string   `json:"name,omitempty"`
}

type ActorsAPIData struct {
	Self        string   `json:"self,omitempty"`
	Name        string   `json:"name,omitempty"`
	ID          int      `json:"id,omitempty"`
	Description string   `json:"description,omitempty"`
	Actors      []Actors `json:"actors,omitempty"`
}
