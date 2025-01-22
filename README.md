# Ada: Unexpected Array Behavior - Shallow Copies

This example demonstrates an often overlooked aspect of Ada arrays: assignments create shallow copies, not deep copies.  Therefore, modifying the original array after assignment also affects the copy.

## Bug Description

The code initializes two arrays, `A` and `B`. It assigns the value of `A` to `B`. The code then modifies `A`, which unexpectedly also changes `B`. This is because both `A` and `B` refer to the same underlying memory location after the assignment.

## How to Reproduce

Compile and run the `bug.ada` file. The output will show that modifying `A` also changes `B`, which is counterintuitive for users unfamiliar with this behavior.

## Solution

The provided solution (`bugSolution.ada`) demonstrates how to create a deep copy to prevent this issue. Instead of a direct assignment, we loop to copy each element individually to create a completely separate copy.

## Note

This subtlety is crucial to avoid unexpected behavior in Ada programs.
