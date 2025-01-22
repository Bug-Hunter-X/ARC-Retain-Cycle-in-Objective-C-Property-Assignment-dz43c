# Objective-C ARC Retain Cycle Bug

This repository demonstrates a common subtle bug in Objective-C related to Automatic Reference Counting (ARC) and retain cycles.  The bug involves improper handling of object ownership leading to memory leaks.

The `bug.m` file contains the problematic code, showcasing how a retain cycle can occur when assigning properties. The `bugSolution.m` file provides a corrected version using weak references to break the cycle.

## How to Reproduce
1. Clone the repository.
2. Open the project in Xcode.
3. Run the application. Observe the memory usage (leaks in `bug.m`, no leaks in `bugSolution.m`).

## Solution
The solution involves using weak references (`weak`) to prevent the retain cycle.  By doing so, the object does not increase the retain count of the property it references, thus preventing a memory leak.