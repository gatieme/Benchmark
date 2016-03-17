	.file	"times_b.c"
	.text
	.p2align 4,,15
	.globl	dtime
	.type	dtime, @function
dtime:
.LFB0:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$rusage, 4(%esp)
	movl	$0, (%esp)
	call	getrusage
	fildl	rusage
	fildl	rusage+4
	fmull	.LC0
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	faddp	%st, %st(1)
	ret
	.cfi_endproc
.LFE0:
	.size	dtime, .-dtime
	.comm	rusage,72,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1598689907
	.long	1051772663
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
