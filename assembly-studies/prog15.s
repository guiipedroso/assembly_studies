.section .data
.section .text
  .globl _start
  _start:
    xor %rax, %rax
    xor %rbx, %rbx
    mov $189, %rax # 10111101
    mov $91, %rbx  # 01011011
    and %rbx, %rax # 00011001
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
