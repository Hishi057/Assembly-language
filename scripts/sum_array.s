# %rdi 配列の先頭のアドレス
# %rsi 配列の長さ
# %8 動的に動くポインタ

.text
.global _sum_array
_sum_array:
    movq $0, %rax
    leaq (%rdi, %rsi, 8), %r8

.loop:
    subq $8, %r8
    addq (%r8), %rax
    
    cmp %rdi, %r8
    jne .loop

.end:
    ret

