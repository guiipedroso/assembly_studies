.section .data # é uma seção usada para variáveis globais 
.section .text # é uma seção usado para armazenar informações 
  .globl _start # é o ponto de entrada, deve ser declarado como global 
  _start:

  movl $11, %eax 
  inc %eax #incrementa
  dec  %eax #decrementa
  add $10, %eax #adiciona
  sub $5, %eax #subtrai
  inc %eax 

  movl $1, %eax #finalizar o programa 
  movl $0, %ebx #finalizar o programa, chamada do sistema operacional
  int $0x80
  
