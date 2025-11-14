.text
.global _loop
_loop:
    movq $0, %rax
    movq $5, %rcx

.loop_start:
    inc %rax
    loop .loop_start
    
.END:
    ret