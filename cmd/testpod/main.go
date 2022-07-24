package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("listening at :8080")

	// Can't beat the classic.
	http.ListenAndServe(":8080", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		fmt.Fprintln(w, "Hello, world!")
		fmt.Fprintln(w, "(version: 3)")
	}))
}
