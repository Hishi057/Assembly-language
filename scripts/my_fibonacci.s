.text
.global _my_fibonacci
# n>=3のみ
_my_fibonacci:
    # f(1) = 1, f(2)=1 を代入
    movq $1, %r8
    movq $1, %r9
    # 初期値
    movq $1, %rax

    movq $2, %r10
    call .loop
    ret

.loop:
    call .calc
    inc %r10

    # 目的の回数だけループする
    cmp %r10, %rdi
    jne .loop

    ret

.calc:
    movq %r9, %r8
    movq %rax, %r9
    addq %r8, %rax
    ret