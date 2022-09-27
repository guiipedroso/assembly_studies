.section .data
.section .text 
  .globl _start
  
  .macro ebitabit, x, y
    xor %rax, %rax 
    xor %rbx, %rbx
    mov \x, %rax
    mov \y, %rbx
    and %rbx, %rax
  .endm

  _start:
    ebitabit $189 $91
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
