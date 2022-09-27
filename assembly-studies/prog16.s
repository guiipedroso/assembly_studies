.section .data
.section .text 
  .globl _start
  
  .macro ebitabit 
    xor %rax, %rax 
    xor %rbx, %rbx
    mov $189, %rax
    mov $91, %rbx
    and %rbx, %rax
  .endm

  _start:
    ebitabit 
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
