	.file	"whetstone.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"-c"
.LC6:
	.string	"usage: whetdc [-c] [loops]\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC10:
	.string	"Insufficient duration- Increase the LOOP count"
	.align 4
.LC11:
	.string	"Loops: %ld, Iterations: %d, Duration: %ld sec.\n"
	.align 4
.LC14:
	.string	"C Converted Double Precision Whetstones: %.1f MIPS\n"
	.align 4
.LC15:
	.string	"C Converted Double Precision Whetstones: %.1f KIPS\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB83:
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
	subl	$80, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpl	$1, 8(%ebp)
	movl	$0, 60(%esp)
	movl	$1000, 64(%esp)
	jle	.L2
	movl	$1, %ebx
	jmp	.L6
	.p2align 4,,7
	.p2align 3
.L51:
	cmpb	$99, (%eax)
	je	.L40
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	strtol
	testl	%eax, %eax
	jle	.L4
	movl	12(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	(%eax,%ebx,4), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	strtol
	cmpl	8(%ebp), %ebx
	movl	%eax, 64(%esp)
	je	.L2
.L6:
	movl	12(%ebp), %eax
	movl	$.LC5, %edi
	movl	$2, %ecx
	movl	(%eax,%ebx,4), %eax
	movl	%eax, %esi
	repz cmpsb
	jne	.L51
.L40:
	addl	$1, %ebx
	cmpl	8(%ebp), %ebx
	movl	$1, 60(%esp)
	jne	.L6
.L2:
	movl	64(%esp), %ebx
	movl	%ebx, %eax
	addl	%eax, %eax
	leal	(%eax,%ebx), %edx
	leal	0(,%edx,4), %edi
	movl	%edi, %ecx
	movl	%edi, 32(%esp)
	movl	%ebx, %edi
	sall	$4, %ebx
	movl	%ebx, 40(%esp)
	subl	%eax, 40(%esp)
	imull	$345, %edi, %eax
	movl	%eax, 36(%esp)
	imull	$210, %edi, %eax
	movl	%eax, 56(%esp)
	imull	$616, %edi, %eax
	movl	%eax, 52(%esp)
	imull	$93, %edi, %eax
	movl	%eax, 48(%esp)
	leal	1(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	40(%esp), %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	.p2align 4,,7
	.p2align 3
.L37:
	movl	$0, (%esp)
	call	time
	movl	32(%esp), %edi
	testl	%edi, %edi
	fldl	.LC7
	fstl	T
	fldl	.LC8
	fstpl	T1
	flds	.LC3
	fstpl	T2
	fld1
	fld1
	fchs
	fstl	E1+16
	movl	%eax, 44(%esp)
	fstl	E1+24
	fstl	E1+32
	fld	%st(0)
	fld	%st(1)
	jle	.L55
	fxch	%st(3)
	movl	28(%esp), %edx
	movl	$1, %eax
	jmp	.L9
	.p2align 4,,7
	.p2align 3
.L56:
	fxch	%st(1)
	fxch	%st(3)
	fxch	%st(2)
.L9:
	fadd	%st(2), %st
	addl	$1, %eax
	cmpl	%edx, %eax
	fadd	%st(3), %st
	fsub	%st(1), %st
	fmul	%st(4), %st
	fadd	%st, %st(2)
	fxch	%st(2)
	fsub	%st(3), %st
	fadd	%st(1), %st
	fmul	%st(4), %st
	fld	%st(2)
	fsub	%st(1), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	fadd	%st(1), %st
	fmul	%st(4), %st
	fld	%st(3)
	fsub	%st(3), %st
	fadd	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fmul	%st(4), %st
	jne	.L56
	fstp	%st(4)
	fxch	%st(1)
	fxch	%st(2)
	fstl	E1+16
	fxch	%st(1)
	fstl	E1+24
	fxch	%st(3)
	fstl	E1+32
	jmp	.L7
.L55:
	fstp	%st(4)
	.p2align 4,,7
	.p2align 3
.L7:
	movl	40(%esp), %esi
	testl	%esi, %esi
	jle	.L57
	fldl	E1+16
	movl	$1, %eax
	fldl	E1+24
	fldl	E1+32
	fldl	.LC7
	fxch	%st(6)
	movl	24(%esp), %edx
	jmp	.L15
	.p2align 4,,7
	.p2align 3
.L13:
	fld	%st(1)
	fld	%st(5)
	fld	%st(4)
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(4)
	fxch	%st(5)
	fxch	%st(4)
.L15:
	faddp	%st, %st(5)
	fxch	%st(4)
	addl	$1, %eax
	cmpl	%edx, %eax
	fadd	%st(6), %st
	fsub	%st(3), %st
	fmul	%st(5), %st
	fadd	%st, %st(2)
	fxch	%st(2)
	fsubp	%st, %st(1)
	faddp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(3), %st
	fld	%st(2)
	fsub	%st(1), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fadd	%st(1), %st
	fmul	%st(3), %st
	fld	%st(4)
	fsub	%st(3), %st
	fadd	%st(1), %st
	faddp	%st, %st(2)
	flds	.LC9
	fmul	%st, %st(2)
	fxch	%st(3)
	fadd	%st(5), %st
	fadd	%st(1), %st
	fsub	%st(2), %st
	fmul	%st(4), %st
	fadd	%st, %st(5)
	fxch	%st(5)
	fsub	%st(1), %st
	fadd	%st(2), %st
	fmul	%st(4), %st
	fld	%st(5)
	fsub	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fadd	%st(2), %st
	fmul	%st(4), %st
	fld	%st(1)
	fsub	%st(6), %st
	fadd	%st(1), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(3), %st
	fxch	%st(5)
	fadd	%st(1), %st
	fadd	%st(2), %st
	fsub	%st(5), %st
	fmul	%st(4), %st
	fadd	%st, %st(1)
	fxch	%st(1)
	fsub	%st(2), %st
	fadd	%st(5), %st
	fmul	%st(4), %st
	fld	%st(1)
	fsub	%st(1), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fadd	%st(5), %st
	fmul	%st(4), %st
	fld	%st(2)
	fsub	%st(2), %st
	fadd	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fmul	%st(3), %st
	fxch	%st(1)
	fadd	%st(2), %st
	fadd	%st(5), %st
	fsub	%st(1), %st
	fmul	%st(4), %st
	fadd	%st, %st(2)
	fxch	%st(2)
	fsub	%st(5), %st
	fadd	%st(1), %st
	fmul	%st(4), %st
	fld	%st(2)
	fsub	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fadd	%st(1), %st
	fmul	%st(4), %st
	fld	%st(5)
	fsub	%st(3), %st
	fadd	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fmul	%st(3), %st
	fxch	%st(2)
	fadd	%st(5), %st
	fadd	%st(1), %st
	fsub	%st(2), %st
	fmul	%st(4), %st
	fadd	%st, %st(5)
	fxch	%st(5)
	fsub	%st(1), %st
	fadd	%st(2), %st
	fmul	%st(4), %st
	fld	%st(5)
	fsub	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fadd	%st(2), %st
	fmul	%st(4), %st
	fld	%st(1)
	fsub	%st(6), %st
	fadd	%st(1), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(3), %st
	fxch	%st(5)
	fadd	%st(1), %st
	fadd	%st(2), %st
	fsub	%st(5), %st
	fmul	%st(4), %st
	fadd	%st, %st(1)
	fxch	%st(1)
	fsub	%st(2), %st
	fadd	%st(5), %st
	fmul	%st(4), %st
	fld	%st(1)
	fsub	%st(1), %st
	faddp	%st, %st(3)
	fxch	%st(2)
	fadd	%st(5), %st
	fmul	%st(4), %st
	fld	%st(2)
	fsub	%st(2), %st
	fadd	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fmulp	%st, %st(3)
	jne	.L13
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(1)
	fstp	%st(1)
	fstpl	E1+32
	jmp	.L14
.L57:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L14:
	movl	36(%esp), %edi
	movl	$1, %eax
	testl	%edi, %edi
	leal	1(%edi), %edx
	jle	.L12
	.p2align 4,,7
	.p2align 3
.L45:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L45
.L12:
	movl	56(%esp), %ebx
	testl	%ebx, %ebx
	jle	.L17
	movl	56(%esp), %eax
	movl	$2, %edi
	movl	$3, %edx
	movl	$1, %esi
	movl	$2, %ecx
	movl	$1, %ebx
	addl	$1, %eax
	movl	%eax, 68(%esp)
	jmp	.L24
	.p2align 4,,7
	.p2align 3
.L52:
	movl	%eax, %esi
.L24:
	movl	%ecx, %eax
	addl	$1, %ebx
	subl	%esi, %eax
	imull	%esi, %eax
	movl	%edx, %esi
	subl	%ecx, %esi
	imull	%esi, %eax
	imull	%eax, %edi
	leal	(%eax,%edi), %esi
	subl	%edi, %edx
	imull	%esi, %edx
	movl	%edi, %ecx
	addl	%edx, %esi
	movl	%esi, 72(%esp)
	movl	%eax, %esi
	imull	%edi, %esi
	fildl	72(%esp)
	fstpl	E1-8(,%edx,8)
	imull	%edx, %esi
	cmpl	68(%esp), %ebx
	movl	%esi, 72(%esp)
	fildl	72(%esp)
	fstpl	E1-8(,%edi,8)
	jne	.L52
.L17:
	fld1
	movl	52(%esp), %ecx
	fstpl	E1+8
	flds	.LC3
	fstl	E1+16
	testl	%ecx, %ecx
	movl	$3, L
	flds	.LC2
	fstl	E1+24
	jle	.L58
	movl	52(%esp), %eax
	leal	1(%eax), %edx
	movl	$1, %eax
	jmp	.L28
	.p2align 4,,7
	.p2align 3
.L27:
	fxch	%st(1)
.L28:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L27
	fxch	%st(1)
	fstl	E1+8
	fxch	%st(1)
	fstpl	E1+16
	fstpl	E1+24
	jmp	.L22
.L58:
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L22:
	movl	48(%esp), %edx
	movl	$2, J
	movl	$3, K
	testl	%edx, %edx
	jle	.L26
	movl	48(%esp), %esi
	movl	$1, %ebx
	flds	.LC4
	.p2align 4,,7
	.p2align 3
.L33:
	fstpl	(%esp)
	call	log
	fdivl	T1
	fstpl	(%esp)
	call	exp
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L53
	fstp	%st(1)
.L31:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jle	.L33
	fstp	%st(0)
.L26:
	movl	$0, (%esp)
	call	time
	movl	$10, (%esp)
	movl	%eax, %ebx
	call	putchar
	subl	44(%esp), %ebx
	testl	%ebx, %ebx
	jle	.L54
	movl	64(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$1, 12(%esp)
	movl	$.LC11, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 72(%esp)
	fildl	64(%esp)
	fmuls	.LC12
	fildl	72(%esp)
	fdivrp	%st, %st(1)
	fstps	76(%esp)
	flds	76(%esp)
	flds	.LC13
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L47
	fdivp	%st, %st(1)
	movl	$.LC14, 4(%esp)
	movl	$1, (%esp)
	fstpl	8(%esp)
	call	__printf_chk
.L36:
	movl	60(%esp), %eax
	testl	%eax, %eax
	jne	.L37
	xorl	%eax, %eax
.L5:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,7
	.p2align 3
.L47:
	.cfi_restore_state
	fstp	%st(1)
	fstpl	8(%esp)
	movl	$.LC15, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	jmp	.L36
.L54:
	movl	$.LC10, (%esp)
	call	puts
	movl	$1, %eax
	jmp	.L5
.L4:
	movl	stderr, %eax
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC6, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	$1, %eax
	jmp	.L5
.L53:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L31
	.cfi_endproc
.LFE83:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	PA
	.type	PA, @function
PA:
.LFB84:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$6, J
	fldl	16(%eax)
	fldl	24(%eax)
	fldl	32(%eax)
	fldl	T
	fldl	T2
	fldl	8(%eax)
	fadd	%st(5), %st
	fadd	%st(4), %st
	fsub	%st(3), %st
	fmul	%st(2), %st
	fadd	%st, %st(5)
	fxch	%st(5)
	fsub	%st(4), %st
	fadd	%st(3), %st
	fmul	%st(2), %st
	fld	%st(5)
	fsub	%st(1), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fadd	%st(3), %st
	fmul	%st(2), %st
	fld	%st(4)
	fsub	%st(6), %st
	fadd	%st(1), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	fdiv	%st(1), %st
	fxch	%st(5)
	fadd	%st(4), %st
	fadd	%st(3), %st
	fsub	%st(5), %st
	fmul	%st(2), %st
	fadd	%st, %st(4)
	fxch	%st(4)
	fsub	%st(3), %st
	fadd	%st(5), %st
	fmul	%st(2), %st
	fld	%st(4)
	fsub	%st(1), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	fadd	%st(5), %st
	fmul	%st(2), %st
	fld	%st(3)
	fsub	%st(5), %st
	fadd	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fdiv	%st(1), %st
	fxch	%st(4)
	fadd	%st(3), %st
	fadd	%st(5), %st
	fsub	%st(4), %st
	fmul	%st(2), %st
	fadd	%st, %st(3)
	fxch	%st(3)
	fsub	%st(5), %st
	fadd	%st(4), %st
	fmul	%st(2), %st
	fld	%st(3)
	fsub	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fadd	%st(4), %st
	fmul	%st(2), %st
	fld	%st(5)
	fsub	%st(4), %st
	fadd	%st(1), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fdiv	%st(1), %st
	fxch	%st(3)
	fadd	%st(5), %st
	fadd	%st(4), %st
	fsub	%st(3), %st
	fmul	%st(2), %st
	fadd	%st, %st(5)
	fxch	%st(5)
	fsub	%st(4), %st
	fadd	%st(3), %st
	fmul	%st(2), %st
	fld	%st(5)
	fsub	%st(1), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fadd	%st(3), %st
	fmul	%st(2), %st
	fld	%st(4)
	fsub	%st(6), %st
	fadd	%st(1), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	fdiv	%st(1), %st
	fxch	%st(5)
	fadd	%st(4), %st
	fadd	%st(3), %st
	fsub	%st(5), %st
	fmul	%st(2), %st
	fadd	%st, %st(4)
	fxch	%st(4)
	fsub	%st(3), %st
	fadd	%st(5), %st
	fmul	%st(2), %st
	fld	%st(4)
	fsub	%st(1), %st
	faddp	%st, %st(4)
	fxch	%st(3)
	fadd	%st(5), %st
	fmul	%st(2), %st
	fld	%st(3)
	fsub	%st(5), %st
	fadd	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fdiv	%st(1), %st
	fxch	%st(4)
	fadd	%st(3), %st
	fadd	%st(5), %st
	fsub	%st(4), %st
	fmul	%st(2), %st
	fadd	%st, %st(3)
	fxch	%st(3)
	fsub	%st(5), %st
	fadd	%st(4), %st
	fmul	%st(2), %st
	fld	%st(3)
	fsub	%st(1), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fadd	%st(4), %st
	fmulp	%st, %st(2)
	fxch	%st(2)
	fstl	8(%eax)
	fxch	%st(4)
	fstl	16(%eax)
	fxch	%st(1)
	fstl	24(%eax)
	fxch	%st(1)
	fsubp	%st, %st(4)
	faddp	%st, %st(3)
	fxch	%st(2)
	faddp	%st, %st(1)
	fdivp	%st, %st(1)
	fstpl	32(%eax)
	ret
	.cfi_endproc
.LFE84:
	.size	PA, .-PA
	.p2align 4,,15
	.globl	P0
	.type	P0, @function
P0:
.LFB85:
	.cfi_startproc
	movl	K, %ecx
	movl	J, %edx
	movl	L, %eax
	fldl	E1(,%ecx,8)
	fstpl	E1(,%edx,8)
	fldl	E1(,%eax,8)
	fstpl	E1(,%ecx,8)
	fldl	E1(,%edx,8)
	fstpl	E1(,%eax,8)
	ret
	.cfi_endproc
.LFE85:
	.size	P0, .-P0
	.p2align 4,,15
	.globl	P3
	.type	P3, @function
P3:
.LFB86:
	.cfi_startproc
	fldl	12(%esp)
	fldl	T
	fldl	4(%esp)
	fadd	%st(2), %st
	movl	20(%esp), %eax
	fmul	%st(1), %st
	fadd	%st, %st(2)
	fxch	%st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fdivl	T2
	fstpl	(%eax)
	ret
	.cfi_endproc
.LFE86:
	.size	P3, .-P3
	.comm	L,4,4
	.comm	K,4,4
	.comm	J,4,4
	.comm	E1,40,32
	.comm	T2,8,8
	.comm	T1,8,8
	.comm	T,8,8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1061158912
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	611603343
	.long	1071644567
	.align 8
.LC8:
	.long	1236950581
	.long	1071645196
	.section	.rodata.cst4
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC12:
	.long	1120403456
	.align 4
.LC13:
	.long	1148846080
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
