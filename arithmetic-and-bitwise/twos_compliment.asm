#Program to Multiply user input by 15 and display the result

main:
    li   $v0, 4
    la   $a0, userPrompt
    syscall

    li   $v0, 5
    syscall
    move $t0, $v0          # t0 = x


    sll  $t1, $t0, 3       # t1 = 8x
    sll  $t2, $t0, 2       # t2 = 4x
    sll  $t3, $t0, 1       # t3 = 2x

    addu $t4, $t1, $t2     # t4 = 12x
    addu $t4, $t4, $t3     # t4 = 14x
    addu $t4, $t4, $t0     # t4 = 15x  (shift+add result)

    li   $t5, 15
    mult $t0, $t5
    mflo $t6               # t6 = 15x (mult result)

    li   $v0, 4
    la   $a0, messageX #Reshow x-value
    syscall

    li   $v0, 1
    move $a0, $t0
    syscall

    li   $v0, 4
    la   $a0, messageShift #Shift Output
    syscall

    li   $v0, 1
    move $a0, $t4
    syscall

    li   $v0, 4
    la   $a0, messageMult #Mult Output
    syscall

    li   $v0, 1
    move $a0, $t6
    syscall

    bne  $t4, $t6, not_equal

#Feedback on if values match:
equal:
    li   $v0, 4
    la   $a0, messageMatch
    syscall
    j    done

not_equal:
    li   $v0, 4
    la   $a0, messageNoMatch
    syscall

done:
    li   $v0, 10
    syscall
    
.data
userPrompt:     .asciiz "Provide an integer value to be multiplied by 15: \n"
messageX:       .asciiz "\nYou entered that x = "
messageShift:   .asciiz "\nExample 1: 15x results using shifts+adds = "
messageMult:    .asciiz "\nExample 2: 15x results using mult/mflo = "
messageMatch:      .asciiz "\nChecking the results: MATCH"
messageNoMatch:     .asciiz "\nChecking the results:they DO NOT match"

