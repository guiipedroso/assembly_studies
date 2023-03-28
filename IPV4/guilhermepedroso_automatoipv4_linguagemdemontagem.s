.section .data

String: .word 15
final_ip:
	.equ tamanho_ip, final_ip - String
Intg:		.long 0

ip:	.fill 12, 4
index:	.int 11
end:	.int 0

  valido:
    .ascii " o IP eh valido\n"
  final_valido:
    .equ tamanho_valido, final_valido - valido
  nao_valido:
    .ascii " o IP eh invalido\n"
  final_nao_valido:
    .equ tamanho_nao_valido, final_nao_valido - nao_valido
  hello: 
    .ascii "Hello user, insira um ip :)\n-> "
  final_hello:
    .equ tamanho_hello, final_hello - hello 
  
  line: 
    .ascii "\n "
  final_line:
    .equ tamanho_line, final_line - line  
  
.section .text
  .globl _start 
  _start:

hello_user:

  movl $4, %eax
  movl $1, %ebx
  movl $hello, %ecx
  movl $tamanho_hello, %edx
  int $0x80

# Lendo o IP

  movl $3, %eax
  movl $0, %ebx
  movl $String, %ecx 
  movl $15, %edx 
  int $0x80 

  movl $4, %eax
  movl $1, %ebx
  movl $line, %ecx
  movl $tamanho_line, %edx 
  int $0x80 

# Imprimindo meu IP 
  movl $4, %eax
  movl $1, %ebx
  movl $String, %ecx
  movl $15, %edx
  int $0x80 

  xor	%edi, %edi
  movl 	$tamanho_ip, %eax
  movl	$String, %ecx
  pushq %rbp
  movq %rsp, %rbp
  subq $16, %rsp
  movl $11, %edi
  call character_push_loop
  xor %rax, %rax
  xor %rbx, %rbx
  xor %rcx, %rcx
  xor %rdx, %rdx
  xor %rdi, %rdi
  call estado
  jmp fim  

character_push_loop:
  cmpb	$0, (%ecx)
  je conversao
  movzx (%ecx), %eax
  push	%rax
  incl	%ecx
  jmp character_push_loop

conversao:
  pop %rax
  cmp $46, %eax
  jne ignorar_ponto
  xor %eax, %eax
  jmp continuacao

ignorar_ponto:
  subl $48, %eax
  movl %eax, ip(,%edi,4)
  movl ip(,%edi,4), %ebx
  decl %edi
  jmp continuacao

continuacao:
  decl	%ecx
  cmpl	$String, %ecx
  jne	conversao
  ret

estado:
  movl ip(, %edi, 4), %ebx
  cmp $0, %ecx
  je num1
  cmp $1, %ecx
  je num2
  cmp $2, %ecx
  je num3  
  cmp $3, %ecx
  je octeto  
  jne ip_nao_valido

estado2:
  movl ip(, %edi, 4), %ebx
  cmp $0, %ecx
  je num1
  cmp $1, %ecx
  je casonum2
  cmp $2, %ecx
  je casonum3
  cmp $3, %ecx
  je casonum3_2
  cmp $4, %ecx
  je octeto
  jne ip_nao_valido

num1:
  cmp $0, %ebx
  je incrementa
  cmp $1, %ebx
  je incrementa
  cmp $2, %ebx
  je incrementa2
  jne ip_nao_valido

num2: 
  cmp $0, %ebx
  je incrementa
  cmp $1, %ebx
  je incrementa
  cmp $2, %ebx
  je incrementa
  cmp $3, %ebx 
  je incrementa
  cmp $4, %ebx
  je incrementa
  cmp $5, %ebx
  je incrementa
  cmp $6, %ebx
  je incrementa
  cmp $7, %ebx
  je incrementa
  cmp $8, %ebx
  je incrementa
  cmp $9, %ebx
  je incrementa
  jne ip_nao_valido

num3: 
  cmp $0, %ebx
  je incrementa
  cmp $1, %ebx
  je incrementa
  cmp $2, %ebx
  je incrementa
  cmp $3, %ebx
  je incrementa
  cmp $4, %ebx
  je incrementa
  cmp $5, %ebx
  je incrementa
  cmp $6, %ebx
  je incrementa
  cmp $7, %ebx
  je incrementa
  cmp $8, %ebx
  je incrementa
  cmp $9, %ebx
  je incrementa
  jne ip_nao_valido

incrementa:
  inc %ecx
  inc %edi
  cmp $12, %edi
  je ip_valido
  jne estado

dois:
  push %rbx
  jmp estado

octeto:
  xor %ecx, %ecx
  cmp $11, %edi
  je fim
  jne estado

casonum2:
  cmp $0, %ebx
  je incrementa2
  cmp $1, %ebx
  je incrementa2
  cmp $2, %ebx
  je incrementa2
  cmp $3, %ebx
  je incrementa2
  cmp $4, %ebx
  je incrementa2
  cmp $5, %ebx
  je incrementa3
  jne ip_nao_valido 
  
casonum3:  
  cmp $0, %ebx
  je incrementa2_2
  cmp $1, %ebx
  je incrementa2_2
  cmp $2, %ebx
  je incrementa2_2
  cmp $3, %ebx
  je incrementa2_2
  cmp $4, %ebx
  je incrementa2_2
  cmp $5, %ebx
  je incrementa2_2
  cmp $6, %ebx
  je incrementa2_2
  cmp $7, %ebx
  je incrementa2_2
  cmp $8, %ebx
  je incrementa2_2
  cmp $9, %ebx
  je incrementa2_2

casonum3_2:
  cmp $0, %ebx
  je incrementa2
  cmp $1, %ebx
  je incrementa2
  cmp $2, %ebx
  je incrementa2
  cmp $3, %ebx
  je incrementa2
  cmp $4, %ebx
  je incrementa2
  cmp $5, %ebx
  je incrementa2
  jne ip_nao_valido

incrementa2:
  inc %ecx
  inc %edi
  cmp $12, %edi
  je ip_valido
  jne estado2

incrementa2_2:
  inc %ecx
  inc %ecx 
  inc %edi
  cmp $12, %edi
  je ip_valido
  jne estado2

incrementa3:
  inc %ecx
  inc %ecx
  inc %edi
  cmp $12, %edi
  je ip_valido
  jne estado2

ip_valido:
  movl $4, %eax
  movl $1, %ebx
  movl $valido, %ecx
  movl $tamanho_valido, %edx
  int $0x80
  ret

ip_nao_valido:
  movl $4, %eax
  movl $1, %ebx
  movl $nao_valido, %ecx
  movl $tamanho_nao_valido, %edx 
  int $0x80 
  ret

fim:
  movl $1, %eax
  movl $0, %ebx
  int $0x80
