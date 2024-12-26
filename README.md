# Julia Bug Report: Unexpected Behavior with Floating-Point Numbers in Conditional Statements

This repository demonstrates an unexpected behavior in Julia when using floating-point numbers in conditional statements.  The issue occurs when comparing floating-point numbers to zero within an `if` condition.

## Bug Description

A simple function designed to square positive numbers and return 0 for non-positive numbers exhibits different behavior depending on whether the input is an integer or a floating-point number.  Specifically, the comparison to zero seems to behave inconsistently for very small values near zero. 

## Reproduction Steps
1. Run the code in `bug.jl`.
2. Observe the output for different inputs (integers and floating-point numbers close to 0).

## Expected Behavior
The function should return 0 for inputs less than or equal to 0, regardless of whether the input is an integer or a floating-point number.

## Actual Behavior
The function returns 0 for integer inputs less than or equal to 0, but may not return 0 for some very small floating-point numbers that are technically non-positive.

## Solution
The solution in `bugSolution.jl` uses `isapprox(x,0)` to handle floating point comparison more accurately around zero. 
