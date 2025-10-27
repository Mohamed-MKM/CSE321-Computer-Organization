#Lab Exercise 2: If Condition Example
#Write a MIPS assembly program that reads an integer from the user and 
#checks whether it is positive, negative, or zero. Display an appropriate message for each case.
.data 
    promptMsg : .asciiz "Enter an integer: "
    posMsg    : .asciiz "The number is positive.\n"
    negMsg    : .asciiz "The number is negative.\n"
    zeroMsg   : .asciiz "The number is zero.\n"
    newline   : .asciiz "\n"

.text
    main:
        li $v0, 4                 
        la $a0, promptMsg        
        syscall                  
        li $v0, 5                 
        syscall 
        move $t0, $v0 

        if:
        bne $t0, $zero, elsif

        la $a0, zeroMsg
        j endif

        elsif:
        bltz $t0, else
       
        la $a0, posMsg
        j endif

        else:
        la $a0, negMsg

        endif:
        li $v0, 4
        syscall

        exit:
        li $v0, 10
        syscall

