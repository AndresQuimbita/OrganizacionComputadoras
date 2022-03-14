	.file	"Parte2.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "NO es bisiesto\0"
.LC1:
	.ascii "Es bisiesto\0"
	.align 8
.LC2:
	.ascii "Ahora imprimiendo bisiestos de 1900 a 2200\0"
.LC3:
	.ascii "%ld, \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	leaq	.LC1(%rip), %rcx
	call	puts
	leaq	.LC2(%rip), %rcx
	call	puts
	movl	$1900, %ebx
	leaq	.LC3(%rip), %rsi
	jmp	.L6
.L5:
	addq	$1, %rbx
	cmpq	$2201, %rbx
	je	.L8
.L6:
	movq	%rbx, %rcx
	call	esBisiesto
	testl	%eax, %eax
	je	.L5
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	printf
	jmp	.L5
.L8:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	esBisiesto;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
