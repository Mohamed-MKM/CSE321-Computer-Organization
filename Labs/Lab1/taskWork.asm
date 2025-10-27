#Name:   Your Name
#ID:     Your ID
#Course: CSE321-Computer-Organization

.data
    Name_msg: .asciiz "Name : Mohamed Mostafa \n"
    ID_msg:   .asciiz "ID   : 20812022200781 \n"
    Course_msg: .asciiz "Course: CSE321-Computer-Organization \n"

.text 
     main:
        li $v0,4 
        la $a0, Name_msg
        syscall
        li $v0,4
        la $a0, ID_msg
        syscall
        li $v0,4
        la $a0, Course_msg
        syscall
        li $v0,10
        syscall
