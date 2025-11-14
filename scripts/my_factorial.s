.text
.global _my_factorial
_my_factorial:
    # n >= 1かどうかチェック
    movq $(-1), %rax # 初期値-1
    cmp $1, %rdi
    jnge .END

    # 実際の処理 %r8がカウンター
    movq $1, %rax
    movq $0, %r8 
    call .loop

    # 終了
    jmp .END

.loop:
    inc %r8
    mulq %r8
    # 指定の回数に達していなければもう一回
    cmp %rdi, %r8
    jne .loop

    ret

.END:
    ret