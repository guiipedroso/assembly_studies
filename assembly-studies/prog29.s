.section .data
  variavel:
    .int 11

.section .text
  .globl _start
  _start:
    xor %rax, %rax
    xor %rbx, %rbx
    xor %rcx, %rcx
    xor %rdx, %rdx 
    xor %rdi, %rdi

    mov variavel, %eax
    mov variavel, %ebx
    mov variavel, %ecx
    jmp repeticao

  repeticao:
    div %rcx
    cmp $0, %rdx
    je contar
    dec %ecx 
    mov %ebx, %eax
    jne repeticao

  contar:
    inc %edi
    dec %ecx 
    mov %ebx, %eax
    jmp repeticao 

  fim:
    movl $0, %ebx
    movl $1, %eax
    int $0x80
