# MIPS Assembly: Input/Output and System Calls

## Overview
This collection of programs demonstrates the use of system calls in MIPS assembly for performing input/output operations, random number generation, and program control.

These examples focus on how high-level operations such as printing, user input, and timing are implemented at the assembly level using registers and syscalls.

---

## Programs Included

### Random Number Generator
Generates and prints a random integer within a specified range using syscall 42.

### Sleep Program
Pauses execution for a specified duration before exiting.

### Floating-Point Input/Output
Prompts the user for a floating-point number and displays the result.

### String Input and Output
Accepts user input as a string and outputs a formatted response.

---

## Concepts Demonstrated

- MIPS system calls
- Register usage (`$v0`, `$a0`, `$t0`, `$f0`, `$f12`)
- Integer and floating-point operations
- Memory allocation for input buffers
- Program flow control

---

## Why This Matters

These programs demonstrate how basic user interaction and system-level operations are implemented at a low level.

---

## What I Learned

- How to use syscalls to interact with the system
- Differences between integer and floating-point registers
- How data moves between memory and registers

---

## How to Run

Use MARS or SPIM to assemble and run each program.
