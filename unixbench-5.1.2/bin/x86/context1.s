	.file	"context1.c"
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
	.string	"Usage: context duration\n"
.LC2:
	.string	"pipe create failed"
.LC3:
	.string	"master write failed"
.LC4:
	.string	"master read failed"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC5:
	.string	"Master sync error: expect %lu, got %lu\n"
	.section	.rodata.str1.1
.LC6:
	.string	"slave read failed"
	.section	.rodata.str1.4
	.align 4
.LC7:
	.string	"Slave sync error: expect %lu, got %lu\n"
	.section	.rodata.str1.1
.LC8:
	.string	"slave write failed"
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
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	cmpl	$2, 8(%ebp)
	je	.L6
	movl	stderr, %eax
	movl	$.LC1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L6:
	movl	12(%ebp), %eax
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
	call	alarm
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	pipe
	testl	%eax, %eax
	je	.L7
.L8:
	movl	$.LC2, (%esp)
	call	perror
	movl	$1, (%esp)
	call	exit
.L7:
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	pipe
	testl	%eax, %eax
	jne	.L8
	call	fork
	testl	%eax, %eax
	.p2align 4,,4
	je	.L9
	movl	48(%esp), %eax
	leal	40(%esp), %ebx
	movl	%eax, (%esp)
	call	close
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	close
	jmp	.L16
.L10:
	movl	56(%esp), %eax
	movl	$4, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	read
	cmpl	$4, %eax
	jne	.L33
	movl	40(%esp), %eax
	movl	iter, %edx
	cmpl	%edx, %eax
	jne	.L34
	addl	$1, %eax
	movl	%eax, iter
.L16:
	movl	52(%esp), %eax
	movl	$4, 8(%esp)
	movl	$iter, 4(%esp)
	movl	%eax, (%esp)
	call	write
	cmpl	$4, %eax
	je	.L10
	call	__errno_location
	testl	$-5, (%eax)
	jne	.L35
.L12:
	movl	$1, (%esp)
	call	exit
.L9:
	movl	52(%esp), %eax
	leal	40(%esp), %ebx
	movl	$0, 44(%esp)
	leal	44(%esp), %esi
	movl	%eax, (%esp)
	call	close
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	close
	jmp	.L20
.L17:
	movl	40(%esp), %eax
	cmpl	44(%esp), %eax
	jne	.L36
	movl	60(%esp), %eax
	movl	$4, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	write
	cmpl	$4, %eax
	jne	.L37
	addl	$1, 44(%esp)
.L20:
	movl	48(%esp), %eax
	movl	$4, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	read
	cmpl	$4, %eax
	je	.L17
	call	__errno_location
	testl	$-5, (%eax)
	je	.L12
	movl	$.LC6, (%esp)
	call	perror
	jmp	.L12
.L33:
	call	__errno_location
	testl	$-5, (%eax)
	.p2align 4,,2
	je	.L12
	movl	$.LC4, (%esp)
	call	perror
	jmp	.L12
.L36:
	movl	%eax, 16(%esp)
	movl	iter, %eax
	movl	$.LC7, 8(%esp)
	movl	%eax, 12(%esp)
.L31:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$2, (%esp)
	call	exit
.L37:
	call	__errno_location
	testl	$-5, (%eax)
	je	.L12
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L12
.L34:
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$.LC5, 8(%esp)
	jmp	.L31
.L35:
	movl	$.LC3, (%esp)
	call	perror
	jmp	.L12
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.comm	iter,4,4
	.globl	SCCSid
	.data
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 44
SCCSid:
	.string	"@(#) @(#)context1.c:3.3 -- 5/15/91 19:30:18"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
