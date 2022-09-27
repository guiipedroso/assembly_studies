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

  funcao:
    xor %rax, %rax
    xor %rbx, %rbx                        
    xor %rcx, %rcx
    xor %rdx, %rdx
    inc %rax                        
    inc %rax                        
    inc %rbx                        
    inc %rbx                        
    inc %rcx                        
    inc %rcx                        
    inc %rdx                        
    inc %rdx 
    inc %rax                        
    inc %rax                        
    inc %rbx                        
    inc %rbx                        
    inc %rcx                        
    inc %rcx                        
    inc %rdx                        
    inc %rdx                        
    ret

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
