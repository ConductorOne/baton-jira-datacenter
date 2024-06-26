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
