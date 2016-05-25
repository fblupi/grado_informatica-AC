	.file	"daxpy.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Falta num\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Tiempo(seg): %f\ny[0]=%d, y[N-1]=%d \n"
	.text
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
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	cmpl	$1, %edi
	jg	.L2
	movq	stderr(%rip), %rcx
	movl	$10, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	movl	$-1, %edi
	call	exit
.L2:
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
	movq	%rax, %r14
	movl	%eax, %r13d
	cltq
	leaq	18(,%rax,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r12
	subq	%rax, %rsp
	leaq	3(%rsp), %rax
	shrq	$2, %rax
	movq	%rax, -88(%rbp)
	leaq	0(,%rax,4), %r15
	movq	%r15, %rbx
	testl	%r14d, %r14d
	jle	.L3
	movl	$1, %eax
.L5:
	movslq	%eax, %rdx
	movl	%eax, (%r12,%rdx,4)
	movl	%eax, (%rbx,%rdx,4)
	addl	$1, %eax
	cmpl	%r13d, %eax
	jle	.L5
	jmp	.L4
.L7:
	movslq	%eax, %rdx
	imull	$47, (%r12,%rdx,4), %ecx
	addl	%ecx, (%rbx,%rdx,4)
	addl	$1, %eax
	cmpl	%r13d, %eax
	jle	.L7
	jmp	.L8
.L4:
	leaq	-80(%rbp), %rsi
	movl	$0, %edi
	call	clock_gettime
	movl	$1, %eax
	jmp	.L7
.L3:
	leaq	-80(%rbp), %rsi
	movl	$0, %edi
	call	clock_gettime
.L8:
	leaq	-64(%rbp), %rsi
	movl	$0, %edi
	call	clock_gettime
	subl	$1, %r14d
	movslq	%r14d, %r14
	movl	(%r15,%r14,4), %ecx
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-56(%rbp), %rax
	subq	-72(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movl	0(,%rax,4), %edx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$0, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
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
