package main

import (
	"fmt"
	"github.com/google/uuid"
)

func main() {
	u1 := uuid.Must(uuid.NewRandom())
	fmt.Printf("%s", u1)
}
