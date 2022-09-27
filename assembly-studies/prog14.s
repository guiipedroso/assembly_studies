.section .data
.section .text
  .globl _start
  _start: 
    xor %rax, %rax
    xor %rbx, %rbx
    mov $240, %rax # 11110000 = 240 other exemplo 0xf0
    mov $15, %rbx # 00001111 = 15 0xf
    or %rbx, %rax # 111111111 = 240 | 15 = 255 ==> 0xf0 | 0xf == 0xff
    jmp fim

  fim:
    mov $1, %rax
    mov $0, %rbx 
    int $0x80
