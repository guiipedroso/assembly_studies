.section .data

  ip:
    .int 1, 9, 2, 1, 6, 8, 0, 0, 0, 1, 7, 4

  valido:
    .ascii "IP valido\n"
  final_valido:
    .equ tamanho_valido, final_valido - valido

  nao_valido:
    .ascii "IP invalido\n"
  final_nao_valido:
    .equ tamanho_nao_valido, final_nao_valido - nao_valido

.section .text
  .globl _start 
  _start:

  movl $-1, %edi

laco:
  inc %edi 
  movl ip(, %edi, 4), %ebx
  cmp $11, %edi
  je fim
  jne laco

  movl $4, %eax
  movl $1, %ebx
  movl $valido, %ecx
  movl $tamanho_valido, %edx
  int $0x80

  movl $4, %eax
  movl $1, %ebx
  movl $nao_valido, %ecx
  movl $tamanho_nao_valido, %edx 
  int $0x80 

fim:
  movl $1, %eax
  movl $0, %ebx
  int $0x80
