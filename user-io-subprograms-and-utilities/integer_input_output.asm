#Program File: user I/O (Read input and print back to user)

.text
main:
	#Prompt user for integer to enter:
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Read the int input & save in $s0
	li $v0, 5
	syscall
	move $s0, $v0
	
	#Output the text:
	li $v0, 4
	la $a0, output
	syscall
	
	#Output the number:
	li $v0, 1
	move $a0, $s0
	syscall
	
	#Exit the program.
	li $v0, 10
	
.data
prompt: .asciiz "Please enter an integer: "
output: .asciiz "\nYou typed the number: "