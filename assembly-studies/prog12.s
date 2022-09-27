.section .data
.section .text 
  .globl _start
  _start:

    xor %rax, %rax
    xor %rbx, %rbx
    mov $10, %rax
    mov $19, %rbx
    inc %rbx
    xchg %rbx, %rax
    jmp fim
   

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80  
