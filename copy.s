    .data
x:
    .quad 9

    .text
    .globl _main
_main:
    pushq $7
    pushq $8
    movq (%rsp), %rax
    movq 8(%rsp), %rbx
    movq x(%rip), %rcx
    ret