.section .data
.section .text 
  .globl _start
  _start:

    xor %rax, %rax 
    not %rax 
    sub $113, %al

    xor %rax, %rax 
    not %rax 
    sub $113, %ah

    xor %rax, %rax 
    add $113, %ah


    movl $1, %eax 
    movl $0, %ebx
    int $0x80 
