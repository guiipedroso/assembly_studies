.section .data
.section .text
  .globl _start
  _start:
    
    mov $11, %rax 
    mov $10, %rdx
    mul %rdx

    mov $1, %rax
    mov $0, %rbx
    int $0x80
