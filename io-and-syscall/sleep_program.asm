#Problem Purpose: Write a MIPS program which sleeps for 4 seconds before exiting.

.data   #I wanted to add some messages so the user knows something is happening (and keep practicing with outputs and the .data)
progstart: .asciiz "Begin program shut down. \n"
progend: .asciiz "The program is closing. Good bye."

.text
.globl main

main:
	li $v0, 4		#Using Syscall 4 to print my string
	la $a0, progstart	#Print the message to the user.
	syscall
	
	li $a0, 4000		#I'm done with $a0 for the message, so I can use for the 4 seconds.
	li $v0, 32		#Loading the Sleep syscall into $v0
	syscall
	
	li $v0, 4		#Using Syscall 4 again for progend. 
	la $a0, progend		#Prints the program end to the user.
	syscall
	
	li $v0, 10		#Exit the program
	syscall