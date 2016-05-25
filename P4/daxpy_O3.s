	.file	"daxpy.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Falta num\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
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
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	cmpl	$1, %edi
	jle	.L48
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rbx
	cltq
	leaq	18(,%rax,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	3(%rsp), %r13
	subq	%rax, %rsp
	leaq	3(%rsp), %r14
	shrq	$2, %r13
	shrq	$2, %r14
	testl	%ebx, %ebx
	leaq	0(,%r13,4), %r15
	leaq	0(,%r14,4), %r12
	jle	.L3
	leaq	4(%r15), %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	cmpl	$6, %ebx
	cmovbe	%ebx, %eax
	testl	%eax, %eax
	je	.L26
	cmpl	$1, %eax
	movl	$1, 4(,%r13,4)
	movl	$1, 4(,%r14,4)
	jbe	.L27
	cmpl	$2, %eax
	movl	$2, 8(,%r13,4)
	movl	$2, 8(,%r14,4)
	jbe	.L28
	cmpl	$3, %eax
	movl	$3, 12(,%r13,4)
	movl	$3, 12(,%r14,4)
	jbe	.L29
	cmpl	$4, %eax
	movl	$4, 16(,%r13,4)
	movl	$4, 16(,%r14,4)
	jbe	.L30
	cmpl	$5, %eax
	movl	$5, 20(,%r13,4)
	movl	$5, 20(,%r14,4)
	jbe	.L31
	movl	$6, 24(,%r13,4)
	movl	$6, 24(,%r14,4)
	movl	$7, %edx
.L6:
	cmpl	%eax, %ebx
	je	.L7
.L5:
	movl	%ebx, %r8d
	movl	%eax, %ecx
	subl	%eax, %r8d
	movl	%r8d, %esi
	shrl	$2, %esi
	leal	0(,%rsi,4), %edi
	testl	%edi, %edi
	je	.L8
	leal	1(%rdx), %eax
	leaq	4(,%rcx,4), %r9
	xorl	%ecx, %ecx
	movdqa	.LC1(%rip), %xmm1
	movl	%eax, -84(%rbp)
	leal	2(%rdx), %eax
	leaq	(%r15,%r9), %r10
	movd	-84(%rbp), %xmm4
	addq	%r12, %r9
	movl	%eax, -88(%rbp)
	leal	3(%rdx), %eax
	movd	-88(%rbp), %xmm2
	movl	%edx, -88(%rbp)
	movl	%eax, -92(%rbp)
	movd	-88(%rbp), %xmm0
	xorl	%eax, %eax
	movd	-92(%rbp), %xmm3
	punpckldq	%xmm4, %xmm0
	punpckldq	%xmm3, %xmm2
	punpcklqdq	%xmm2, %xmm0
.L13:
	movdqa	%xmm0, %xmm2
	addl	$1, %ecx
	movdqa	%xmm0, (%r10,%rax)
	paddd	%xmm1, %xmm2
	movdqu	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpl	%esi, %ecx
	jae	.L49
	movdqa	%xmm2, %xmm0
	jmp	.L13
.L49:
	addl	%edi, %edx
	cmpl	%edi, %r8d
	je	.L7
.L8:
	movslq	%edx, %rax
	movl	%edx, (%r15,%rax,4)
	movl	%edx, (%r12,%rax,4)
	leal	1(%rdx), %eax
	cmpl	%eax, %ebx
	jl	.L7
	addl	$2, %edx
	movslq	%eax, %rcx
	cmpl	%edx, %ebx
	movl	%eax, (%r15,%rcx,4)
	movl	%eax, (%r12,%rcx,4)
	jl	.L7
	movslq	%edx, %rax
	movl	%edx, (%r15,%rax,4)
	movl	%edx, (%r12,%rax,4)
.L7:
	leaq	-80(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	leaq	4(%r12), %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	cmpl	$4, %ebx
	cmovbe	%ebx, %eax
	testl	%eax, %eax
	je	.L33
	imull	$47, 4(,%r13,4), %edx
	addl	%edx, 4(%r12)
	cmpl	$1, %eax
	jbe	.L34
	imull	$47, 8(,%r13,4), %edx
	addl	%edx, 8(%r12)
	cmpl	$2, %eax
	jbe	.L35
	imull	$47, 12(,%r13,4), %edx
	addl	%edx, 12(%r12)
	cmpl	$3, %eax
	jbe	.L36
	imull	$47, 16(,%r13,4), %edx
	addl	%edx, 16(%r12)
	movl	$5, %edx
.L20:
	cmpl	%ebx, %eax
	je	.L24
.L19:
	movl	%ebx, %r9d
	movl	%eax, %ecx
	subl	%eax, %r9d
	movl	%r9d, %edi
	shrl	$2, %edi
	leal	0(,%rdi,4), %r8d
	testl	%r8d, %r8d
	je	.L22
	leaq	4(,%rcx,4), %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	leaq	(%r15,%rsi), %r10
	addq	%r12, %rsi
.L23:
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
	cmpl	%edi, %ecx
	jb	.L23
	addl	%r8d, %edx
	cmpl	%r8d, %r9d
	je	.L24
.L22:
	movslq	%edx, %rax
	imull	$47, (%r15,%rax,4), %ecx
	addl	%ecx, (%r12,%rax,4)
	leal	1(%rdx), %eax
	cmpl	%eax, %ebx
	jl	.L24
	cltq
	addl	$2, %edx
	imull	$47, (%r15,%rax,4), %ecx
	addl	%ecx, (%r12,%rax,4)
	cmpl	%ebx, %edx
	jg	.L24
	movslq	%edx, %rdx
	imull	$47, (%r15,%rdx,4), %eax
	addl	%eax, (%r12,%rdx,4)
.L24:
	leaq	-64(%rbp), %rsi
	xorl	%edi, %edi
	subl	$1, %ebx
	movslq	%ebx, %rbx
	call	clock_gettime
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	movl	$.LC3, %esi
	movl	(%r12,%rbx,4), %ecx
	movl	0(,%r14,4), %edx
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	-56(%rbp), %rax
	subq	-72(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %eax
	divsd	.LC2(%rip), %xmm1
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
.L33:
	.cfi_restore_state
	movl	$1, %edx
	jmp	.L19
.L26:
	movl	$1, %edx
	jmp	.L5
.L36:
	movl	$4, %edx
	jmp	.L20
.L34:
	movl	$2, %edx
	jmp	.L20
.L35:
	movl	$3, %edx
	jmp	.L20
.L31:
	movl	$6, %edx
	jmp	.L6
.L27:
	movl	$2, %edx
	jmp	.L6
.L28:
	movl	$3, %edx
	jmp	.L6
.L29:
	movl	$4, %edx
	jmp	.L6
.L30:
	movl	$5, %edx
	jmp	.L6
.L3:
	leaq	-80(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	jmp	.L24
.L48:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
