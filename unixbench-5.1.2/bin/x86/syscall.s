	.file	"syscall.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"COUNT|%ld|1|lps\n"
	.text
	.p2align 4,,15
	.globl	report
	.type	report, @function
report:
.LFB31:
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
.LFE31:
	.size	report, .-report
	.p2align 4,,15
	.globl	wake_me
	.type	wake_me, @function
wake_me:
.LFB30:
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
.LFE30:
	.size	wake_me, .-wake_me
	.section	.rodata.str1.1
.LC1:
	.string	"mix"
.LC2:
	.string	"Usage: %s duration [ test ]\n"
.LC3:
	.string	"test is one of:\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC4:
	.string	"  \"mix\" (default), \"close\", \"getpid\", \"exec\"\n"
	.section	.rodata.str1.1
.LC5:
	.string	"%s: fork failed\n"
.LC6:
	.string	"/bin/true"
.LC7:
	.string	"%s: exec /bin/true failed\n"
.LC8:
	.string	"%s: waitpid failed\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB32:
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
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	cmpl	$1, %eax
	jle	.L32
	cmpl	$2, %eax
	movl	$.LC1, %esi
	je	.L7
	movl	8(%ebx), %esi
.L7:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	$report, 4(%esp)
	movl	$14, (%esp)
	movl	$0, iter
	movl	%eax, %edi
	call	__sysv_signal
	movl	%edi, (%esp)
	call	alarm
	movzbl	(%esi), %eax
	cmpb	$101, %al
	je	.L20
	jle	.L33
	cmpb	$103, %al
	.p2align 4,,4
	je	.L16
	cmpb	$109, %al
	.p2align 4,,7
	jne	.L8
	.p2align 4,,7
	.p2align 3
.L23:
	movl	$0, (%esp)
	call	dup
	movl	%eax, (%esp)
	call	close
	call	getpid
	call	getuid
	movl	$18, (%esp)
	call	umask
	addl	$1, iter
	jmp	.L23
.L16:
	call	getpid
	addl	$1, iter
	call	getpid
	addl	$1, iter
	jmp	.L16
	.p2align 4,,7
	.p2align 3
.L17:
	je	.L34
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	waitpid
	testl	%eax, %eax
	js	.L35
	addl	$1, iter
.L20:
	call	fork
	testl	%eax, %eax
	jns	.L17
	movl	(%ebx), %eax
	movl	$.LC5, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	.L30
.L33:
	cmpb	$99, %al
	jne	.L8
	.p2align 4,,7
	.p2align 3
.L22:
	movl	$0, (%esp)
	call	dup
	movl	%eax, (%esp)
	call	close
	addl	$1, iter
	jmp	.L22
.L8:
	movl	$9, (%esp)
	call	exit
.L32:
	movl	(%ebx), %eax
	movl	$.LC2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC3, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L35:
	movl	(%ebx), %eax
	movl	$.LC8, 8(%esp)
	movl	%eax, 12(%esp)
.L30:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L34:
	movl	$0, 4(%esp)
	movl	$.LC6, (%esp)
	call	execl
	movl	(%ebx), %eax
	movl	$.LC7, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	.L30
	.cfi_endproc
.LFE32:
	.size	main, .-main
	.comm	iter,4,4
	.globl	SCCSid
	.data
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 43
SCCSid:
	.string	"@(#) @(#)syscall.c:3.3 -- 5/15/91 19:30:21"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
