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
	Header string  `json:"header"`
	Total  int     `json:"total"`
	Groups []Group `json:"groups"`
}

type Group struct {
	Name   string   `json:"name"`
	HTML   string   `json:"html"`
	Labels []Labels `json:"labels"`
}

type Labels struct {
	Text  string `json:"text"`
	Title string `json:"title"`
	Type  string `json:"type"`
}

type GroupMembersAPIData struct {
	Self       string      `json:"self"`
	MaxResults int         `json:"maxResults"`
	StartAt    int         `json:"startAt"`
	Total      int         `json:"total"`
	IsLast     bool        `json:"isLast"`
	Users      []GroupUser `json:"values"`
}

type AvatarUrls struct {
	Four8X48  string `json:"48x48"`
	Two4X24   string `json:"24x24"`
	One6X16   string `json:"16x16"`
	Three2X32 string `json:"32x32"`
}

type GroupUser struct {
	Self         string     `json:"self"`
	Name         string     `json:"name"`
	Key          string     `json:"key"`
	EmailAddress string     `json:"emailAddress"`
	AvatarUrls   AvatarUrls `json:"avatarUrls"`
	DisplayName  string     `json:"displayName"`
	Active       bool       `json:"active"`
	TimeZone     string     `json:"timeZone"`
}

type RolesAPIData struct {
	Self        string   `json:"self"`
	Name        string   `json:"name"`
	ID          int      `json:"id"`
	Description string   `json:"description"`
	Actors      []Actors `json:"actors"`
}

type Actors struct {
	ID          int    `json:"id"`
	DisplayName string `json:"displayName"`
	Type        string `json:"type"`
	Name        string `json:"name"`
}

type UsersAPIData struct {
	Self         string     `json:"self"`
	Key          string     `json:"key"`
	Name         string     `json:"name"`
	EmailAddress string     `json:"emailAddress"`
	AvatarUrls   AvatarUrls `json:"avatarUrls"`
	DisplayName  string     `json:"displayName"`
	Active       bool       `json:"active"`
	Deleted      bool       `json:"deleted"`
	TimeZone     string     `json:"timeZone"`
	Locale       string     `json:"locale"`
}

type GroupRolesAPIData struct {
	Header string  `json:"header"`
	Total  int     `json:"total"`
	Groups []Group `json:"groups"`
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
	ID         int    `json:"id"`
	Self       string `json:"self"`
	Holder     Holder `json:"holder"`
	Permission string `json:"permission"`
}
type Holder struct {
	Type string `json:"type"`
}
