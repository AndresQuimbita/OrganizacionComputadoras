	.file	"Ejercicio2.c"
	.text
	.globl	swapl
	.def	swapl;	.scl	2;	.type	32;	.endef
	.seh_proc	swapl
swapl:
	.seh_endprologue
	movq	(%rcx), %rax
	movq	(%rdx), %r8
	movq	%r8, (%rcx)
	movq	%rax, (%rdx)
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
