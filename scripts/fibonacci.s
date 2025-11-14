.text
.global _fibonacci
_fibonacci:
    call calc
    ret

calc:
    mov %rdi, %rax
    ret