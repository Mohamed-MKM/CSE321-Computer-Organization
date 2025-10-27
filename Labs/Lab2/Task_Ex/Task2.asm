#Task 2: Write an assembly language program using MIPS architecture to enter n integers from user and determine 
#and display the average of n numbers where number of integer n is entered by user. Program should include
#prompt message for user inputs and appropriate message for displayed result.

.data
    genPrompt : .asciiz "Enter number of integers to calculate their average Starting From 1: \n"
    inputPrompt : .asciiz "Enter number: "
    ResPrompt : .asciiz "The average is : "
    newline : .asciiz "\n "

.text
    main:
        li $v0, 4
        la $a0, genPrompt
        syscall
        li $v0, 5
        syscall
        move $t0, $v0  #n
        li $t1, 1     # i=1
        move $t2 , $zero  #sum

        


    while :
        bgt $t1, $t0, endWhile
        addu $t2 , $t2 ,$t1
        addi $t1,$t1,1 
        j while


    endWhile:   

    li $v0, 4
    la $a0, ResPrompt
    syscall

    div $t2, $t0
    mflo $t3

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 4
    la $a0, newline
    syscall 

    exit: 
        li $v0, 10
        syscall

