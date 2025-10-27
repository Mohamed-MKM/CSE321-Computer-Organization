#Task 1: Write an assembly language program using MIPS architecture to enter four integers from user and determine and
# display the average of four numbers.
 #Program should include prompt message for user inputs and appropriate message for displayed result.

 .data 
    genPrompt : .asciiz "Enter Four Number to Calculate their average \n"
    promptOne : .asciiz "Enter First Number: " 
    promptTwo : .asciiz "Enter Second Number: " 
    promptThree : .asciiz "Enter Third Number: " 
    promptFour : .asciiz "Enter Fourth Number: " 
    ResPrompt : .asciiz "The average is : "
    newline : .asciiz "\n "

    .text
        main :
            li $v0, 4
            la $a0, genPrompt
            syscall

            li $v0, 4
            la $a0, promptOne
            syscall
            li $v0,5
            syscall
            move $t0,$v0

            li $v0, 4
            la $a0, promptTwo
            syscall
            li $v0,5
            syscall
            move $t1,$v0

            li $v0, 4
            la $a0, promptThree
            syscall
            li $v0,5
            syscall
            move $t2,$v0

            li $v0, 4
            la $a0, promptFour
            syscall
            li $v0,5
            syscall
            move $t3,$v0

            add $t4,$t0,$t1
            add $t5,$t2,$t3
            add $t6,$t4,$t5
            div $t7,$t6,4

            li $v0, 4
            la $a0, ResPrompt
            syscall
            li $v0, 1
            move $a0, $t7
            syscall

            li $v0, 4
            la $a0, newline
            syscall

            exit:
            li $v0, 10
            syscall

            


    
 