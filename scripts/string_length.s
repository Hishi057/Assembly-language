.text
.global _string_length
_string_length:
    movq $0, %rax

.loop:
    movb (%rdi), %dl

    # 終了記号であれば終わり
    cmp $0, %dl
    je .END

    inc %rax
    inc %rdi

    jmp .loop

.END:
    ret