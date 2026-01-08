package main

import (
	"fmt"
	"os"
	//"strings"
)

func main() {
	input, err := os.ReadFile("problem-files/day1.txt")
	if err != nil {
		panic(err)
	}

	fmt.Printf("input: %v\n", input)
}
