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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	cmpl	$1, %edi
	jle	.L27
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r12
	cltq
	leaq	-80(%rbp), %rsi
	leaq	18(,%rax,4), %rax
	xorl	%edi, %edi
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	3(%rsp), %r13
	subq	%rax, %rsp
	leaq	3(%rsp), %r14
	shrq	$2, %r13
	shrq	$2, %r14
	leaq	0(,%r13,4), %r15
	call	clock_gettime
	testl	%r12d, %r12d
	leaq	0(,%r14,4), %rbx
	jle	.L13
	leaq	4(%rbx), %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	cmpl	%r12d, %eax
	cmova	%r12d, %eax
	cmpl	$4, %r12d
	cmovbe	%r12d, %eax
	testl	%eax, %eax
	je	.L16
	imull	$47, 4(,%r13,4), %edx
	addl	%edx, 4(%rbx)
	cmpl	$1, %eax
	jbe	.L17
	imull	$47, 8(,%r13,4), %edx
	addl	%edx, 8(%rbx)
	cmpl	$2, %eax
	jbe	.L18
	imull	$47, 12(,%r13,4), %edx
	addl	%edx, 12(%rbx)
	cmpl	$3, %eax
	jbe	.L19
	imull	$47, 16(,%r13,4), %edx
	addl	%edx, 16(%rbx)
	movl	$5, %edx
.L6:
	cmpl	%eax, %r12d
	je	.L13
.L5:
	movl	%r12d, %r9d
	movl	%eax, %ecx
	subl	%eax, %r9d
	movl	%r9d, %edi
	shrl	$2, %edi
	leal	0(,%rdi,4), %r8d
	testl	%r8d, %r8d
	je	.L8
	leaq	4(,%rcx,4), %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	leaq	(%r15,%rsi), %r10
	addq	%rbx, %rsi
.L14:
	movdqu	(%r10,%rax), %xmm1
	addl	$1, %ecx
	movdqa	%xmm1, %xmm2
	pslld	$4, %xmm2
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	psubd	%xmm2, %xmm0
	psubd	%xmm1, %xmm0
	paddd	(%rsi,%rax), %xmm0
	movdqa	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpl	%ecx, %edi
	ja	.L14
	addl	%r8d, %edx
	cmpl	%r8d, %r9d
	je	.L13
.L8:
	movslq	%edx, %rax
	imull	$47, (%r15,%rax,4), %ecx
	addl	%ecx, (%rbx,%rax,4)
	leal	1(%rdx), %eax
	cmpl	%r12d, %eax
	jg	.L13
	cltq
	addl	$2, %edx
	imull	$47, (%r15,%rax,4), %ecx
	addl	%ecx, (%rbx,%rax,4)
	cmpl	%edx, %r12d
	jl	.L13
	movslq	%edx, %rdx
	imull	$47, (%r15,%rdx,4), %eax
	addl	%eax, (%rbx,%rdx,4)
.L13:
	leaq	-64(%rbp), %rsi
	xorl	%edi, %edi
	subl	$1, %r12d
	movslq	%r12d, %r12
	call	clock_gettime
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	movl	$.LC2, %esi
	movl	(%rbx,%r12,4), %ecx
	movl	0(,%r14,4), %edx
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	-56(%rbp), %rax
	subq	-72(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %eax
	divsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	__printf_chk
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L16:
	.cfi_restore_state
	movl	$1, %edx
	jmp	.L5
.L19:
	movl	$4, %edx
	jmp	.L6
.L17:
	movl	$2, %edx
	jmp	.L6
.L18:
	movl	$3, %edx
	jmp	.L6
.L27:
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
