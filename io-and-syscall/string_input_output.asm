#Problem Purpose: Write a MIPS program to prompt, read and print a floating-point number.

.data   
prompt:		.asciiz "What is your favorite type of pie?  "
outputOne:	.asciiz "\n So you like "	#Concatination of the statement, Part 1
outputTwo:	.asciiz " pie."			#Concatination of the statement, Part 2

input:		.space 81
inputSize:	.word 80

.text
.globl main

main:
	li	$v0, 4		#Asks the user for input about pie.
	la	$a0, prompt
	syscall
	
	li	$v0, 8		#Collecting the user's pie flavor.
	la	$a0, input
	lw	$a1, inputSize
	syscall
	
	#Feedback to the User:
	li	$v0, 4		#Sentence Part 1 output
	la	$a0, outputOne
	syscall
	
	li	$v0, 4		#Calling the user's input to add to the statement
	la	$a0, input
	syscall
	
	li	$v0, 4		#Finish the second part of the output sentence.
	la	$a0, outputTwo
	syscall
	
	li $v0, 10		#Exit the program
	syscall