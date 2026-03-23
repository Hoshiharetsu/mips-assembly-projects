#Problem Purpose: Write a MIPS program to prompt, read and print a floating-point number.

.data   
prompt:		.asciiz "Enter a floating-point number: "
output:		.asciiz "\n The value you entered is: "

.text
.globl main

main:
	li	$v0, 4
	la	$a0, prompt
	syscall
	
	li	$v0, 6
	syscall
	
	li	$v0, 4
	la	$a0, output
	syscall
	
	mov.s	$f12, $f0 	#Biggest Lift: locating the $fX for float registries. I had the idea from the SYSCall Function reference sheet. From there, Had to work through the 'Move Floating Points" and determined that mov.s needed to be read and printed.
	li	$v0, 2
	syscall
	
	li $v0, 10		#Exit the program
	syscall