package main

import "fmt"
import "./winnie"

func main() {
	for i := 0; i < 100; i++ {
		fmt.Printf("Tonko: %d", i)
		fmt.Println(winniepooh.BearName)
	}
}
