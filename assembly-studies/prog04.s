.section .data
.section .text 
  .globl _start
  _start:

      # mov   $0x7fffffffffffffff, %rax -> maior valor inteiro positivo, bit mais significativo

    mov $0xffffffffffffffff, %rax

    mov $0x0, %rax 
    movb $0xffffffffffffffff, %al

    mov $0x0, %rax
    movw $0xffffffffffffffff, %ax 

    mov $0x0, %rax
    movl $0xffffffffffffffff, %eax

    mov $0x0, %rax
    movq $0xffffffffffffffff, %rax
    
    movl $1, %eax
    movl $0, %ebx
    int $0x80    
