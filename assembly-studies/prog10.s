.section .data
.section .text
  .globl _start
  _start: 
    mov $10, %rax
    mov $2, %rcx 
    div %rcx
    cmp $0, %rdx 
    je par
    jne impar

  par:
    mov $200, %ebx
    jmp fim
  
  impar: 
    mov $100, %ebx
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
