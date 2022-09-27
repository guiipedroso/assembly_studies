.section .data 
  value1:
    .float 5.67
  value2:
    .double 267.891
.section .bss
    .lcomm data, 8
.section .text
   .globl _start
   _start:
    nop
    flds value1
    fstl data 
    fldl value2
    fstl data

    mov $1, %rax
    mov $0, %rbx
    int $0x80
