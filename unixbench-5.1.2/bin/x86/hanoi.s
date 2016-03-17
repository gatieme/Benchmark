	.file	"hanoi.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"COUNT|%ld|1|lps\n"
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
	.p2align 4,,15
	.globl	mov
	.type	mov, @function
mov:
.LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	cmpl	$1, %ebx
	jne	.L12
	jmp	.L18
	.p2align 4,,7
	.p2align 3
.L17:
	movl	%ebp, %esi
.L12:
	leal	(%esi,%edi), %eax
	movl	$6, %ebp
	subl	%eax, %ebp
	subl	$1, %ebx
	movl	%ebp, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	mov
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$1, (%esp)
	call	mov
	cmpl	$1, %ebx
	jne	.L17
.L7:
	subl	$1, num(,%ebp,4)
	addl	$1, num(,%edi,4)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L18:
	.cfi_restore_state
	movl	%esi, %ebp
	jmp	.L7
	.cfi_endproc
.LFE31:
	.size	mov, .-mov
	.section	.rodata.str1.1
.LC1:
	.string	"Usage: %s duration [disks]\n"
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
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %edi
	cmpl	$1, 8(%ebp)
	jle	.L26
	movl	$10, 8(%esp)
	movl	$10, %ebx
	movl	$0, 4(%esp)
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	call	strtol
	cmpl	$2, 8(%ebp)
	movl	%eax, %esi
	jne	.L27
.L21:
	movl	$report, 4(%esp)
	movl	$14, (%esp)
	movl	%ebx, num+4
	call	__sysv_signal
	movl	%esi, (%esp)
	call	alarm
	.p2align 4,,7
	.p2align 3
.L22:
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	mov
	addl	$1, iter
	jmp	.L22
.L26:
	movl	(%edi), %eax
	movl	$.LC1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L27:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, %ebx
	jmp	.L21
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.comm	cnt,4,4
	.comm	num,16,4
	.globl	iter
	.bss
	.align 4
	.type	iter, @object
	.size	iter, 4
iter:
	.zero	4
	.globl	SCCSid
	.data
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 41
SCCSid:
	.string	"@(#) @(#)hanoi.c:3.3 -- 5/15/91 19:30:20"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
