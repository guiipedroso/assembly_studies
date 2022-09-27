.include "prog21_1.s"
.section .data
.section .text
  .globl _start
  _start:
    xor %rax, %rax
    xor %rbx, %rbx                        
    xor %rcx, %rcx
    xor %rdx, %rdx
    inc %rax                        
    inc %rbx                        
    inc %rcx                        
    inc %rdx                        
    push %rax
    push %rbx
    push %rcx
    push %rdx
    call funcao
    pop %rax
    pop %rbx
    pop %rcx
    pop %rdx
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
