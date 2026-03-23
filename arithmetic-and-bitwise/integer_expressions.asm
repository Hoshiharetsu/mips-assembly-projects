# Program to Computer 2's Compliment using a User Input Integer

main:
    li   $v0, 4
    la   $a0, userPrompt   #Collect user input
    syscall

    li   $v0, 5
    syscall
    move $t0, $v0          # $t0 = user input

    li   $t1, 0xFFFFFFFF   # value to flip all bits (~x)
    xor  $t2, $t0, $t1     # $t2 = ~x
    
    addi $t2, $t2, 1       # $t2 = (~x) + 1

    li   $v0, 4
    la   $a0, userOriginal #Feedback to user
    syscall

    li   $v0, 1
    move $a0, $t0
    syscall

    li   $v0, 4
    la   $a0, twoResult 
    syscall

    li   $v0, 1
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
    
.data
userPrompt:     .asciiz "Enter an integer to compute its 2's complement: "
userOriginal:    .asciiz "\n This is your original number: "
twoResult:  .asciiz "\nThe 2's complement is: "
