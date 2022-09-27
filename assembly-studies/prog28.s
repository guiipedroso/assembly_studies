.section .data 
  value:
    .int 10

  par:
    .ascii "Par\n"
  final_par:
    .equ tamanho_par, final_par - par
  

  impar:
    .ascii "Impar\n"
  final_impar:
    .equ tamanho_impar, final_impar - impar

.section .text
  .globl _start
  _start:
    xor %rax, %rax
    xor %rbx, %rbx 
    xor %rcx, %rcx
    xor %rdx, %rdx
    
    mov value, %eax
    mov $2, %rcx
    div %rcx
    cmp $0, %rdx
    je numero_par
    jne numero_impar

    numero_par:
      movl $4, %eax
      movl $1, %ebx
      movl $par, %ecx
      movl $tamanho_par, %edx
      int $0x80
      jmp fim
    
    numero_impar:
      movl $4, %eax
      movl $1, %ebx
      movl $impar, %ecx
      movl $tamanho_impar, %edx
      int $0x80
      jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
