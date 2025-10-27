#req print Hello World program
.data #data Segment 
 hello_msg: .asciiz "Hello World"


.text #text Segment
main:
    li $v0, 4
    la $a0 , hello_msg
    syscall
    li $v0, 10
    syscall
