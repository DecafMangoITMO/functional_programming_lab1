package main

import (
	"fmt"
	"math/big"
)

func factorial(n int64) *big.Int {
	result := big.NewInt(1)
	current := big.NewInt(1)

	for i := int64(2); i <= n; i++ {
		current.SetInt64(i)
		result.Mul(result, current)
	}

	return result
}

func main() {
	var gridSize int64
	fmt.Scan(&gridSize)

	result := big.NewInt(0);
	result.Add(result, factorial(2 * gridSize))
	result.Div(result, factorial(gridSize))
	result.Div(result, factorial(gridSize))

	fmt.Println(result)
}