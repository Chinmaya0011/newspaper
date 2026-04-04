package main

import (
    "encoding/base64"
    "fmt"
)

func main() {
    encoded := "U3VwZXJTZWNyZXQxMjMh"
    decoded, _ := base64.StdEncoding.DecodeString(encoded)
    fmt.Println(string(decoded))
}
