package main

import (
	"fmt"
	"os"
	//"strings"
)

func main() {
	input, err := os.ReadFile("solutions/day01/input.txt")
	if err != nil {
		panic(err)
	}

	fmt.Printf("input: %v\n", input)
}
