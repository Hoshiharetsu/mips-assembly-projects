#Program to solve user input for: x^3 + 2x^2 + 3x + 4 using synthetic division.

.main:
	#Collect Input:
	li $v0, 4
	la $a0, promptUser
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	#Start Equation:
	#Running value/leading coefficient 1
	li $t1, 1	#t1 = 1
	
	mul $t1, $t1, $t0
	addi $t1, $t1, 2
	
	mul $t1, $t1, $t0
	addi $t1, $t1, 3
	
	mul $t1, $t1, $t0
	addi $t1, $t1, 4
	
	#Print the output and the values:
	li $v0, 4
	la $a0, messageUpdate
	syscall
	
	li $v0, 4
	la $a0, messageRemind
	syscall
	
	li   $v0, 1
    	move $a0, $t0
    	syscall

    	li   $v0, 4
    	la   $a0, messageOutput
    	syscall

    	li   $v0, 1
    	move $a0, $t1
    	syscall


	li   $v0, 10
	syscall

.data
promptUser: .asciiz "Please enter a value for x: "
messageUpdate: .asciiz "\nSynthetic Division Process: "
messageRemind: .asciiz "\n You entered x = "
messageOutput: .asciiz "\n Therefore, f(x) = "
