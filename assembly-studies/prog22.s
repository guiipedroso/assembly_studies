.section .data 
  value: 
      .int 1

.section .text 
    .globl _start
    _start:

    nop
    movl  value, %ecx

    mov $1, %rax 
    mov $0, %rbx
    int $0x80
