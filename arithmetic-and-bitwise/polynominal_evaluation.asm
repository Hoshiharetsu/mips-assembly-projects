#Program to compute (4x/3)*y with user input for x and y.
main:

    li   $v0, 4
    la   $a0, promptUserX #Collect x-value
    syscall

    li   $v0, 5
    syscall
    move $t0, $v0      # set t0 = x-value

    li   $v0, 4
    la   $a0, promptUserY #Collect y-value
    syscall

    li   $v0, 5
    syscall
    move $t1, $v0      # Set t1 = y-value

    sll  $t2, $t0, 2   # t2 = 4x (shift left 2 bits)

    mul  $t2, $t2, $t1 # t2 = 4xy

    li   $t3, 3
    div  $t2, $t3
    mflo $t4           # t4 = (4xy)/3

    li   $v0, 4
    la   $a0, messageUpdate
    syscall

    li   $v0, 1
    move $a0, $t4
    syscall

    li   $v0, 10
    syscall

.data
promptUserX: .asciiz "Please enter a value for x: "
promptUserY: .asciiz "Please enter a value for y: "
messageUpdate: .asciiz "\n Result for (4x/3) * y: "
messageOutput: .asciiz "\n Therefore, the final value is: "