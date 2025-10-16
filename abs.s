	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 0
	.globl	_abs
	.p2align	4, 0x90
_abs:
	pushq	%rbp
	movq	%rsp, %rbp

    # 返り値に基の引数をセット
    movl %edi, %eax

    # 0 < n ならば
    cmpl $0, %edi
	jle .LEND

.NEGATIVE:
    negl %eax

.LEND:
	popq	%rbp
	retq


