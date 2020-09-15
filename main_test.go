package main

import (
	"testing"
)

func TestGetHostname(t *testing.T) {
	host := getHostname()
	if host == "" {
		t.Errorf("getHostname should not return empty, but empty value returns, %s", host)
	}
}
