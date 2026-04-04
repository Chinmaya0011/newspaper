package main

import "net/http"

func main() {
    url := "https://admin_user:P@ssw0rd123!@artifactory.example.com/api"
    http.Get(url)
}
