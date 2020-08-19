package main

import "net/http"

func main() {
    http.HandleFunc("/hello", helloHandler)
    http.ListenAndServe(":8080", nil)
}

func helloHandler(w http.ResponseWriter, r *http.Request) {
    w.Write([]byte(`{"hello":"world"}`))
}
