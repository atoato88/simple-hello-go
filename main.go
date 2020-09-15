package main

import (
	"fmt"
	"os"
)

func getHostname() string {
	host, _ := os.Hostname()
	return host
}

func main() {
	hostname := getHostname()
	fmt.Println("Hello from", hostname)
}
