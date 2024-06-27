package client

type PermissionsAPIData struct {
	Permissions map[string]any `json:"Permissions,omitempty"`
	Roles       []Permission   `json:"Roles,omitempty"`
}

type Permission struct {
	Key         string `json:"key"`
	Name        string `json:"name"`
	Type        string `json:"type"`
	Description string `json:"description"`
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
