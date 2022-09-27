.section .data
.section .text 
  .globl _start
  _start:
    xor %rax, %rax
    mov $10, %rax
    neg %rax 
    neg %rax
    jmp fim
   
  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
