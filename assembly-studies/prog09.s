.section .data
.section .text 
  .globl _start
  _start:

    mov $202, %rax 
    mov $40, %rcx
    div %rcx

    mov $1, %rax
    mov $0, %rbx
    int $0x80
