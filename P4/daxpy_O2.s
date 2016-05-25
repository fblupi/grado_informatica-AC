	.file	"daxpy.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Falta num\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Tiempo(seg): %f\ny[0]=%d, y[N-1]=%d \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	cmpl	$1, %edi
	jle	.L12
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r14
	movl	%eax, %esi
	cltq
	leaq	18(,%rax,4), %rdx
	andq	$-16, %rdx
	subq	%rdx, %rsp
	movq	%rsp, %r12
	subq	%rdx, %rsp
	leaq	3(%rsp), %r13
	shrq	$2, %r13
	testl	%r14d, %r14d
	leaq	0(,%r13,4), %rbx
	jle	.L3
	xorl	%ecx, %ecx
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%edx, 4(%r12,%rcx)
	movl	%edx, 4(%rbx,%rcx)
	addl	$1, %edx
	addq	$4, %rcx
	cmpl	%esi, %edx
	jle	.L5
	leaq	-64(%rbp), %rsi
	xorl	%edi, %edi
	subl	$1, %r14d
	call	clock_gettime
	movl	%r14d, %eax
	xorl	%edx, %edx
	leaq	4(,%rax,4), %rsi
	.p2align 4,,10
	.p2align 3
.L7:
	movl	4(%r12,%rdx), %ecx
	movl	$47, %eax
	imull	%eax, %ecx
	addl	%ecx, 4(%rbx,%rdx)
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	jne	.L7
.L8:
	leaq	-48(%rbp), %rsi
	xorl	%edi, %edi
	movslq	%r14d, %r14
	call	clock_gettime
	movq	-48(%rbp), %rax
	subq	-64(%rbp), %rax
	movl	$.LC2, %esi
	movl	(%rbx,%r14,4), %ecx
	movl	0(,%r13,4), %edx
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %eax
	divsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	__printf_chk
	leaq	-32(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L3:
	.cfi_restore_state
	leaq	-64(%rbp), %rsi
	xorl	%edi, %edi
	subl	$1, %r14d
	call	clock_gettime
	jmp	.L8
.L12:
	movq	stderr(%rip), %rcx
	movl	$.LC0, %edi
	movl	$10, %edx
	movl	$1, %esi
	call	fwrite
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
