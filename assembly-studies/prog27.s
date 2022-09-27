.section .data 
  texto: 
    .ascii "Hello World"
  final_texto:
    .equ tamanho_texto, final_texto - texto

.section .text 
  .globl _start 
  _start: 
    movl $4, %eax
    movl $1, %ebx
    movl $texto, %ecx
    movl $tamanho_texto, %edx
    int $0x80

    movl $1, %eax
    movl $0, %ebx 
    int $0x80

