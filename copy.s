	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 0
	.globl	_main
	.p2align	4, 0x90
_main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax

	popq	%rbp
	retq