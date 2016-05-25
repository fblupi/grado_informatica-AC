	.file	"daxpy.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Falta num\n"
.LC2:
	.string	"Tiempo(seg): %f\ny[0]=%d, y[N-1]=%d \n"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB21:
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
	decl	%edi
	jg	.L2
	movq	stderr(%rip), %rsi
	movl	$.LC0, %edi
	call	fputs
	orl	$-1, %edi
	call	exit
.L2:
	movq	8(%rsi), %rdi
	call	atoi
	movl	%eax, %ebx
	cltq
	movl	$1, %edx
	leaq	18(,%rax,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r14
	subq	%rax, %rsp
	leaq	3(%rsp), %r12
	shrq	$2, %r12
	leaq	0(,%r12,4), %r13
.L3:
	cmpl	%ebx, %edx
	jg	.L9
	movslq	%edx, %rax
	movl	%edx, (%r14,%rax,4)
	movl	%edx, 0(%r13,%rax,4)
	incl	%edx
	jmp	.L3
.L9:
	leaq	-64(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	movl	$1, %eax
.L5:
	cmpl	%ebx, %eax
	jg	.L10
	movslq	%eax, %rdx
	incl	%eax
	imull	$47, (%r14,%rdx,4), %ecx
	addl	%ecx, 0(%r13,%rdx,4)
	jmp	.L5
.L10:
	leaq	-48(%rbp), %rsi
	xorl	%edi, %edi
	decl	%ebx
	movslq	%ebx, %rbx
	call	clock_gettime
	movq	-48(%rbp), %rax
	subq	-64(%rbp), %rax
	movl	$.LC2, %esi
	movl	0(%r13,%rbx,4), %ecx
	movl	0(,%r12,4), %edx
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movb	$1, %al
	divsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	__printf_chk
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
