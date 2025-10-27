#Task 3: Write an assembly language program using MIPS architecture to implement switch...case.

.data
    promptMsg : .asciiz "Enter a number between 1 and 4: "
    case1Msg  : .asciiz "You selected case 1.\n"
    case2Msg  : .asciiz "You selected case 2.\n"
    case3Msg  : .asciiz "You selected case 3.\n"
    case4Msg  : .asciiz "You selected case 4.\n"
    defaultMsg: .asciiz "Invalid selection. Please enter a number between 1 and 4.\n"

.text
    main:
    li $v0, 4
    la $a0, promptMsg
    syscall
    li $v0, 5
    syscall
    move $t0, $v0  
    switch:

    beq $t0, 1, caseOne
    beq $t0, 2, caseTwo
    beq $t0, 3, caseThree
    beq $t0, 4, caseFour
    j defaultCase

    caseOne: 

    li $v0, 4
    la $a0, case1Msg
    syscall
    j exit

    caseTwo: 
    li $v0, 4
    la $a0, case2Msg
    syscall
    j exit
    
    caseThree: 
    li $v0, 4
    la $a0, case3Msg
    syscall
    j exit

    caseFour: 
    li $v0, 4
    la $a0, case4Msg
    syscall
    j exit

    defaultCase:
    li $v0, 4
    la $a0, defaultMsg
    syscall

    exit :
    li $v0, 10
    syscall

