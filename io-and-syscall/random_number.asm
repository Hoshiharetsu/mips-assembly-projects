#Problem Purpose: Write a MIPS program to print out a random number from 1 to 100 (inclusive).

.data   
output: .asciiz "The random number is: "

.text
.globl main

main:
    li $v0, 42      # Step 1: Generate the random number via Service 42: Random Int Range
    li $a0, 0       # Step 2: Set the ID: 0
    li $a1, 100     # Step 3: Set the upper bound to 100. Current Range: 0 - 99
    syscall         # Step 4: Execute and random number is now stored in $a0

    addi $a0, $a0, 1   # Step 5: Add 1 to the range

    move $t0, $a0      # Step 6: I had to move the random number into a temporary variable to free up $a0

    li $v0, 4          # Step 7: Print the String
    la $a0, output     # Step 8: Load the string into the $a0 that is now freed up.
    syscall

    li $v0, 1          # Step 9: Prints the random integer value
    move $a0, $t0      # Step 10: Move the stored random value from $t0 back to $a0
    syscall

    li $v0, 10         # Step 11: Exit out the program
    syscall