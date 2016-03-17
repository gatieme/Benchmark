	.file	"dhry_2.c"
	.text
	.p2align 4,,15
	.globl	Proc_6
	.type	Proc_6, @function
Proc_6:
.LFB24:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	cmpl	$2, %eax
	je	.L2
	cmpl	$1, %eax
	movl	$3, (%edx)
	je	.L4
	jb	.L8
	cmpl	$4, %eax
	jne	.L10
	movl	$2, (%edx)
.L7:
	.p2align 4,,2
	rep ret
	.p2align 4,,7
	.p2align 3
.L4:
	cmpl	$100, Int_Glob
	jle	.L7
.L8:
	movl	$0, (%edx)
	ret
	.p2align 4,,7
	.p2align 3
.L2:
	movl	$1, (%edx)
	ret
	.p2align 4,,7
	.p2align 3
.L10:
	rep ret
	.cfi_endproc
.LFE24:
	.size	Proc_6, .-Proc_6
	.p2align 4,,15
	.globl	Proc_7
	.type	Proc_7, @function
Proc_7:
.LFB25:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	12(%esp), %edx
	addl	$2, %eax
	addl	8(%esp), %eax
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE25:
	.size	Proc_7, .-Proc_7
	.p2align 4,,15
	.globl	Proc_8
	.type	Proc_8, @function
Proc_8:
.LFB26:
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
	movl	28(%esp), %ebx
	movl	20(%esp), %ecx
	movl	32(%esp), %ebp
	movl	24(%esp), %esi
	leal	5(%ebx), %eax
	leal	0(,%eax,4), %edx
	leal	(%ecx,%edx), %edi
	movl	%ebp, (%edi)
	movl	%ebp, 4(%ecx,%edx)
	imull	$200, %eax, %ebp
	movl	%eax, 120(%ecx,%edx)
	addl	%esi, %edx
	leal	(%esi,%ebp), %ecx
	movl	%eax, (%ecx,%eax,4)
	addl	$1, 16(%ecx,%ebx,4)
	movl	%eax, 24(%ecx,%ebx,4)
	movl	(%edi), %eax
	movl	%eax, 4000(%ebp,%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$5, Int_Glob
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
	.cfi_endproc
.LFE26:
	.size	Proc_8, .-Proc_8
	.p2align 4,,15
	.globl	Func_1
	.type	Func_1, @function
Func_1:
.LFB27:
	.cfi_startproc
	movl	4(%esp), %edx
	xorl	%eax, %eax
	cmpb	%dl, 8(%esp)
	je	.L17
	rep ret
	.p2align 4,,7
	.p2align 3
.L17:
	movb	%dl, Ch_1_Glob
	movb	$1, %al
	ret
	.cfi_endproc
.LFE27:
	.size	Func_1, .-Func_1
	.p2align 4,,15
	.globl	Func_2
	.type	Func_2, @function
Func_2:
.LFB28:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movzbl	2(%eax), %ecx
	cmpb	%cl, 3(%edx)
	je	.L20
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jle	.L22
	movl	$10, Int_Glob
	movl	$1, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L20:
	.cfi_restore_state
	jmp	.L20
	.p2align 4,,7
	.p2align 3
.L22:
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE28:
	.size	Func_2, .-Func_2
	.p2align 4,,15
	.globl	Func_3
	.type	Func_3, @function
Func_3:
.LFB29:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$2, 4(%esp)
	sete	%al
	ret
	.cfi_endproc
.LFE29:
	.size	Func_3, .-Func_3
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
