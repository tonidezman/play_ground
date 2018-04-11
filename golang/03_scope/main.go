package main

import "fmt"
import "./vis"

func main() {
	fmt.Println(vis.Name)
	foo()
}

func foo() {
	fmt.Println("from foo")
}
