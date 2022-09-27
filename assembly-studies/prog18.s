.section .data
.section .text
  .globl _start
  _start:
    call ebitabit
    jmp fim

  ebitabit:
    xor %rax, %rax
    xor %rbx, %rbx                        
    mov $189, %rax # 10111101 = 189
    mov $91, %rbx  # 01011011 = 91
    and %rbx, %rax # 00011001 = 25       
    ret

  fim:
    mov $1, %rax
    mov $0, %rbx
    int $0x80
