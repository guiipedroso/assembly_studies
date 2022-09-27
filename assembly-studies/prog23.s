.section .data
    value:
        .int 1
.section .text 
  .globl _start
  _start:
    nop 
    movl $100, %eax
    movl %eax, value
      inc %eax
    movl value, %eax
  
    mov $1, %rax
    mov $0, %rbx
    int $0x80
