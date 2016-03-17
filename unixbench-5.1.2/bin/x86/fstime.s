	.file	"fstime.c"
	.text
	.p2align 4,,15
	.globl	stop_count
	.type	stop_count, @function
stop_count:
.LFB34:
	.cfi_startproc
	movl	$1, sigalarm
	ret
	.cfi_endproc
.LFE34:
	.size	stop_count, .-stop_count
	.p2align 4,,15
	.type	getFloatTime, @function
getFloatTime:
.LFB30:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	leal	24(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	gettimeofday
	fildl	28(%esp)
	fmull	.LC0
	fildl	24(%esp)
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	faddp	%st, %st(1)
	ret
	.cfi_endproc
.LFE30:
	.size	getFloatTime, .-getFloatTime
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"dummy0"
.LC3:
	.string	"dummy1"
	.text
	.p2align 4,,15
	.globl	clean_up
	.type	clean_up, @function
clean_up:
.LFB35:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$.LC2, (%esp)
	call	unlink
	movl	$.LC3, (%esp)
	call	unlink
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE35:
	.size	clean_up, .-clean_up
	.section	.rodata.str1.1
.LC5:
	.string	"fstime: write"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC6:
	.string	"Write done: %ld in %.4f, score %ld\n"
	.section	.rodata.str1.1
.LC7:
	.string	"COUNT|%ld|0|KBps\n"
.LC8:
	.string	"TIME|%.1f\n"
	.text
	.p2align 4,,15
	.globl	w_test
	.type	w_test, @function
w_test:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	call	sync
	movl	$2, (%esp)
	call	sleep
	call	sync
	movl	$2, (%esp)
	call	sleep
	movl	$stop_count, 4(%esp)
	movl	$14, (%esp)
	movl	$0, sigalarm
	call	__sysv_signal
	movl	96(%esp), %eax
	movl	%eax, (%esp)
	call	alarm
	call	getFloatTime
	movl	sigalarm, %ecx
	testl	%ecx, %ecx
	fstpl	32(%esp)
	jne	.L17
	xorl	%esi, %esi
.L8:
	movl	max_buffs, %eax
	testl	%eax, %eax
	jle	.L15
	movl	bufsize, %edi
	xorl	%ebx, %ebx
	jmp	.L16
	.p2align 4,,7
	.p2align 3
.L22:
	call	__errno_location
	cmpl	$4, (%eax)
	jne	.L21
	leal	128(%ebp), %eax
	addl	$1, %ebx
	shrl	$8, %eax
	addl	%eax, %esi
	cmpl	%ebx, max_buffs
	movl	$1, sigalarm
	jle	.L15
.L16:
	movl	f, %eax
	movl	%edi, 8(%esp)
	movl	$buf, 4(%esp)
	movl	%eax, (%esp)
	call	write
	movl	bufsize, %edi
	cmpl	%edi, %eax
	movl	%eax, %ebp
	jne	.L22
	addl	count_per_buf, %esi
	addl	$1, %ebx
	cmpl	%ebx, max_buffs
	jg	.L16
.L15:
	movl	f, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lseek
	movl	sigalarm, %edx
	testl	%edx, %edx
	je	.L8
	xorl	%edx, %edx
	movl	%esi, 48(%esp)
	movl	%edx, 52(%esp)
	fildq	48(%esp)
	fstpl	40(%esp)
.L7:
	call	getFloatTime
	movl	%esi, 8(%esp)
	movl	$.LC6, 4(%esp)
	movl	$1, (%esp)
	fsubl	32(%esp)
	fnstcw	62(%esp)
	movzwl	62(%esp), %eax
	fildl	count_per_k
	fmul	%st(1), %st
	movb	$12, %ah
	movw	%ax, 60(%esp)
	fdivrl	40(%esp)
	fldcw	60(%esp)
	fistpl	56(%esp)
	fldcw	62(%esp)
	movl	56(%esp), %eax
	fstl	12(%esp)
	movl	%eax, 20(%esp)
	fstpl	32(%esp)
	movl	%eax, write_score
	call	__printf_chk
	movl	write_score, %eax
	movl	$.LC7, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	fldl	32(%esp)
	fstpl	12(%esp)
	call	__fprintf_chk
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
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
.L21:
	.cfi_restore_state
	movl	$.LC5, (%esp)
	call	perror
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
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
.L17:
	.cfi_restore_state
	fldz
	xorl	%esi, %esi
	fstpl	40(%esp)
	jmp	.L7
	.cfi_endproc
.LFE31:
	.size	w_test, .-w_test
	.section	.rodata.str1.1
.LC9:
	.string	"fstime: read"
	.section	.rodata.str1.4
	.align 4
.LC10:
	.string	"Read done: %ld in %.4f, score %ld\n"
	.text
	.p2align 4,,15
	.globl	r_test
	.type	r_test, @function
r_test:
.LFB32:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	call	sync
	movl	$2, (%esp)
	call	sleep
	call	sync
	movl	$2, (%esp)
	call	sleep
	call	__errno_location
	movl	$0, (%eax)
	movl	%eax, %edi
	movl	f, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lseek
	movl	$stop_count, 4(%esp)
	movl	$14, (%esp)
	movl	$0, sigalarm
	call	__sysv_signal
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	alarm
	call	getFloatTime
	movl	sigalarm, %eax
	fstpl	24(%esp)
.L24:
	testl	%eax, %eax
	jne	.L39
	movl	bufsize, %eax
	movl	$8192, 12(%esp)
	movl	$buf, 4(%esp)
	movl	%eax, 8(%esp)
	movl	f, %eax
	movl	%eax, (%esp)
	call	__read_chk
	cmpl	bufsize, %eax
	movl	%eax, %ebx
	je	.L25
	movl	(%edi), %edx
	cmpl	$4, %edx
	je	.L27
	cmpl	$22, %edx
	je	.L28
	testl	%edx, %edx
	je	.L28
	movl	$.LC9, (%esp)
	call	perror
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L25:
	.cfi_restore_state
	addl	count_per_buf, %esi
	movl	sigalarm, %eax
	jmp	.L24
	.p2align 4,,7
	.p2align 3
.L28:
	movl	f, %eax
	subl	$-128, %ebx
	movl	$0, 8(%esp)
	shrl	$8, %ebx
	movl	$0, 4(%esp)
	addl	%ebx, %esi
	movl	%eax, (%esp)
	call	lseek
	movl	sigalarm, %eax
	jmp	.L24
	.p2align 4,,7
	.p2align 3
.L27:
	subl	$-128, %ebx
	shrl	$8, %ebx
	movl	$1, sigalarm
	addl	%ebx, %esi
.L39:
	call	getFloatTime
	xorl	%edx, %edx
	movl	%edx, 44(%esp)
	movl	%esi, 40(%esp)
	movl	%esi, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	fsubl	24(%esp)
	fnstcw	38(%esp)
	movzwl	38(%esp), %eax
	fildq	40(%esp)
	fildl	count_per_k
	fmul	%st(2), %st
	movb	$12, %ah
	movw	%ax, 36(%esp)
	fdivrp	%st, %st(1)
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %eax
	fstl	12(%esp)
	movl	%eax, 20(%esp)
	fstpl	24(%esp)
	movl	%eax, read_score
	call	__printf_chk
	movl	read_score, %eax
	movl	$.LC7, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	fldl	24(%esp)
	fstpl	12(%esp)
	call	__fprintf_chk
	addl	$48, %esp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE32:
	.size	r_test, .-r_test
	.section	.rodata.str1.1
.LC11:
	.string	"fstime: copy read"
.LC12:
	.string	"fstime: copy write"
	.section	.rodata.str1.4
	.align 4
.LC13:
	.string	"Copy done: %ld in %.4f, score %ld\n"
	.text
	.p2align 4,,15
	.globl	c_test
	.type	c_test, @function
c_test:
.LFB33:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	subl	$52, %esp
	.cfi_def_cfa_offset 64
	call	sync
	movl	$2, (%esp)
	call	sleep
	call	sync
	movl	$1, (%esp)
	call	sleep
	call	__errno_location
	movl	$0, (%eax)
	movl	%eax, %esi
	movl	f, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lseek
	movl	$stop_count, 4(%esp)
	movl	$14, (%esp)
	movl	$0, sigalarm
	call	__sysv_signal
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	alarm
	call	getFloatTime
	movl	sigalarm, %eax
	fstpl	24(%esp)
.L43:
	testl	%eax, %eax
	jne	.L60
	movl	bufsize, %eax
	movl	$8192, 12(%esp)
	movl	$buf, 4(%esp)
	movl	%eax, 8(%esp)
	movl	f, %eax
	movl	%eax, (%esp)
	call	__read_chk
	cmpl	bufsize, %eax
	je	.L44
	movl	(%esi), %ecx
	cmpl	$4, %ecx
	je	.L46
	cmpl	$22, %ecx
	je	.L47
	testl	%ecx, %ecx
	je	.L47
	movl	$.LC11, (%esp)
	call	perror
	movl	$-1, %eax
.L61:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L46:
	.cfi_restore_state
	movl	write_score, %ecx
	xorl	%edx, %edx
	movl	$1, sigalarm
	imull	%ecx, %eax
	addl	read_score, %ecx
	divl	%ecx
	subl	$-128, %eax
	shrl	$8, %eax
	addl	%eax, %ebx
.L60:
	call	getFloatTime
	xorl	%edx, %edx
	movl	%edx, 44(%esp)
	movl	%ebx, 40(%esp)
	movl	%ebx, 8(%esp)
	movl	$.LC13, 4(%esp)
	movl	$1, (%esp)
	fsubl	24(%esp)
	fnstcw	38(%esp)
	movzwl	38(%esp), %eax
	fildq	40(%esp)
	fildl	count_per_k
	fmul	%st(2), %st
	movb	$12, %ah
	movw	%ax, 36(%esp)
	fdivrp	%st, %st(1)
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %eax
	fstl	12(%esp)
	movl	%eax, 20(%esp)
	fstpl	24(%esp)
	movl	%eax, copy_score
	call	__printf_chk
	movl	copy_score, %eax
	movl	$.LC7, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	fldl	24(%esp)
	fstpl	12(%esp)
	call	__fprintf_chk
	xorl	%eax, %eax
	jmp	.L61
	.p2align 4,,7
	.p2align 3
.L47:
	movl	f, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lseek
	movl	g, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lseek
	movl	sigalarm, %eax
	jmp	.L43
	.p2align 4,,7
	.p2align 3
.L44:
	movl	%eax, 8(%esp)
	movl	g, %eax
	movl	$buf, 4(%esp)
	movl	%eax, (%esp)
	call	write
	movl	bufsize, %edx
	cmpl	%edx, %eax
	movl	%eax, %ecx
	je	.L50
	cmpl	$4, (%esi)
	jne	.L63
	movl	write_score, %esi
	movl	%edx, %eax
	xorl	%edx, %edx
	subl	%ecx, %eax
	movl	$1, sigalarm
	imull	%esi, %eax
	addl	read_score, %esi
	divl	%esi
	leal	128(%ecx,%eax), %eax
	shrl	$8, %eax
	addl	%eax, %ebx
	jmp	.L60
	.p2align 4,,7
	.p2align 3
.L50:
	addl	count_per_buf, %ebx
	movl	sigalarm, %eax
	jmp	.L43
.L63:
	movl	$.LC12, (%esp)
	call	perror
	movl	$-1, %eax
	jmp	.L61
	.cfi_endproc
.LFE33:
	.size	c_test, .-c_test
	.section	.rodata.str1.1
.LC14:
	.string	"fstime: chdir"
	.section	.rodata.str1.4
	.align 4
.LC15:
	.string	"Usage: fstime [-c|-r|-w] [-b <bufsize>] [-m <max_blocks>] [-t <seconds>]\n"
	.align 4
.LC16:
	.string	"fstime: buffer size must be in range %d-%d\n"
	.align 4
.LC17:
	.string	"fstime: max blocks must be in range %d-%d\n"
	.align 4
.LC18:
	.string	"fstime: time must be in range %d-%d seconds\n"
	.section	.rodata.str1.1
.LC19:
	.string	"fstime: creat"
.LC20:
	.string	"fstime: open"
.LC21:
	.string	"fstime: unknown test '%c'\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB29:
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
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	cmpl	$1, %esi
	jle	.L92
	movl	4(%edi), %eax
	cmpb	$45, (%eax)
	jne	.L66
	movl	$1, %ebx
	movb	$99, 31(%esp)
	movl	$10, 24(%esp)
.L67:
	movzbl	1(%eax), %ecx
	leal	-98(%ecx), %eax
	cmpb	$21, %al
	ja	.L66
	movzbl	%al, %eax
	jmp	*.L70(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L70:
	.long	.L69
	.long	.L93
	.long	.L72
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L73
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L66
	.long	.L93
	.long	.L66
	.long	.L74
	.long	.L66
	.long	.L66
	.long	.L93
	.section	.text.startup
	.p2align 4,,7
	.p2align 3
.L93:
	movb	%cl, 31(%esp)
.L71:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	jle	.L65
	movl	(%edi,%ebx,4), %eax
	cmpb	$45, (%eax)
	je	.L67
	.p2align 4,,7
	.p2align 3
.L66:
	movl	stderr, %eax
	movl	$.LC15, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$2, (%esp)
	call	exit
	.p2align 4,,7
	.p2align 3
.L69:
	addl	$1, %ebx
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	(%edi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, bufsize
	jmp	.L71
	.p2align 4,,7
	.p2align 3
.L74:
	addl	$1, %ebx
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	(%edi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, 24(%esp)
	jmp	.L71
	.p2align 4,,7
	.p2align 3
.L73:
	addl	$1, %ebx
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	(%edi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, max_blocks
	jmp	.L71
	.p2align 4,,7
	.p2align 3
.L72:
	addl	$1, %ebx
	movl	(%edi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	chdir
	testl	%eax, %eax
	jns	.L71
	movl	$.LC14, (%esp)
	call	perror
	movl	$1, (%esp)
	call	exit
.L92:
	movb	$99, 31(%esp)
	movl	$10, 24(%esp)
.L65:
	movl	bufsize, %ecx
	leal	-256(%ecx), %eax
	cmpl	$7936, %eax
	ja	.L104
	movl	max_blocks, %eax
	leal	-1(%eax), %edx
	cmpl	$1048575, %edx
	ja	.L105
	movl	24(%esp), %edx
	subl	$1, %edx
	cmpl	$3599, %edx
	ja	.L106
	sall	$10, %eax
	cltd
	idivl	%ecx
	movl	$384, 4(%esp)
	movl	$.LC2, (%esp)
	movl	$4, count_per_k
	sarl	$8, %ecx
	movl	%ecx, count_per_buf
	movl	%eax, max_buffs
	call	creat
	cmpl	$-1, %eax
	movl	%eax, f
	je	.L80
	movl	%eax, (%esp)
	call	close
	movl	$384, 4(%esp)
	movl	$.LC3, (%esp)
	call	creat
	cmpl	$-1, %eax
	movl	%eax, g
	je	.L80
	movl	%eax, (%esp)
	call	close
	movl	$2, 4(%esp)
	movl	$.LC2, (%esp)
	call	open
	movl	%eax, f
	addl	$1, %eax
	je	.L82
	movl	$2, 4(%esp)
	movl	$.LC3, (%esp)
	call	open
	movl	%eax, g
	addl	$1, %eax
	je	.L82
	movl	bufsize, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.L88
	.p2align 4,,7
	.p2align 3
.L98:
	movb	%al, buf(%eax)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L98
.L88:
	movl	$clean_up, 4(%esp)
	movl	$9, (%esp)
	call	__sysv_signal
	movzbl	31(%esp), %eax
	cmpb	$114, %al
	je	.L85
	cmpb	$119, %al
	je	.L86
	cmpb	$99, %al
	je	.L107
	movsbl	31(%esp), %edi
	movl	stderr, %eax
	movl	$.LC21, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$6, (%esp)
	call	exit
.L106:
	movl	$3600, 16(%esp)
	movl	$1, 12(%esp)
	movl	$.LC18, 8(%esp)
.L103:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$3, (%esp)
	call	exit
.L104:
	movl	$1048576, 16(%esp)
	movl	$256, 12(%esp)
	movl	$.LC16, 8(%esp)
	jmp	.L103
.L105:
	movl	$1048576, 16(%esp)
	movl	$1, 12(%esp)
	movl	$.LC17, 8(%esp)
	jmp	.L103
.L80:
	movl	$.LC19, (%esp)
	call	perror
	movl	$1, (%esp)
	call	exit
.L82:
	movl	$.LC20, (%esp)
	call	perror
	movl	$1, (%esp)
	call	exit
.L107:
	movl	$2, (%esp)
	call	w_test
	movl	$2, (%esp)
	call	r_test
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	c_test
.L90:
	testl	%eax, %eax
	movl	$.LC2, (%esp)
	je	.L91
	call	unlink
	movl	$.LC3, (%esp)
	call	unlink
	movl	$1, (%esp)
	call	exit
.L91:
	call	unlink
	movl	$.LC3, (%esp)
	call	unlink
	movl	$0, (%esp)
	call	exit
.L86:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	w_test
	jmp	.L90
.L85:
	movl	$2, (%esp)
	call	w_test
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	r_test
	jmp	.L90
	.cfi_endproc
.LFE29:
	.size	main, .-main
	.globl	sigalarm
	.bss
	.align 4
	.type	sigalarm, @object
	.size	sigalarm, 4
sigalarm:
	.zero	4
	.comm	i,4,4
	.comm	g,4,4
	.comm	f,4,4
	.comm	buf,8192,32
	.comm	count_per_buf,4,4
	.comm	count_per_k,4,4
	.globl	max_buffs
	.data
	.align 4
	.type	max_buffs, @object
	.size	max_buffs, 4
max_buffs:
	.long	2000
	.globl	max_blocks
	.align 4
	.type	max_blocks, @object
	.size	max_blocks, 4
max_blocks:
	.long	2000
	.globl	bufsize
	.align 4
	.type	bufsize, @object
	.size	bufsize, 4
bufsize:
	.long	1024
	.globl	copy_score
	.align 4
	.type	copy_score, @object
	.size	copy_score, 4
copy_score:
	.long	1
	.globl	write_score
	.align 4
	.type	write_score, @object
	.size	write_score, 4
write_score:
	.long	1
	.globl	read_score
	.align 4
	.type	read_score, @object
	.size	read_score, 4
read_score:
	.long	1
	.globl	SCCSid
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 42
SCCSid:
	.string	"@(#) @(#)fstime.c:3.5 -- 5/15/91 19:30:19"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1598689907
	.long	1051772663
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
