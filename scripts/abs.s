# if文を理解するため
# 絶対値関数

.text
.global _my_abs
_my_abs:
    mov %rdi, %rax
    cmp $0, %rax
    jg THEN # 0 < %rdi ならば
    jmp ELSE

THEN:
    jmp ENDIF

ELSE:
    neg %rax
    jmp ENDIF

ENDIF:
    ret