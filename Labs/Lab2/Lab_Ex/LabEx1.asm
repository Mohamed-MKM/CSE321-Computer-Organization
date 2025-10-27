#Lab Exercise 1: Add Two Numbers
#Write a MIPS assembly program that performs the following tasks:
#Prompts the user to enter two integers.
#Reads both numbers from the console.
#Adds the two numbers together.
#Displays the result with an appropriate message.

.data 
    promptOne : .asciiz " Enter the first Number :"
    promptTwo : .asciiz " Enter the second Number :"
    resultMsg : .asciiz " The sum of the two numbers is: "
    newline   : .asciiz "\n"



.text 
 main:
    li $v0, 4                 
    la $a0, promptOne          
    syscall                    
    li $v0, 5
    syscall   
    move $t0, $v0

    li $v0, 4                 
    la $a0, promptTwo          
    syscall                    
    li $v0, 5
    syscall   
    move $t1, $v0

    add $t2, $t0, $t1

    li $v0, 4
    la $a0, resultMsg
    syscall

    li $v0, 1
    move $a0, $t2
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall


exit:
    li $v0, 10
    syscall

