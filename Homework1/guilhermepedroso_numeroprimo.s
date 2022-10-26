.section .data
  entrada:
     .int 991 

  primo:
    .ascii "Primo\n"
  final_primo:
    .equ tamanho_primo, final_primo - primo

  nao_primo:
    .ascii "Nao primo\n"
  final_nao_primo:
    .equ tamanho_nao_primo, final_nao_primo - nao_primo
  
.section .text
  .globl _start
  _start:

    xor %rax, %rax
    xor %rbx, %rbx
    xor %rcx, %rcx
    xor %rdx, %rdx
    xor %rdi, %rdi 
    movl entrada, %eax
    movl $1, %ecx 
    div %ecx
    inc %edi
    call laco
    jmp fim    

  laco: 
    inc %ecx
    push %rax
    div %ecx 
    cmp $0, %edx    
      je contador
      pop %rax
      xor %edx, %edx
      cmp entrada, %ecx
        je valida 
        jne laco

  contador:
    inc %edi
    pop %rax
    cmp entrada, %ecx
      je valida
      jne laco
    
  valida:
    cmp $2, %edi
      je numero_primo
      jne numero_nao_primo
      
  numero_primo:
    movl $4, %eax
    movl $1, %ebx
    movl $primo, %ecx
    movl $tamanho_primo, %edx
    int $0x80
    ret

  numero_nao_primo: 
    movl $4, %eax
    movl $1, %ebx
    movl $nao_primo, %ecx
    movl $tamanho_nao_primo, %edx
    int $0x80   
    ret    

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
