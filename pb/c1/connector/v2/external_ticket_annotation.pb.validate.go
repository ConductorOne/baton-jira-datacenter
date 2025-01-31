// Code generated by protoc-gen-validate. DO NOT EDIT.
// source: c1/connector/v2/external_ticket_annotation.proto

package v2

import (
	"bytes"
	"errors"
	"fmt"
	"net"
	"net/mail"
	"net/url"
	"regexp"
	"sort"
	"strings"
	"time"
	"unicode/utf8"

	"google.golang.org/protobuf/types/known/anypb"
)

// ensure the imports are used
var (
	_ = bytes.MinRead
	_ = errors.New("")
	_ = fmt.Print
	_ = utf8.UTFMax
	_ = (*regexp.Regexp)(nil)
	_ = (*strings.Reader)(nil)
	_ = net.IPv4len
	_ = time.Duration(0)
	_ = (*url.URL)(nil)
	_ = (*mail.Address)(nil)
	_ = anypb.Any{}
	_ = sort.Sort
)

// Validate checks the field values on IssueTypeProject with the rules defined
// in the proto definition for this message. If any rules are violated, the
// first error encountered is returned, or nil if there are no violations.
func (m *IssueTypeProject) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on IssueTypeProject with the rules
// defined in the proto definition for this message. If any rules are
// violated, the result is a list of violation errors wrapped in
// IssueTypeProjectMultiError, or nil if none found.
func (m *IssueTypeProject) ValidateAll() error {
	return m.validate(true)
}

func (m *IssueTypeProject) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for ProjectId

	// no validation rules for ProjectName

	// no validation rules for ProjectKey

	if len(errors) > 0 {
		return IssueTypeProjectMultiError(errors)
	}

	return nil
}

// IssueTypeProjectMultiError is an error wrapping multiple validation errors
// returned by IssueTypeProject.ValidateAll() if the designated constraints
// aren't met.
type IssueTypeProjectMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m IssueTypeProjectMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m IssueTypeProjectMultiError) AllErrors() []error { return m }

// IssueTypeProjectValidationError is the validation error returned by
// IssueTypeProject.Validate if the designated constraints aren't met.
type IssueTypeProjectValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e IssueTypeProjectValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e IssueTypeProjectValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e IssueTypeProjectValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e IssueTypeProjectValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e IssueTypeProjectValidationError) ErrorName() string { return "IssueTypeProjectValidationError" }

// Error satisfies the builtin error interface
func (e IssueTypeProjectValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sIssueTypeProject.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = IssueTypeProjectValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = IssueTypeProjectValidationError{}
