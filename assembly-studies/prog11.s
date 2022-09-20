.section .data
.section .text 
  .globl _start
  _start:
    xor %rax, %rax
    mov $10, %rax
    push %rax
    nop 
    mov $20, %rax 
    inc %rax
    nop 
    pop %rax
    nop 
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80 
