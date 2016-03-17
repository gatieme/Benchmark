	.file	"ubgears.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"usage:  %s [options]\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"-display\tSet X11 display for output.\n"
	.align 4
.LC2:
	.string	"-info\t\tPrint additional GLX information.\n"
	.align 4
.LC3:
	.string	"-time t\t\tRun for t seconds and report performance.\n"
	.section	.rodata.str1.1
.LC4:
	.string	"-h\t\tPrint this help page.\n"
.LC5:
	.string	"-v\t\tVerbose output.\n"
.LC6:
	.string	"\n"
	.text
	.p2align 4,,15
	.type	usage, @function
usage:
.LFB46:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	ProgramName, %eax
	movl	$.LC0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC2, 8(%esp)
	movl	$1, 4(%esp)
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
	movl	stderr, %eax
	movl	$.LC5, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC6, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.text.unlikely,"ax",@progbits
	.type	reshape, @function
reshape:
.LFB49:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, 60(%esp)
	fildl	60(%esp)
	pushl	%edx
	fidivrl	(%esp)
	popl	%ecx
	movl	%edx, 12(%esp)
	fstps	56(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	glViewport
	movl	$5889, (%esp)
	call	glMatrixMode
	call	glLoadIdentity
	fld1
	flds	56(%esp)
	fcomi	%st(1), %st
	flds	.LC8
	flds	.LC9
	fld1
	fchs
	jb	.L8
	fxch	%st(2)
	fstpl	40(%esp)
	fstpl	32(%esp)
	fxch	%st(1)
	fstl	24(%esp)
	fchs
	fstpl	16(%esp)
	fxch	%st(1)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	glFrustum
	jmp	.L6
.L8:
	fxch	%st(2)
	fstpl	40(%esp)
	fstpl	32(%esp)
	fxch	%st(2)
	fstl	24(%esp)
	fxch	%st(2)
	fstl	16(%esp)
	fxch	%st(2)
	fdiv	%st(1), %st
	fstpl	8(%esp)
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	glFrustum
.L6:
	movl	$5888, (%esp)
	call	glMatrixMode
	call	glLoadIdentity
	movl	$0xc2200000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	glTranslatef
	addl	$76, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE49:
	.size	reshape, .-reshape
	.type	gear.constprop.1, @function
gear.constprop.1:
.LFB54:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$148, %esp
	.cfi_def_cfa_offset 160
	flds	160(%esp)
	fstps	136(%esp)
	flds	168(%esp)
	fstps	96(%esp)
	flds	164(%esp)
	flds	.LC14
	fld	%st(1)
	fsub	%st(1), %st
	movl	%eax, 140(%esp)
	movl	$7424, (%esp)
	fstps	132(%esp)
	faddp	%st, %st(1)
	fstps	88(%esp)
	fildl	140(%esp)
	fld1
	fdiv	%st(1), %st
	fstpl	32(%esp)
	fdivrl	.LC15
	fstps	60(%esp)
	call	glShadeModel
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	glNormal3f
	movl	$8, (%esp)
	call	glBegin
	flds	96(%esp)
	fmuls	.LC16
	fstps	20(%esp)
	flds	60(%esp)
	fmuls	.LC17
	fstps	56(%esp)
	flds	136(%esp)
	fstpl	80(%esp)
	flds	132(%esp)
	fstpl	24(%esp)
.L12:
	cmpl	%ebx, %esi
	jg	.L27
	fldl	32(%esp)
	fmull	.LC18
	pushl	%esi
	fimull	(%esp)
	popl	%eax
	fsts	128(%esp)
	fsincos
	fldl	80(%esp)
	fld	%st(0)
	fmul	%st(3), %st
	fxch	%st(3)
	fstpl	48(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fstpl	40(%esp)
	flds	20(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fsts	4(%esp)
	fstps	72(%esp)
	fsts	(%esp)
	fstps	64(%esp)
	call	glVertex3f
	flds	20(%esp)
	fstps	8(%esp)
	fldl	24(%esp)
	fldl	48(%esp)
	fmul	%st(1), %st
	fstps	4(%esp)
	fldl	40(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
	cmpl	%ebx, %esi
	jge	.L13
	flds	20(%esp)
	fstps	8(%esp)
	flds	72(%esp)
	fstps	4(%esp)
	flds	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	flds	128(%esp)
	fadds	56(%esp)
	fsincos
	flds	20(%esp)
	fstps	8(%esp)
	fldl	24(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
.L13:
	incl	%esi
	jmp	.L12
.L27:
	call	glEnd
	xorl	%esi, %esi
	movl	$7, (%esp)
	call	glBegin
	flds	60(%esp)
	fld	%st(0)
	faddp	%st, %st(1)
	fstps	128(%esp)
	flds	132(%esp)
	flds	88(%esp)
	fstpl	24(%esp)
.L15:
	cmpl	%ebx, %esi
	jge	.L28
	fldl	32(%esp)
	fmull	.LC18
	pushl	%esi
	incl	%esi
	fimull	(%esp)
	popl	%eax
	fsts	40(%esp)
	fsincos
	flds	20(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fmul	%st(2), %st
	fstps	4(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fstpl	48(%esp)
	fstps	(%esp)
	call	glVertex3f
	flds	40(%esp)
	fadds	60(%esp)
	fsincos
	flds	20(%esp)
	fstps	8(%esp)
	fldl	24(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
	flds	40(%esp)
	fadds	128(%esp)
	fsincos
	flds	20(%esp)
	fstps	8(%esp)
	fldl	24(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
	flds	40(%esp)
	fadds	56(%esp)
	fsincos
	flds	20(%esp)
	fstps	8(%esp)
	fldl	48(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fstpl	40(%esp)
	fstps	(%esp)
	call	glVertex3f
	fldl	40(%esp)
	jmp	.L15
.L28:
	fstp	%st(0)
	call	glEnd
	xorl	%esi, %esi
	movl	$0xbf800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	glNormal3f
	movl	$8, (%esp)
	call	glBegin
	flds	96(%esp)
	fchs
	fmuls	.LC16
	fstps	24(%esp)
	flds	132(%esp)
	flds	136(%esp)
	fstpl	80(%esp)
.L17:
	cmpl	%ebx, %esi
	jg	.L29
	fldl	32(%esp)
	fmull	.LC18
	pushl	%esi
	fimull	(%esp)
	popl	%eax
	fld	%st(0)
	fstps	72(%esp)
	fsincos
	flds	24(%esp)
	fstps	8(%esp)
	fld	%st(1)
	fstpl	64(%esp)
	fxch	%st(1)
	fmul	%st(2), %st
	fstps	4(%esp)
	fld	%st(0)
	fstpl	48(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fstpl	40(%esp)
	fstps	(%esp)
	call	glVertex3f
	fldl	80(%esp)
	fldl	64(%esp)
	fmul	%st(1), %st
	fldl	48(%esp)
	fmulp	%st, %st(2)
	flds	24(%esp)
	fstps	8(%esp)
	fsts	48(%esp)
	fstps	4(%esp)
	fsts	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	cmpl	%ebx, %esi
	fldl	40(%esp)
	jge	.L18
	flds	72(%esp)
	fadds	56(%esp)
	fsincos
	flds	24(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fmul	%st(2), %st
	fstps	4(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
	flds	24(%esp)
	fstps	8(%esp)
	flds	48(%esp)
	fstps	4(%esp)
	flds	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	fldl	40(%esp)
.L18:
	incl	%esi
	jmp	.L17
.L29:
	fstp	%st(0)
	call	glEnd
	xorl	%esi, %esi
	movl	$7, (%esp)
	call	glBegin
	flds	132(%esp)
	flds	88(%esp)
	fstpl	40(%esp)
.L20:
	cmpl	%ebx, %esi
	jge	.L30
	fldl	32(%esp)
	fmull	.LC18
	pushl	%esi
	incl	%esi
	fimull	(%esp)
	popl	%ecx
	fsts	48(%esp)
	fadds	56(%esp)
	fsincos
	flds	24(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fmul	%st(2), %st
	fstps	4(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fstpl	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	flds	48(%esp)
	fadds	128(%esp)
	fsincos
	flds	24(%esp)
	fstps	8(%esp)
	fldl	40(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
	flds	48(%esp)
	fadds	60(%esp)
	fsincos
	flds	24(%esp)
	fstps	8(%esp)
	fldl	40(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmulp	%st, %st(1)
	fstps	(%esp)
	call	glVertex3f
	flds	48(%esp)
	fsincos
	flds	24(%esp)
	fstps	8(%esp)
	fldl	64(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	fstps	4(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fstpl	48(%esp)
	fstps	(%esp)
	call	glVertex3f
	fldl	48(%esp)
	jmp	.L20
.L30:
	fstp	%st(0)
	call	glEnd
	xorl	%esi, %esi
	movl	$8, (%esp)
	call	glBegin
	flds	60(%esp)
	fld	%st(0)
	fmuls	.LC19
	fstpl	112(%esp)
	fmuls	.LC20
	fstpl	120(%esp)
	flds	132(%esp)
	flds	88(%esp)
	fstpl	48(%esp)
.L22:
	cmpl	%ebx, %esi
	jge	.L31
	fldl	32(%esp)
	fmull	.LC18
	pushl	%esi
	incl	%esi
	fimull	(%esp)
	popl	%edx
	fsts	40(%esp)
	fld	%st(0)
	fstpl	96(%esp)
	fsincos
	fxch	%st(1)
	fmul	%st(2), %st
	fld	%st(0)
	fstpl	88(%esp)
	fxch	%st(1)
	fmul	%st(2), %st
	fxch	%st(2)
	fstpl	104(%esp)
	fld	%st(1)
	fstpl	80(%esp)
	flds	20(%esp)
	fstps	8(%esp)
	fsts	4(%esp)
	fstps	72(%esp)
	fsts	(%esp)
	fstps	64(%esp)
	call	glVertex3f
	flds	24(%esp)
	fstps	8(%esp)
	flds	72(%esp)
	fstps	4(%esp)
	flds	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	movl	$0x00000000, 8(%esp)
	flds	40(%esp)
	fadds	60(%esp)
	fsincos
	fldl	48(%esp)
	fmul	%st, %st(1)
	fldl	80(%esp)
	fsubr	%st(2), %st
	fxch	%st(2)
	fstpl	72(%esp)
	fmulp	%st, %st(2)
	fldl	88(%esp)
	fsubr	%st(2), %st
	fxch	%st(2)
	fstpl	64(%esp)
	fld	%st(1)
	fmul	%st(2), %st
	fld	%st(1)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fsqrt
	fdivr	%st, %st(1)
	fxch	%st(1)
	fchs
	fstps	4(%esp)
	fdivrp	%st, %st(1)
	fstps	(%esp)
	call	glNormal3f
	fldl	64(%esp)
	fldl	72(%esp)
	flds	20(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fsts	4(%esp)
	fstps	72(%esp)
	fsts	(%esp)
	fstps	64(%esp)
	call	glVertex3f
	flds	24(%esp)
	fstps	8(%esp)
	flds	72(%esp)
	fstps	4(%esp)
	flds	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	movl	$0x00000000, 8(%esp)
	fldl	112(%esp)
	fldl	96(%esp)
	faddp	%st, %st(1)
	fsincos
	fxch	%st(1)
	fstps	4(%esp)
	fstps	(%esp)
	call	glNormal3f
	flds	40(%esp)
	fadds	128(%esp)
	fsincos
	fldl	48(%esp)
	fmul	%st, %st(2)
	fld	%st(2)
	fstpl	88(%esp)
	fmulp	%st, %st(1)
	fld	%st(0)
	fstpl	80(%esp)
	flds	20(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fsts	4(%esp)
	fstps	72(%esp)
	fsts	(%esp)
	fstps	64(%esp)
	call	glVertex3f
	flds	24(%esp)
	fstps	8(%esp)
	flds	72(%esp)
	fstps	4(%esp)
	flds	64(%esp)
	fstps	(%esp)
	call	glVertex3f
	movl	$0x00000000, 8(%esp)
	flds	40(%esp)
	fadds	56(%esp)
	fsincos
	fldl	104(%esp)
	fmul	%st, %st(1)
	fmul	%st, %st(2)
	fstpl	72(%esp)
	fldl	80(%esp)
	fsubr	%st(1), %st
	fxch	%st(1)
	fstpl	64(%esp)
	fchs
	fstps	4(%esp)
	fldl	88(%esp)
	fsubr	%st(1), %st
	fxch	%st(1)
	fstpl	40(%esp)
	fstps	(%esp)
	call	glNormal3f
	fldl	40(%esp)
	fldl	64(%esp)
	flds	20(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fsts	4(%esp)
	fstps	64(%esp)
	fsts	(%esp)
	fstps	40(%esp)
	call	glVertex3f
	flds	24(%esp)
	fstps	8(%esp)
	flds	64(%esp)
	fstps	4(%esp)
	flds	40(%esp)
	fstps	(%esp)
	call	glVertex3f
	movl	$0x00000000, 8(%esp)
	fldl	96(%esp)
	faddl	120(%esp)
	fsincos
	fxch	%st(1)
	fstps	4(%esp)
	fstps	(%esp)
	call	glNormal3f
	fldl	72(%esp)
	jmp	.L22
.L31:
	fstp	%st(0)
	flds	20(%esp)
	xorl	%esi, %esi
	fstps	8(%esp)
	flds	132(%esp)
	fstps	(%esp)
	movl	$0x00000000, 4(%esp)
	call	glVertex3f
	movl	$0x00000000, 4(%esp)
	flds	24(%esp)
	fstps	8(%esp)
	flds	132(%esp)
	fstps	(%esp)
	call	glVertex3f
	call	glEnd
	movl	$7425, (%esp)
	call	glShadeModel
	movl	$8, (%esp)
	call	glBegin
	flds	136(%esp)
	fstpl	48(%esp)
.L24:
	cmpl	%ebx, %esi
	jg	.L32
	fldl	32(%esp)
	fmull	.LC18
	pushl	%esi
	incl	%esi
	fimull	(%esp)
	popl	%eax
	movl	$0x00000000, 8(%esp)
	fld	%st(0)
	fstps	56(%esp)
	fsincos
	fxch	%st(1)
	fchs
	fstps	4(%esp)
	fchs
	fstps	(%esp)
	call	glNormal3f
	flds	56(%esp)
	fsincos
	fldl	48(%esp)
	fmul	%st, %st(2)
	fmulp	%st, %st(1)
	flds	24(%esp)
	fstps	8(%esp)
	fxch	%st(1)
	fsts	4(%esp)
	fstps	40(%esp)
	fsts	(%esp)
	fstps	56(%esp)
	call	glVertex3f
	flds	20(%esp)
	fstps	8(%esp)
	flds	40(%esp)
	fstps	4(%esp)
	flds	56(%esp)
	fstps	(%esp)
	call	glVertex3f
	jmp	.L24
.L32:
	addl	$148, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	glEnd
	.cfi_endproc
.LFE54:
	.size	gear.constprop.1, .-gear.constprop.1
	.section	.rodata.str1.1
.LC21:
	.string	"-display"
.LC22:
	.string	"-info"
.LC23:
	.string	"-time"
.LC24:
	.string	"-v"
.LC25:
	.string	"-debug_use_threadsafe_api"
.LC26:
	.string	"%s: Unsupported option '%s'.\n"
.LC27:
	.string	"%s: XInitThreads() failure.\n"
	.section	.rodata.str1.4
	.align 4
.LC28:
	.string	"%s: Error: couldn't open display '%s'\n"
	.align 4
.LC29:
	.string	"Window x=%d, y=%d, width=%d, height=%d\n"
	.align 4
.LC30:
	.string	"%s: Error: couldn't get an RGB, Double-buffered visual.\n"
	.section	.rodata.str1.1
.LC31:
	.string	"ubgears"
	.section	.rodata.str1.4
	.align 4
.LC32:
	.string	"%s: Error: glXCreateContext failed.\n"
	.section	.rodata.str1.1
.LC33:
	.string	"GL_MAX_VIEWPORT_DIMS=%d/%d\n"
	.section	.rodata.str1.4
	.align 4
.LC34:
	.string	"%s: Error: Requested window size (%d/%d) larger than maximum supported by GL engine (%d/%d).\n"
	.section	.rodata.str1.1
.LC35:
	.string	"GL_RENDERER   = %s\n"
.LC36:
	.string	"GL_VERSION    = %s\n"
.LC37:
	.string	"GL_VENDOR     = %s\n"
.LC38:
	.string	"GL_EXTENSIONS = %s\n"
.LC42:
	.string	"Event: Expose\n"
.LC43:
	.string	"Event: ConfigureNotify\n"
	.section	.rodata.str1.4
	.align 4
.LC56:
	.string	"%d frames in %3.1f seconds = %6.3f FPS\n"
	.section	.rodata.str1.1
.LC57:
	.string	"Start timing!\n"
.LC58:
	.string	"COUNT|%ld|1|fps\n"
.LC59:
	.string	"TIME|%.1f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB53:
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
	subl	$368, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %eax
	movl	%gs:20, %edi
	movl	%edi, 364(%esp)
	xorl	%edi, %edi
	cmpl	$1, 8(%ebp)
	movl	%eax, 72(%esp)
	movl	(%eax), %eax
	movl	%eax, 48(%esp)
	movl	%eax, ProgramName
	jle	.L71
	movl	$1, %edx
	movl	$0, 56(%esp)
	movl	%edx, %ebx
	movl	$0, 52(%esp)
	jmp	.L44
	.p2align 4,,7
	.p2align 3
.L84:
	addl	$1, %ebx
	cmpl	%ebx, 8(%ebp)
	jle	.L81
	movl	72(%esp), %eax
	movl	60(%esp), %edi
	movl	4(%eax,%edi), %eax
	movl	%eax, 56(%esp)
.L37:
	addl	$1, %ebx
	cmpl	%ebx, 8(%ebp)
	jle	.L83
.L44:
	leal	0(,%ebx,4), %eax
	movl	$.LC21, %edi
	movl	%eax, 60(%esp)
	movl	72(%esp), %eax
	movl	(%eax,%ebx,4), %esi
	movl	%esi, (%esp)
	movl	%esi, 64(%esp)
	call	strlen
	movl	$9, %ecx
	repz cmpsb
	je	.L84
	movl	64(%esp), %esi
	movl	$.LC22, %edi
	movl	$6, %ecx
	repz cmpsb
	je	.L79
	movl	64(%esp), %esi
	movl	$.LC23, %edi
	movl	$6, %ecx
	repz cmpsb
	jne	.L39
	addl	$1, %ebx
	cmpl	%ebx, 8(%ebp)
	jle	.L81
	movl	72(%esp), %eax
	addl	$1, %ebx
	movl	60(%esp), %edi
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%eax,%edi), %eax
	movl	%eax, (%esp)
	call	strtol
	imull	$1000000, %eax, %eax
	cmpl	%ebx, 8(%ebp)
	movl	%eax, runTime
	jg	.L44
	.p2align 4,,7
	.p2align 3
.L83:
	movl	52(%esp), %eax
	testl	%eax, %eax
	je	.L34
	call	XInitThreads
	testl	%eax, %eax
	je	.L85
.L34:
	movl	56(%esp), %edi
	movl	%edi, (%esp)
	call	XOpenDisplay
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L45
	movl	ProgramName, %eax
	movl	%edi, 16(%esp)
	movl	$.LC28, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, %eax
	movl	364(%esp), %edi
	xorl	%gs:20, %edi
	jne	.L86
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
.L87:
	.cfi_restore_state
	movl	$1, verbose
.L79:
	movb	$1, printInfo
	jmp	.L37
	.p2align 4,,7
	.p2align 3
.L39:
	movl	64(%esp), %edi
	cmpl	$3, %eax
	movl	$3, %ecx
	cmovle	%eax, %ecx
	movl	$.LC24, %esi
	cmpl	%ecx, %ecx
	repz cmpsb
	je	.L87
	movl	64(%esp), %edi
	cmpl	$26, %eax
	movl	$26, %ecx
	cmovle	%eax, %ecx
	movl	$.LC25, %esi
	cmpl	%ecx, %ecx
	repz cmpsb
	jne	.L88
	movl	$1, 52(%esp)
	jmp	.L37
.L88:
	movl	64(%esp), %ebx
	cmpb	$45, (%ebx)
	jne	.L42
	cmpb	$104, 1(%ebx)
	jne	.L42
	cmpb	$0, 2(%ebx)
	jne	.L42
.L81:
	call	usage
.L42:
	movl	48(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$.LC26, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	jmp	.L81
.L71:
	movl	$0, 56(%esp)
	jmp	.L34
.L85:
	movl	ProgramName, %eax
	movl	$.LC27, 8(%esp)
	movl	%eax, 12(%esp)
.L82:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L86:
	call	__stack_chk_fail
.L45:
	movl	%eax, (%esp)
	call	XDefaultScreenOfDisplay
	cmpl	$0, verbose
	movl	%eax, %esi
	je	.L46
	movl	$300, 20(%esp)
	movl	$300, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$.LC29, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
.L46:
	movl	%esi, (%esp)
	movl	$4, 92(%esp)
	movl	$8, 96(%esp)
	movl	$1, 100(%esp)
	movl	$9, 104(%esp)
	movl	$1, 108(%esp)
	movl	$10, 112(%esp)
	movl	$1, 116(%esp)
	movl	$5, 120(%esp)
	movl	$12, 124(%esp)
	movl	$1, 128(%esp)
	movl	$0, 132(%esp)
	movl	$0, 84(%esp)
	movl	$0, 88(%esp)
	call	XScreenNumberOfScreen
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%eax, %edi
	call	XRootWindow
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, %esi
	leal	92(%esp), %eax
	movl	%eax, 8(%esp)
	call	glXChooseVisual
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L89
	movl	$0, 12(%esp)
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	$0, 140(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 148(%esp)
	call	XCreateColormap
	movl	$10250, 40(%esp)
	movl	$163841, 176(%esp)
	movl	%eax, 188(%esp)
	leal	136(%esp), %eax
	movl	%eax, 44(%esp)
	movl	(%edi), %eax
	movl	$1, 32(%esp)
	movl	%eax, 36(%esp)
	movl	12(%edi), %eax
	movl	%esi, 4(%esp)
	movl	$0, 24(%esp)
	movl	$300, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$300, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, (%esp)
	call	XCreateWindow
	movl	%ebx, (%esp)
	movl	$0, 200(%esp)
	movl	$0, 204(%esp)
	movl	$300, 208(%esp)
	movl	$300, 212(%esp)
	movl	%eax, %esi
	leal	196(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$3, 196(%esp)
	call	XSetNormalHints
	leal	196(%esp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$.LC31, 12(%esp)
	movl	$.LC31, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	XSetStandardProperties
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	glXCreateContext
	testl	%eax, %eax
	je	.L90
	movl	%edi, (%esp)
	movl	%eax, 64(%esp)
	call	XFree
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	XMapWindow
	movl	64(%esp), %ecx
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 8(%esp)
	call	glXMakeCurrent
	leal	84(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$3386, (%esp)
	call	glGetIntegerv
	cmpb	$0, printInfo
	je	.L49
	movl	88(%esp), %eax
	movl	$.LC33, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	call	__printf_chk
.L49:
	movl	84(%esp), %eax
	cmpl	$299, %eax
	jle	.L50
	cmpl	$299, 88(%esp)
	jle	.L50
	movl	$300, %edx
	movl	$300, %eax
	call	reshape
	cmpb	$0, printInfo
	je	.L52
	movl	$7937, (%esp)
	call	glGetString
	movl	$.LC35, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$7938, (%esp)
	call	glGetString
	movl	$.LC36, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$7936, (%esp)
	call	glGetString
	movl	$.LC37, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$7939, (%esp)
	call	glGetString
	movl	$.LC38, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
.L52:
	movl	$pos.17636, 8(%esp)
	movl	$4611, 4(%esp)
	movl	$16384, (%esp)
	call	glLightfv
	movl	$2884, (%esp)
	call	glEnable
	movl	$2896, (%esp)
	call	glEnable
	movl	$16384, (%esp)
	call	glEnable
	movl	$2929, (%esp)
	call	glEnable
	movl	$1, (%esp)
	call	glGenLists
	movl	$4864, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, gear1
	call	glNewList
	movl	$red.17637, 8(%esp)
	movl	$5634, 4(%esp)
	movl	$1028, (%esp)
	call	glMaterialfv
	movl	$20, %eax
	movl	$0x3f800000, 8(%esp)
	movl	$0x40800000, 4(%esp)
	movl	$0x3f800000, (%esp)
	call	gear.constprop.1
	call	glEndList
	movl	$1, (%esp)
	call	glGenLists
	movl	$4864, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, gear2
	call	glNewList
	movl	$green.17638, 8(%esp)
	movl	$5634, 4(%esp)
	movl	$1028, (%esp)
	call	glMaterialfv
	movl	$10, %eax
	movl	$0x40000000, 8(%esp)
	movl	$0x40000000, 4(%esp)
	movl	$0x3f000000, (%esp)
	call	gear.constprop.1
	call	glEndList
	movl	$1, (%esp)
	call	glGenLists
	movl	$4864, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, gear3
	call	glNewList
	movl	$blue.17639, 8(%esp)
	movl	$5634, 4(%esp)
	movl	$1028, (%esp)
	call	glMaterialfv
	movl	$10, %eax
	movl	$0x3f000000, 8(%esp)
	movl	$0x40000000, 4(%esp)
	movl	$0x3fa66666, (%esp)
	call	gear.constprop.1
	call	glEndList
	movl	$2977, (%esp)
	call	glEnable
	movl	$0, 4(%esp)
	movl	$clockStart, (%esp)
	call	gettimeofday
.L53:
	movl	%ebx, (%esp)
	call	XPending
	testl	%eax, %eax
	jle	.L91
	leal	268(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	XNextEvent
	movl	268(%esp), %eax
	cmpl	$12, %eax
	je	.L55
	cmpl	$22, %eax
	jne	.L53
	cmpl	$0, verbose
	je	.L57
	movl	$.LC43, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
.L57:
	movl	304(%esp), %edx
	movl	300(%esp), %eax
	call	reshape
	jmp	.L53
.L55:
	cmpl	$0, verbose
	je	.L53
	movl	$.LC42, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	jmp	.L53
.L91:
	leal	196(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	gettimeofday
	movl	196(%esp), %eax
	movl	200(%esp), %edx
	subl	clockStart, %eax
	subl	clockStart+4, %edx
	jns	.L59
	subl	$1, %eax
	addl	$1000000, %edx
.L59:
	imull	$1000000, %eax, %eax
	cmpl	$0, lastFrame.17673
	leal	(%eax,%edx), %edi
	jne	.L60
	movl	%edi, lastFrame.17673
.L60:
	cmpl	$0, lastFps.17674
	jne	.L61
	movl	%edi, lastFps.17674
.L61:
	movl	%edi, %eax
	movl	$10000, %edx
	subl	lastFrame.17673, %eax
	cmove	%edx, %eax
	movl	%eax, 76(%esp)
	fildl	76(%esp)
	fmull	.LC44
	fadds	angle
	flds	.LC45
	fxch	%st(1)
	fcomi	%st(1), %st
	jbe	.L94
	fsubp	%st, %st(1)
	jmp	.L80
.L94:
	fstp	%st(1)
.L80:
	movl	$16640, (%esp)
	fstps	angle
	call	glClear
	call	glPushMatrix
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movl	$0x41a00000, (%esp)
	call	glRotatef
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x41f00000, (%esp)
	call	glRotatef
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	glRotatef
	call	glPushMatrix
	movl	$0x00000000, 8(%esp)
	movl	$0xc0000000, 4(%esp)
	movl	$0xc0400000, (%esp)
	call	glTranslatef
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	flds	angle
	fstps	(%esp)
	call	glRotatef
	movl	gear1, %eax
	movl	%eax, (%esp)
	call	glCallList
	call	glPopMatrix
	call	glPushMatrix
	movl	$0x00000000, 8(%esp)
	movl	$0xc0000000, 4(%esp)
	movl	$0x40466666, (%esp)
	call	glTranslatef
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	flds	.LC48
	fld	%st(0)
	fstpl	64(%esp)
	fmuls	angle
	fsubs	.LC51
	fstps	(%esp)
	call	glRotatef
	movl	gear2, %eax
	movl	%eax, (%esp)
	call	glCallList
	call	glPopMatrix
	call	glPushMatrix
	movl	$0x00000000, 8(%esp)
	movl	$0x40866666, 4(%esp)
	movl	$0xc0466666, (%esp)
	call	glTranslatef
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	fldl	64(%esp)
	fmuls	angle
	fsubs	.LC54
	fstps	(%esp)
	call	glRotatef
	movl	gear3, %eax
	movl	%eax, (%esp)
	call	glCallList
	call	glPopMatrix
	call	glPopMatrix
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	glXSwapBuffers
	movl	frames.17675, %eax
	movl	%edi, %edx
	subl	lastFps.17674, %edx
	movl	%edi, lastFrame.17673
	addl	$1, %eax
	cmpl	$4999999, %edx
	movl	%eax, frames.17675
	jg	.L92
.L66:
	movl	startTime.17672, %edx
	testl	%edx, %edx
	jle	.L68
	movl	runFrames.17676, %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	%eax, runFrames.17676
	movl	runTime, %eax
	testl	%eax, %eax
	jle	.L68
	subl	%edx, %edi
	cmpl	%edi, %eax
	jl	.L93
.L68:
	call	sched_yield
	.p2align 4,,4
	jmp	.L53
.L92:
	movl	%edx, 76(%esp)
	fildl	76(%esp)
	fmull	.LC55
	movl	%eax, 76(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC56, 4(%esp)
	movl	$1, (%esp)
	fildl	76(%esp)
	fdiv	%st(1), %st
	fstpl	20(%esp)
	fstpl	12(%esp)
	call	__printf_chk
	cmpl	$0, runTime
	movl	%edi, lastFps.17674
	movl	$0, frames.17675
	jle	.L66
	cmpl	$0, startTime.17672
	jne	.L66
	movl	$.LC57, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%edi, startTime.17672
	jmp	.L66
.L90:
	movl	ProgramName, %eax
	movl	$.LC32, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	.L82
.L89:
	movl	ProgramName, %eax
	movl	$.LC30, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	.L82
.L50:
	movl	%eax, 24(%esp)
	movl	ProgramName, %eax
	movl	88(%esp), %edx
	movl	$300, 20(%esp)
	movl	$300, 16(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%edx, 28(%esp)
	movl	$.LC34, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L93:
	movl	stderr, %eax
	movl	%ecx, 12(%esp)
	movl	$.LC58, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, 64(%esp)
	call	__fprintf_chk
	movl	64(%esp), %edx
	movl	stderr, %eax
	movl	$.LC59, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, 76(%esp)
	movl	%eax, (%esp)
	fildl	76(%esp)
	fmull	.LC55
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	$0, (%esp)
	call	exit
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.local	runFrames.17676
	.comm	runFrames.17676,4,4
	.local	startTime.17672
	.comm	startTime.17672,4,4
	.local	frames.17675
	.comm	frames.17675,4,4
	.local	lastFps.17674
	.comm	lastFps.17674,4,4
	.local	lastFrame.17673
	.comm	lastFrame.17673,4,4
	.data
	.align 4
	.type	blue.17639, @object
	.size	blue.17639, 16
blue.17639:
	.long	1045220557
	.long	1045220557
	.long	1065353216
	.long	1065353216
	.align 4
	.type	green.17638, @object
	.size	green.17638, 16
green.17638:
	.long	0
	.long	1061997773
	.long	1045220557
	.long	1065353216
	.align 4
	.type	red.17637, @object
	.size	red.17637, 16
red.17637:
	.long	1061997773
	.long	1036831949
	.long	0
	.long	1065353216
	.align 4
	.type	pos.17636, @object
	.size	pos.17636, 16
pos.17636:
	.long	1084227584
	.long	1084227584
	.long	1092616192
	.long	0
	.local	printInfo
	.comm	printInfo,1,1
	.local	angle
	.comm	angle,4,4
	.local	gear3
	.comm	gear3,4,4
	.local	gear2
	.comm	gear2,4,4
	.local	gear1
	.comm	gear1,4,4
	.local	clockStart
	.comm	clockStart,8,4
	.align 4
	.type	runTime, @object
	.size	runTime, 4
runTime:
	.long	-1
	.local	verbose
	.comm	verbose,4,4
	.local	ProgramName
	.comm	ProgramName,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC8:
	.long	1114636288
	.align 4
.LC9:
	.long	1084227584
	.align 4
.LC14:
	.long	1051931443
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC15:
	.long	1405670641
	.long	1073291771
	.section	.rodata.cst4
	.align 4
.LC16:
	.long	1056964608
	.align 4
.LC17:
	.long	1077936128
	.section	.rodata.cst8
	.align 8
.LC18:
	.long	1405670641
	.long	1075388923
	.section	.rodata.cst4
	.align 4
.LC19:
	.long	1069547520
	.align 4
.LC20:
	.long	1080033280
	.section	.rodata.cst8
	.align 8
.LC44:
	.long	1297423720
	.long	1057977616
	.section	.rodata.cst4
	.align 4
.LC45:
	.long	1135869952
	.align 4
.LC48:
	.long	-1073741824
	.align 4
.LC51:
	.long	1091567616
	.align 4
.LC54:
	.long	1103626240
	.section	.rodata.cst8
	.align 8
.LC55:
	.long	-1598689907
	.long	1051772663
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
