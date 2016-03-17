	.file	"whets.c"
	.text
	.p2align 4,,15
	.globl	pa
	.type	pa, @function
pa:
.LFB42:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	$6, %eax
	fldl	8(%esp)
	fldl	(%edx)
	fldl	8(%edx)
	fldl	16(%edx)
	fldl	24(%edx)
	fld1
	fdivl	16(%esp)
	jmp	.L3
	.p2align 4,,7
	.p2align 3
.L5:
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(4)
.L3:
	fld	%st(2)
	subl	$1, %eax
	fadd	%st(4), %st
	fsub	%st(2), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fmul	%st(5), %st
	fxch	%st(3)
	fadd	%st(1), %st
	fsub	%st(2), %st
	fadd	%st(3), %st
	fmul	%st(5), %st
	fxch	%st(2)
	fadd	%st(1), %st
	fadd	%st(3), %st
	fsub	%st(2), %st
	fmul	%st(5), %st
	fxch	%st(1)
	fsub	%st(3), %st
	fadd	%st(2), %st
	fadd	%st(1), %st
	fmul	%st(4), %st
	jne	.L5
	fstp	%st(5)
	fstp	%st(3)
	fxch	%st(2)
	fxch	%st(1)
	fstpl	(%edx)
	fxch	%st(1)
	fstpl	8(%edx)
	fstpl	16(%edx)
	fstpl	24(%edx)
	ret
	.cfi_endproc
.LFE42:
	.size	pa, .-pa
	.p2align 4,,15
	.globl	po
	.type	po, @function
po:
.LFB43:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	movl	20(%esp), %ebx
	leal	(%eax,%ecx,8), %ecx
	leal	(%eax,%edx,8), %edx
	fldl	(%ecx)
	fstpl	(%edx)
	leal	(%eax,%ebx,8), %eax
	fldl	(%eax)
	fstpl	(%ecx)
	fldl	(%edx)
	fstpl	(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE43:
	.size	po, .-po
	.p2align 4,,15
	.globl	p3
	.type	p3, @function
p3:
.LFB44:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	fldl	(%edx)
	fstpl	(%eax)
	fldl	(%ecx)
	fstl	(%edx)
	faddl	(%eax)
	fmull	16(%esp)
	fstl	(%eax)
	faddl	(%edx)
	fmull	24(%esp)
	fstl	(%edx)
	faddl	(%eax)
	fdivl	32(%esp)
	fstpl	(%ecx)
	ret
	.cfi_endproc
.LFE44:
	.size	p3, .-p3
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%s %24.17f    "
.LC6:
	.string	" %9.3f          %9.3f\n"
.LC7:
	.string	"           %9.3f%9.3f\n"
	.text
	.p2align 4,,15
	.globl	pout
	.type	pout, @function
pout:
.LFB45:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	flds	84(%esp)
	fstps	44(%esp)
	movl	112(%esp), %ebx
	fldl	92(%esp)
	fldl	100(%esp)
	fld	%st(1)
	movl	108(%esp), %esi
	fstpl	32(%esp)
	fxch	%st(1)
	movl	88(%esp), %ebp
	faddl	Check
	leal	(%ebx,%ebx,8), %eax
	leal	headings(%eax,%eax), %edi
	movl	80(%esp), %eax
	movl	%edi, (%esp)
	fstpl	Check
	fstl	loop_time(,%ebx,8)
	movl	%eax, 4(%esp)
	fstpl	24(%esp)
	call	strcpy
	cmpl	$1, %esi
	fldl	24(%esp)
	fldl	TimeUsed
	fadd	%st(1), %st
	fstpl	TimeUsed
	fldl	32(%esp)
	je	.L25
	fstp	%st(0)
	testl	%esi, %esi
	fstpl	24(%esp)
	jne	.L9
	fldl	results(,%ebx,8)
	fstpl	12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC3, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	cmpl	$1, %ebp
	fldz
	fld	%st(0)
	fldl	24(%esp)
	je	.L26
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	.L22
	fstp	%st(1)
	fmuls	.LC4
	fdivrs	44(%esp)
.L15:
	fstl	loop_mops(,%ebx,8)
	fldz
	fstpl	loop_mflops(,%ebx,8)
	fldl	loop_time(,%ebx,8)
	fstpl	96(%esp)
	fstpl	88(%esp)
	movl	$.LC7, 84(%esp)
.L24:
	movl	$1, 80(%esp)
	addl	$60, %esp
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
	jmp	__printf_chk
	.p2align 4,,7
	.p2align 3
.L25:
	.cfi_restore_state
	fstp	%st(1)
	fstpl	results(,%ebx,8)
.L9:
	addl	$60, %esp
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
	.p2align 4,,7
	.p2align 3
.L26:
	.cfi_restore_state
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	.L21
	fstp	%st(1)
	fmuls	.LC4
	fdivrs	44(%esp)
.L13:
	flds	.LC5
	fstpl	loop_mops(,%ebx,8)
	fstl	loop_mflops(,%ebx,8)
	fldl	loop_time(,%ebx,8)
	fstpl	96(%esp)
	fstpl	88(%esp)
	movl	$.LC6, 84(%esp)
	jmp	.L24
	.p2align 4,,7
	.p2align 3
.L22:
	fstp	%st(0)
	jmp	.L15
	.p2align 4,,7
	.p2align 3
.L21:
	fstp	%st(0)
	jmp	.L13
	.cfi_endproc
.LFE45:
	.size	pout, .-pout
	.p2align 4,,15
	.globl	dtime
	.type	dtime, @function
dtime:
.LFB46:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$rusage, 4(%esp)
	movl	$0, (%esp)
	call	getrusage
	fildl	rusage
	fildl	rusage+4
	fmull	.LC8
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	faddp	%st, %st(1)
	ret
	.cfi_endproc
.LFE46:
	.size	dtime, .-dtime
	.section	.rodata
.LC19:
	.string	"N8 exp,sqrt etc. "
	.string	""
.LC21:
	.string	"N1 floating point"
	.string	""
.LC22:
	.string	"N2 floating point"
	.string	""
.LC23:
	.string	"N3 if then else  "
	.string	""
.LC24:
	.string	"N4 fixed point   "
	.string	""
.LC25:
	.string	"N5 sin,cos etc.  "
	.string	""
.LC26:
	.string	"N6 floating point"
	.string	""
.LC28:
	.string	"N7 assignments   "
	.string	""
	.text
	.p2align 4,,15
	.globl	whetstones
	.type	whetstones, @function
whetstones:
.LFB41:
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
	subl	$140, %esp
	.cfi_def_cfa_offset 160
	movl	164(%esp), %eax
	fldz
	fstpl	Check
	fld1
	fstpl	96(%esp)
	movl	%eax, %ebx
	leal	(%eax,%eax), %edx
	sall	$4, %ebx
	leal	(%edx,%eax), %esi
	subl	%edx, %ebx
	imull	$345, %eax, %edx
	fld1
	fchs
	fstl	104(%esp)
	movl	%edx, 56(%esp)
	imull	$210, %eax, %edx
	fstl	112(%esp)
	imull	$616, %eax, %ebp
	movl	%edx, 64(%esp)
	movl	%eax, %edx
	sall	$5, %edx
	movl	%edx, 68(%esp)
	imull	$899, %eax, %edx
	imull	$93, %eax, %eax
	fstpl	120(%esp)
	movl	%edx, 72(%esp)
	leal	0(,%esi,4), %edi
	movl	%eax, 76(%esp)
	call	dtime
	movl	160(%esp), %eax
	testl	%eax, %eax
	fstpl	40(%esp)
	jle	.L30
	fldl	96(%esp)
	movl	%esi, %eax
	xorl	%ecx, %ecx
	fldl	104(%esp)
	sall	$4, %eax
	fldl	112(%esp)
	addl	%edi, %eax
	fldl	120(%esp)
	leal	(%eax,%eax), %edx
	movl	160(%esp), %esi
	fldl	.LC9
	fld1
	jmp	.L31
	.p2align 4,,7
	.p2align 3
.L74:
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(4)
	fxch	%st(5)
.L31:
	testl	%edx, %edx
	jle	.L72
	xorl	%eax, %eax
	jmp	.L35
	.p2align 4,,7
	.p2align 3
.L73:
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(4)
	fxch	%st(5)
.L35:
	fld	%st(4)
	addl	$1, %eax
	fadd	%st(4), %st
	cmpl	%edx, %eax
	fsub	%st(3), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fmul	%st(1), %st
	fxch	%st(4)
	fadd	%st(2), %st
	fsub	%st(3), %st
	fadd	%st(4), %st
	fmul	%st(1), %st
	fxch	%st(3)
	fadd	%st(2), %st
	fadd	%st(4), %st
	fsub	%st(3), %st
	fmul	%st(1), %st
	fxch	%st(2)
	fsub	%st(4), %st
	fadd	%st(3), %st
	fadd	%st(2), %st
	fmul	%st(1), %st
	jne	.L73
	fxch	%st(1)
	jmp	.L34
.L72:
	fxch	%st(5)
	fxch	%st(4)
	fxch	%st(3)
	fxch	%st(2)
	fxch	%st(1)
	.p2align 4,,7
	.p2align 3
.L34:
	addl	$1, %ecx
	cmpl	%esi, %ecx
	fsubr	%st(5), %st
	jne	.L74
	fstp	%st(0)
	fstp	%st(4)
	fxch	%st(1)
	fxch	%st(2)
	fstpl	96(%esp)
	fxch	%st(1)
	xorl	%esi, %esi
	fstpl	104(%esp)
	fstpl	112(%esp)
	fstpl	120(%esp)
	call	dtime
	sall	$4, %edi
	movl	168(%esp), %eax
	movl	%edi, 92(%esp)
	leal	96(%esp), %edi
	movl	$1, 32(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 28(%esp)
	movl	$.LC21, (%esp)
	fildl	160(%esp)
	fsts	52(%esp)
	fxch	%st(1)
	fsubl	40(%esp)
	fmull	.LC20
	fstpl	20(%esp)
	fldl	120(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmulp	%st, %st(1)
	fstps	4(%esp)
	call	pout
	call	dtime
	movl	%ebp, 88(%esp)
	fstpl	80(%esp)
	fldl	.LC9
	fstpl	40(%esp)
	.p2align 4,,7
	.p2align 3
.L62:
	testl	%ebx, %ebx
	jle	.L38
	xorl	%ebp, %ebp
	.p2align 4,,7
	.p2align 3
.L39:
	flds	.LC14
	addl	$1, %ebp
	fstpl	12(%esp)
	fldl	40(%esp)
	fstpl	4(%esp)
	movl	%edi, (%esp)
	call	pa
	cmpl	%ebx, %ebp
	jne	.L39
.L38:
	fldl	40(%esp)
	addl	$1, %esi
	fsubrs	.LC0
	cmpl	160(%esp), %esi
	fstpl	40(%esp)
	jne	.L62
	movl	88(%esp), %ebp
	call	dtime
	movl	168(%esp), %eax
	movl	$2, 32(%esp)
	movl	$1, 8(%esp)
	movl	$.LC22, (%esp)
	movl	%eax, 28(%esp)
	leal	(%ebx,%ebx,2), %eax
	movl	$1, %ebx
	sall	$5, %eax
	fsubl	80(%esp)
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	120(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	movl	56(%esp), %ecx
	xorl	%edx, %edx
	movl	160(%esp), %esi
	fstpl	40(%esp)
	.p2align 4,,7
	.p2align 3
.L63:
	testl	%ecx, %ecx
	jle	.L42
	xorl	%eax, %eax
	.p2align 4,,7
	.p2align 3
.L43:
	addl	$1, %eax
	xorl	$1, %ebx
	cmpl	%ecx, %eax
	jne	.L43
.L42:
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L63
	call	dtime
	movl	168(%esp), %eax
	movl	%ebx, 92(%esp)
	movl	$3, 32(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 28(%esp)
	movl	56(%esp), %eax
	movl	$.LC23, (%esp)
	fsubl	40(%esp)
	leal	(%eax,%eax,2), %eax
	fstpl	20(%esp)
	fildl	92(%esp)
	fstpl	12(%esp)
	movl	%eax, 92(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	movl	64(%esp), %edx
	xorl	%eax, %eax
	movl	160(%esp), %ebx
	fstpl	40(%esp)
	fldl	96(%esp)
	fldl	104(%esp)
	flds	.LC10
	fxch	%st(1)
	jmp	.L64
	.p2align 4,,7
	.p2align 3
.L75:
	fxch	%st(2)
.L64:
	testl	%edx, %edx
	setle	%cl
	testb	%cl, %cl
	fcmove	%st(1), %st
	fxch	%st(2)
	testb	%cl, %cl
	fcmove	%st(1), %st
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L75
	fstp	%st(1)
	fstpl	96(%esp)
	fstpl	104(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	64(%esp), %esi
	movl	$4, 32(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	fsubl	40(%esp)
	movl	$.LC24, (%esp)
	sall	$4, %eax
	subl	%esi, %eax
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	96(%esp)
	faddl	104(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	movl	68(%esp), %ecx
	xorl	%edx, %edx
	movl	160(%esp), %ebx
	fstpl	56(%esp)
	fldl	.LC9
	flds	.LC11
	fld	%st(0)
	fld1
	fchs
	jmp	.L65
	.p2align 4,,7
	.p2align 3
.L78:
	fstp	%st(0)
	fxch	%st(1)
.L65:
	cmpl	$1, %ecx
	jle	.L76
	movl	$1, %eax
	jmp	.L49
	.p2align 4,,7
	.p2align 3
.L77:
	fxch	%st(1)
.L49:
	fld	%st(1)
	addl	$1, %eax
	fsincos
	cmpl	%ecx, %eax
	fstpl	40(%esp)
	fld	%st(3)
	fsincos
	fld	%st(5)
	fadd	%st(5), %st
	fcos
	fxch	%st(6)
	fsub	%st(5), %st
	fcos
	fxch	%st(1)
	fmulp	%st, %st(2)
	fxch	%st(1)
	fadd	%st(0), %st
	fxch	%st(5)
	faddp	%st, %st(1)
	fadd	%st(2), %st
	fdivrp	%st, %st(4)
	fld1
	fld	%st(0)
	fxch	%st(5)
	fxch	%st(1)
	fpatan
	fmul	%st(5), %st
	fld	%st(0)
	fadd	%st(4), %st
	fcos
	fxch	%st(4)
	fsubr	%st(1), %st
	fcos
	fxch	%st(2)
	fmull	40(%esp)
	fadd	%st(0), %st
	fxch	%st(4)
	faddp	%st, %st(2)
	fxch	%st(1)
	fadd	%st(2), %st
	fdivrp	%st, %st(3)
	fxch	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	fpatan
	fmul	%st(3), %st
	jne	.L77
	jmp	.L48
.L76:
	fxch	%st(1)
	.p2align 4,,7
	.p2align 3
.L48:
	addl	$1, %edx
	fld1
	cmpl	%ebx, %edx
	fsub	%st, %st(4)
	jne	.L78
	fstp	%st(3)
	fstp	%st(3)
	fstp	%st(0)
	fstps	64(%esp)
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$5, 32(%esp)
	movl	$2, 8(%esp)
	movl	$.LC25, (%esp)
	movl	%eax, 28(%esp)
	imull	$26, 68(%esp), %eax
	fsubl	56(%esp)
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	40(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	movl	72(%esp), %ecx
	xorl	%edx, %edx
	movl	160(%esp), %ebx
	fstpl	40(%esp)
	flds	64(%esp)
	fld	%st(0)
	fldl	.LC9
	jmp	.L66
	.p2align 4,,7
	.p2align 3
.L81:
	fxch	%st(1)
	fxch	%st(2)
.L66:
	testl	%ecx, %ecx
	jle	.L79
	xorl	%eax, %eax
	jmp	.L53
	.p2align 4,,7
	.p2align 3
.L80:
	fxch	%st(1)
	fxch	%st(2)
.L53:
	fxch	%st(2)
	addl	$1, %eax
	fadd	%st(1), %st
	cmpl	%ecx, %eax
	fmul	%st(2), %st
	fadd	%st, %st(1)
	fldl	.LC15
	fmulp	%st, %st(2)
	fadd	%st(1), %st
	fmuls	.LC11
	jne	.L80
	jmp	.L52
.L79:
	fxch	%st(2)
	fxch	%st(1)
	.p2align 4,,7
	.p2align 3
.L52:
	addl	$1, %edx
	cmpl	%ebx, %edx
	jne	.L81
	fstp	%st(1)
	fstp	%st(1)
	fstpl	56(%esp)
	xorl	%esi, %esi
	call	dtime
	movl	168(%esp), %eax
	leal	96(%esp), %ebx
	movl	$6, 32(%esp)
	movl	$1, 8(%esp)
	movl	$.LC26, (%esp)
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	fsubl	40(%esp)
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	56(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	fld1
	fstpl	96(%esp)
	flds	.LC14
	fstpl	104(%esp)
	flds	.LC27
	fstpl	112(%esp)
	call	dtime
	fstpl	40(%esp)
	.p2align 4,,7
	.p2align 3
.L67:
	testl	%ebp, %ebp
	jle	.L56
	xorl	%edi, %edi
	.p2align 4,,7
	.p2align 3
.L57:
	movl	$2, 12(%esp)
	addl	$1, %edi
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	po
	cmpl	%ebp, %edi
	jne	.L57
.L56:
	addl	$1, %esi
	cmpl	160(%esp), %esi
	jne	.L67
	call	dtime
	movl	168(%esp), %eax
	movl	$7, 32(%esp)
	movl	$2, 8(%esp)
	movl	$.LC28, (%esp)
	movl	%eax, 28(%esp)
	leal	0(%ebp,%ebp,2), %eax
	movl	%eax, 92(%esp)
	fsubl	40(%esp)
	fstpl	20(%esp)
	fldl	112(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	movl	76(%esp), %ecx
	xorl	%edx, %edx
	movl	160(%esp), %ebx
	fstpl	40(%esp)
	flds	.LC12
	fldln2
	jmp	.L68
	.p2align 4,,7
	.p2align 3
.L84:
	fxch	%st(1)
.L68:
	testl	%ecx, %ecx
	jle	.L82
	xorl	%eax, %eax
	jmp	.L61
	.p2align 4,,7
	.p2align 3
.L83:
	fxch	%st(1)
.L61:
	fld	%st(0)
	fxch	%st(2)
	addl	$1, %eax
	fyl2x
	cmpl	%ecx, %eax
	fmull	.LC17
	fldl2e
	fmulp	%st, %st(1)
	fld	%st(0)
	frndint
	fsubr	%st, %st(1)
	fxch	%st(1)
	f2xm1
	fadds	.LC0
	fscale
	fstp	%st(1)
	jne	.L83
	jmp	.L60
.L82:
	fxch	%st(1)
	.p2align 4,,7
	.p2align 3
.L60:
	addl	$1, %edx
	cmpl	%ebx, %edx
	jne	.L84
	fstp	%st(1)
.L59:
	fstpl	56(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$8, 32(%esp)
	movl	$2, 8(%esp)
	movl	$.LC19, (%esp)
	movl	%eax, 28(%esp)
	movl	76(%esp), %eax
	fsubl	40(%esp)
	sall	$2, %eax
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	56(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	addl	$140, %esp
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
.L30:
	.cfi_restore_state
	call	dtime
	movl	168(%esp), %eax
	movl	$1, 32(%esp)
	movl	$1, 8(%esp)
	movl	$.LC21, (%esp)
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	sall	$6, %eax
	fildl	160(%esp)
	fxch	%st(1)
	fsubl	40(%esp)
	movl	%eax, 92(%esp)
	fmull	.LC20
	fstpl	20(%esp)
	fldl	120(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fxch	%st(1)
	fsts	52(%esp)
	fmulp	%st, %st(1)
	fstps	4(%esp)
	call	pout
	call	dtime
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$2, 32(%esp)
	movl	$1, 8(%esp)
	movl	$.LC22, (%esp)
	movl	%eax, 28(%esp)
	leal	(%ebx,%ebx,2), %eax
	sall	$5, %eax
	fsubl	40(%esp)
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	120(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$3, 32(%esp)
	movl	$2, 8(%esp)
	movl	$.LC23, (%esp)
	movl	%eax, 28(%esp)
	movl	56(%esp), %eax
	fsubl	40(%esp)
	leal	(%eax,%eax,2), %eax
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fld1
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	64(%esp), %esi
	movl	$4, 32(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	fsubl	40(%esp)
	movl	$.LC24, (%esp)
	sall	$4, %eax
	subl	%esi, %eax
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fldl	96(%esp)
	faddl	104(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$5, 32(%esp)
	movl	$2, 8(%esp)
	movl	$.LC25, (%esp)
	movl	%eax, 28(%esp)
	imull	$26, 68(%esp), %eax
	fsubl	40(%esp)
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	flds	.LC11
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$6, 32(%esp)
	movl	$1, 8(%esp)
	movl	$.LC26, (%esp)
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	fsubl	40(%esp)
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	movl	%eax, 92(%esp)
	fstpl	20(%esp)
	fld1
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	fld1
	fstpl	96(%esp)
	flds	.LC14
	fstpl	104(%esp)
	flds	.LC27
	fstpl	112(%esp)
	call	dtime
	fstpl	40(%esp)
	call	dtime
	movl	168(%esp), %eax
	movl	$7, 32(%esp)
	movl	$2, 8(%esp)
	movl	$.LC28, (%esp)
	movl	%eax, 28(%esp)
	leal	0(%ebp,%ebp,2), %eax
	movl	%eax, 92(%esp)
	fsubl	40(%esp)
	fstpl	20(%esp)
	fldl	112(%esp)
	fstpl	12(%esp)
	fildl	92(%esp)
	fmuls	52(%esp)
	fstps	4(%esp)
	call	pout
	call	dtime
	fstpl	40(%esp)
	flds	.LC12
	jmp	.L59
	.cfi_endproc
.LFE41:
	.size	whetstones, .-whetstones
	.section	.rodata.str1.1
.LC29:
	.string	"Calibrate\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC30:
	.string	"%11.2f Seconds %10.0f   Passes (x 100)\n"
	.section	.rodata.str1.1
.LC31:
	.string	"\nUse %ld  passes (x 100)\n"
.LC32:
	.string	"Double"
	.section	.rodata.str1.4
	.align 4
.LC33:
	.string	"\n          %s Precision C/C++ Whetstone Benchmark"
	.section	.rodata.str1.1
.LC34:
	.string	"\n"
	.section	.rodata.str1.4
	.align 4
.LC35:
	.string	"\nLoop content                  Result              MFLOPS      MOPS   Seconds\n\n"
	.section	.rodata.str1.1
.LC36:
	.string	"\nMWIPS            "
.LC39:
	.string	"%39.3f%19.3f\n\n"
.LC40:
	.string	"Wrong answer  "
.LC41:
	.string	"COUNT|%.3f|0|MWIPS\n"
.LC42:
	.string	"TIME|%.3f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	$1, %esi
	pushl	%ebx
	.cfi_offset 3, -16
	movl	$1, %ebx
	andl	$-16, %esp
	subl	$48, %esp
	movl	$.LC29, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	jmp	.L87
	.p2align 4,,7
	.p2align 3
.L105:
	cmpl	$11, %esi
	leal	(%ebx,%ebx,4), %ebx
	je	.L86
	fstp	%st(0)
.L87:
	fldz
	movl	%esi, 8(%esp)
	fstpl	TimeUsed
	addl	$1, %esi
	movl	$100, 4(%esp)
	movl	%ebx, (%esp)
	call	whetstones
	movl	%ebx, 44(%esp)
	movl	$.LC30, 4(%esp)
	movl	$1, (%esp)
	fildl	44(%esp)
	fstpl	16(%esp)
	fldl	TimeUsed
	fstpl	8(%esp)
	call	__printf_chk
	fldl	TimeUsed
	flds	.LC11
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	.L105
.L86:
	fldz
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	.L107
	leal	(%ebx,%ebx,4), %eax
	addl	%eax, %eax
	movl	%eax, 44(%esp)
	fildl	44(%esp)
	fdivp	%st, %st(1)
	fnstcw	42(%esp)
	movzwl	42(%esp), %eax
	movb	$12, %ah
	movw	%ax, 40(%esp)
	movl	$1, %eax
	fldcw	40(%esp)
	fistpl	44(%esp)
	fldcw	42(%esp)
	movl	44(%esp), %ebx
	testl	%ebx, %ebx
	cmovle	%eax, %ebx
	jmp	.L90
.L107:
	fstp	%st(0)
.L90:
	movl	%ebx, 8(%esp)
	movl	$.LC31, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC32, 8(%esp)
	movl	$.LC33, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC34, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC35, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$0, 8(%esp)
	movl	$100, 4(%esp)
	movl	%ebx, (%esp)
	fldz
	fstl	TimeUsed
	fstps	36(%esp)
	call	whetstones
	movl	$.LC36, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	fldl	TimeUsed
	flds	36(%esp)
	fld	%st(0)
	fxch	%st(2)
	fcomi	%st(2), %st
	fstp	%st(2)
	jbe	.L103
	fstp	%st(0)
	movl	%ebx, 44(%esp)
	fildl	44(%esp)
	fmuls	.LC37
	fld	%st(1)
	fmuls	.LC38
	fdivrp	%st, %st(1)
	fstl	mwips
	fxch	%st(1)
.L93:
	fstpl	16(%esp)
	fstpl	8(%esp)
	movl	$.LC39, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	fldz
	fldl	Check
	fcomip	%st(1), %st
	fstp	%st(0)
	je	.L106
.L94:
	movl	stderr, %eax
	fldl	mwips
	fstpl	12(%esp)
	movl	$.LC41, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC42, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	fldl	TimeUsed
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	$0, (%esp)
	call	exit
.L106:
	movl	$.LC40, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	jmp	.L94
.L103:
	fstl	mwips
	fxch	%st(1)
	jmp	.L93
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.comm	rusage,72,32
	.local	results
	.comm	results,72,32
	.local	Check
	.comm	Check,8,8
	.local	headings
	.comm	headings,162,32
	.local	mwips
	.comm	mwips,8,8
	.local	TimeUsed
	.comm	TimeUsed,8,8
	.local	loop_mflops
	.comm	loop_mflops,72,32
	.local	loop_mops
	.comm	loop_mops,72,32
	.local	loop_time
	.comm	loop_time,72,32
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC4:
	.long	1232348160
	.align 4
.LC5:
	.long	1203982208
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC9:
	.long	-208632331
	.long	1071644670
	.section	.rodata.cst4
	.align 4
.LC10:
	.long	1086324736
	.align 4
.LC11:
	.long	1056964608
	.align 4
.LC12:
	.long	1061158912
	.align 4
.LC14:
	.long	1073741824
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	-2043167482
	.long	1071644672
	.align 8
.LC17:
	.long	-208630080
	.long	1072693246
	.align 8
.LC20:
	.long	-1717986918
	.long	1069128089
	.section	.rodata.cst4
	.align 4
.LC27:
	.long	1077936128
	.align 4
.LC37:
	.long	1120403456
	.align 4
.LC38:
	.long	1092616192
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
