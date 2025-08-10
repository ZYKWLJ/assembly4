	.file	"1.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "The byte value retrieved: %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movl	$4096, -84(%rbp)
	movq	$8192, -96(%rbp)
/APP
 # 22 "C:\Users\29001\Desktop\公众号文件\专注CLinuxCloud\汇编语言\C嵌入汇编\1.c" 1
	push %fs;             mov %ax,%fs;             movb %fs:2,%al;             pop %fs
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%ebx, %eax
	movb	%al, -85(%rbp)
	movsbl	-85(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-sjlj-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
