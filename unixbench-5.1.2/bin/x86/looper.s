	.file	"looper.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"COUNT|%lu|60|lpm\n"
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
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"Usage: %s duration command [args..]\n"
	.section	.rodata.str1.1
.LC2:
	.string	"  duration in seconds\n"
	.section	.rodata.str1.4
	.align 4
.LC3:
	.string	"Usage: %s duration command [arg..]\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Fork failed at iteration %lu\n"
.LC5:
	.string	"Reason"
.LC6:
	.string	"Command \"%s\" didn't exec\n"
.LC7:
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
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	cmpl	$1, %ebx
	jle	.L21
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	call	strtol
	testl	%eax, %eax
	movl	%eax, %edi
	jle	.L22
	leal	-2(%ebx), %eax
	cmpl	$2, %ebx
	movl	%eax, cmd_argc
	movl	$2, %edx
	je	.L10
	.p2align 4,,7
	.p2align 3
.L16:
	movl	(%esi,%edx,4), %ecx
	movl	%ecx, cmd_argv-8(,%edx,4)
	addl	$1, %edx
	cmpl	%ebx, %edx
	jne	.L16
.L10:
	movl	$report, 4(%esp)
	leal	28(%esp), %ebx
	movl	$14, (%esp)
	movl	$0, iter
	call	__sysv_signal
	movl	%edi, (%esp)
	call	alarm
	jmp	.L9
	.p2align 4,,7
	.p2align 3
.L12:
	js	.L23
	movl	%ebx, (%esp)
	.p2align 4,,8
	call	wait
	movl	28(%esp), %eax
	cmpl	$25344, %eax
	je	.L24
	testl	%eax, %eax
	jne	.L25
	addl	$1, iter
.L9:
	call	fork
	testl	%eax, %eax
	jne	.L12
	movl	cmd_argv, %eax
	movl	$cmd_argv, 4(%esp)
	movl	%eax, (%esp)
	call	execvp
	movl	$99, (%esp)
	call	exit
.L21:
	movl	(%esi), %eax
	movl	$.LC1, 8(%esp)
	movl	%eax, 12(%esp)
.L18:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L23:
	movl	iter, %eax
	movl	$.LC4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$.LC5, (%esp)
	call	perror
	movl	$2, (%esp)
	call	exit
.L24:
	movl	cmd_argv, %eax
	movl	$.LC6, 8(%esp)
	movl	%eax, 12(%esp)
.L19:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$2, (%esp)
	call	exit
.L25:
	movl	%eax, 12(%esp)
	movl	$.LC7, 8(%esp)
	jmp	.L19
.L22:
	movl	(%esi), %eax
	movl	$.LC3, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	.L18
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.comm	cmd_argc,4,4
	.comm	cmd_argv,112,32
	.comm	iter,4,4
	.globl	SCCSid
	.data
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 42
SCCSid:
	.string	"@(#) @(#)looper.c:1.4 -- 5/15/91 19:30:22"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
