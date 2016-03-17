	.file	"spawn.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"COUNT|%lu|1|lps\n"
	.text
	.p2align 4,,15
	.globl	report
	.type	report, @function
report:
.LFB29:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	iter, %eax
	movl	$.LC0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$0, (%esp)
	call	exit
	.cfi_endproc
.LFE29:
	.size	report, .-report
	.p2align 4,,15
	.globl	wake_me
	.type	wake_me, @function
wake_me:
.LFB28:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	32(%esp), %ebx
	movl	$14, (%esp)
	movl	%eax, 4(%esp)
	call	__sysv_signal
	movl	%ebx, 32(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	alarm
	.cfi_endproc
.LFE28:
	.size	wake_me, .-wake_me
	.section	.rodata.str1.1
.LC1:
	.string	"Usage: %s duration \n"
.LC2:
	.string	"Fork failed at iteration %lu\n"
.LC3:
	.string	"Reason"
.LC4:
	.string	"Bad wait status: 0x%x\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$32, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	cmpl	$2, 8(%ebp)
	je	.L6
	movl	(%eax), %eax
	movl	$.LC1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L6:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	$report, 4(%esp)
	movl	$14, (%esp)
	movl	$0, iter
	movl	%eax, %ebx
	call	__sysv_signal
	movl	%ebx, (%esp)
	leal	28(%esp), %ebx
	call	alarm
	jmp	.L10
	.p2align 4,,7
	.p2align 3
.L7:
	js	.L13
	movl	%ebx, (%esp)
	.p2align 4,,8
	call	wait
	movl	28(%esp), %eax
	testl	%eax, %eax
	jne	.L14
	addl	$1, iter
.L10:
	call	fork
	testl	%eax, %eax
	jne	.L7
	movl	$0, (%esp)
	call	exit
.L13:
	movl	iter, %eax
	movl	$.LC2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$.LC3, (%esp)
	call	perror
	movl	$2, (%esp)
	call	exit
.L14:
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$.LC4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$2, (%esp)
	call	exit
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.comm	iter,4,4
	.globl	SCCSid
	.data
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 41
SCCSid:
	.string	"@(#) @(#)spawn.c:3.3 -- 5/15/91 19:30:20"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
