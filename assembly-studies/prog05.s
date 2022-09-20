.section .data
.section .text
    .globl _start
    _start:
   
    xor %rax, %rax
    not %ah

    xor %rax, %rax
    not %al

    xor %rax, %rax
    not %ax

    xor %rax, %rax
    not %rax

    movl $1, %eax
    movl $0, %ebx
    int $0x80
