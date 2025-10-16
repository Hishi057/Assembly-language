	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 0
	.globl	_sum
	.p2align	4, 0x90
_sum:
	pushq	%rbp
	movq	%rsp, %rbp

	movl %edi, %eax
	addl %esi, %eax
	
	popq	%rbp
	retq

