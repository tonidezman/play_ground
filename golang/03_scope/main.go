package main

import "fmt"
import "./vis"

func main() {
	fmt.Println(vis.Name)
	foo()
	vis.PrintName()
}

func foo() {
	fmt.Println("from foo")
}
