	.file	"2.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Sum of squares of %d and %d: %d\12\0"
	.align 8
.LC3:
	.ascii "Sum of squares of %.1f and %.1f: %.2f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	movl	$3, -4(%rbp)
	movl	$4, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-32(%rbp), %xmm1
	movss	-36(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	cvtss2sd	-40(%rbp), %xmm2
	cvtss2sd	-28(%rbp), %xmm1
	cvtss2sd	-24(%rbp), %xmm0
	movq	%xmm2, %rax
	movq	%rax, %rdx
	movq	%rdx, %r8
	movq	%rax, %xmm2
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rax, %xmm1
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%r8, %xmm3
	movq	%xmm2, %r9
	movq	%rcx, %xmm2
	movq	%xmm1, %r8
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC1:
	.long	1069547520
	.align 4
.LC2:
	.long	1075838976
	.ident	"GCC: (x86_64-posix-sjlj-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
