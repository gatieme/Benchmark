	.file	"execl.c"
	.text
	.p2align 4,,15
	.globl	pipeerr
	.type	pipeerr, @function
pipeerr:
.LFB52:
	.cfi_startproc
	addl	$1, sigpipe
	ret
	.cfi_endproc
.LFE52:
	.size	pipeerr, .-pipeerr
	.p2align 4,,15
	.globl	onalarm
	.type	onalarm, @function
onalarm:
.LFB50:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	flds	thres
	fadds	est_rate
	movl	$onalarm, 4(%esp)
	movl	$14, (%esp)
	fstps	thres
	call	__sysv_signal
	movl	$5, 32(%esp)
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	jmp	alarm
	.cfi_endproc
.LFE50:
	.size	onalarm, .-onalarm
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC2:
	.string	"user %d job %d pid %d killed off\n"
	.text
	.p2align 4,,15
	.globl	wrapup
	.type	wrapup, @function
wrapup:
.LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$child+16, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	stderr, %eax
	movl	64(%esp), %ebp
	movl	%eax, (%esp)
	call	fflush
	movl	nusers, %eax
	testl	%eax, %eax
	jg	.L12
	jmp	.L8
	.p2align 4,,7
	.p2align 3
.L7:
	movl	(%ebx), %eax
	movl	$1, %edi
	movl	$.LC2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 20(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	firstuser, %eax
	addl	%esi, %eax
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
.L6:
	addl	$1, %esi
	addl	$32, %ebx
	cmpl	%esi, nusers
	jle	.L8
.L12:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jle	.L6
	movl	$9, 4(%esp)
	movl	%eax, (%esp)
	call	kill
	cmpl	$-1, %eax
	je	.L6
	testl	%edi, %edi
	jne	.L7
	movl	stderr, %eax
	movl	%ebp, 12(%esp)
	movl	$.LC1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
	jmp	.L7
	.p2align 4,,7
	.p2align 3
.L8:
	movl	exit_status, %eax
	movl	%eax, (%esp)
	call	exit
	.cfi_endproc
.LFE53:
	.size	wrapup, .-wrapup
	.section	.rodata.str1.4
	.align 4
.LC3:
	.string	"Timed out waiting for jobs to finish ..."
	.text
	.p2align 4,,15
	.globl	grunt
	.type	grunt, @function
grunt:
.LFB51:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$.LC3, (%esp)
	movl	$4, exit_status
	call	wrapup
	.cfi_endproc
.LFE51:
	.size	grunt, .-grunt
	.section	.rodata.str1.4
	.align 4
.LC4:
	.string	"Too many jobs specified, .. increase MAXWORK\n"
	.section	.rodata.str1.1
.LC5:
	.string	""
	.section	.rodata.str1.4
	.align 4
.LC6:
	.string	"cannot open input file (%s) for job %d\n"
	.section	.rodata.str1.1
.LC7:
	.string	"C="
	.text
	.p2align 4,,15
	.globl	getwork
	.type	getwork, @function
getwork:
.LFB54:
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
	subl	$588, %esp
	.cfi_def_cfa_offset 608
	movl	%gs:20, %eax
	movl	%eax, 572(%esp)
	xorl	%eax, %eax
.L19:
	movl	stdin, %eax
	movl	$512, 4(%esp)
	movl	%eax, 8(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	call	fgets
	testl	%eax, %eax
	je	.L57
	movl	nwork, %eax
	cmpl	$9, %eax
	jg	.L58
	movzbl	60(%esp), %ebx
	leal	(%eax,%eax,4), %edx
	leal	work(,%edx,4), %ebp
	testb	$-33, %bl
	je	.L48
	leal	60(%esp), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	.p2align 4,,7
	.p2align 3
.L23:
	addl	$1, %ecx
	movzbl	(%ecx), %ebx
	addl	$1, %eax
	testb	$-33, %bl
	jne	.L23
	leal	-1(%eax), %edi
	movl	%ecx, 36(%esp)
	movl	%edi, %ecx
.L21:
	movl	%eax, (%esp)
	movl	%ecx, 32(%esp)
	movl	%edx, 40(%esp)
	call	malloc
	movl	40(%esp), %edx
	movl	%edi, 8(%esp)
	movl	%eax, %esi
	movl	%eax, work(,%edx,4)
	leal	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	strncpy
	movl	32(%esp), %ecx
	movl	$0, 12(%ebp)
	movl	$.LC5, 8(%ebp)
	movb	$0, (%esi,%ecx)
	movl	$8, (%esp)
	call	malloc
	movl	%esi, %ecx
	cmpb	$0, (%esi)
	movl	%eax, 4(%ebp)
	je	.L24
	.p2align 4,,7
	.p2align 3
.L25:
	addl	$1, %ecx
	cmpb	$0, (%ecx)
	jne	.L25
.L24:
	leal	-1(%ecx), %edx
	cmpl	%edx, %esi
	ja	.L26
	subl	$1, %esi
	cmpb	$47, -1(%ecx)
	jne	.L29
	jmp	.L27
	.p2align 4,,7
	.p2align 3
.L30:
	cmpb	$47, (%edx)
	je	.L27
.L29:
	subl	$1, %edx
	cmpl	%esi, %edx
	.p2align 4,,3
	jne	.L30
.L26:
	testb	%bl, %bl
	movl	%edx, (%eax)
	movl	$2, 40(%esp)
	je	.L59
	.p2align 4,,7
	.p2align 3
.L45:
	cmpb	$32, %bl
	je	.L60
	cmpb	$60, %bl
	jne	.L34
	movl	36(%esp), %eax
	testb	$-33, 1(%eax)
	leal	1(%eax), %edi
	je	.L50
	movl	%edi, %eax
	.p2align 4,,7
	.p2align 3
.L36:
	addl	$1, %eax
	testb	$-33, (%eax)
	jne	.L36
	movl	%eax, 36(%esp)
.L35:
	movl	36(%esp), %eax
	movb	$0, (%eax)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	open
	cmpl	$-1, %eax
	movl	%eax, %ebx
	je	.L61
	movl	$512, (%esp)
	call	malloc
	movl	%eax, 8(%ebp)
	jmp	.L38
	.p2align 4,,7
	.p2align 3
.L39:
	addl	12(%ebp), %eax
	movl	%eax, 12(%ebp)
	addl	$512, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, 8(%ebp)
.L38:
	movl	$512, 8(%esp)
	addl	12(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	read
	testl	%eax, %eax
	jg	.L39
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, 8(%ebp)
	movl	%ebx, (%esp)
	call	close
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	$.LC5, 16(%ebp)
	leal	-10(%eax,%edx), %ebx
	cmpl	%ebx, %eax
	jnb	.L33
	addl	$1, %eax
	movl	%ebx, 32(%esp)
	jmp	.L41
	.p2align 4,,7
	.p2align 3
.L40:
	addl	$1, %eax
	cmpl	32(%esp), %edx
	jnb	.L33
.L41:
	cmpb	$10, -1(%eax)
	movl	%eax, %edx
	jne	.L40
	movl	%eax, %esi
	movl	$2, %ecx
	movl	$.LC7, %edi
	repz cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %ebx
	cmpb	%cl, %bl
	jne	.L40
	addl	$2, %eax
	movl	%eax, 16(%ebp)
	.p2align 4,,7
	.p2align 3
.L33:
	movl	36(%esp), %eax
	movzbl	(%eax), %ebx
	testb	%bl, %bl
	jne	.L45
.L59:
	movl	4(%ebp), %eax
	movl	40(%esp), %edi
	movl	$0, -4(%eax,%edi,4)
	addl	$1, nwork
	jmp	.L19
	.p2align 4,,7
	.p2align 3
.L34:
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	leal	0(,%eax,4), %esi
	movl	%esi, 4(%esp)
	movl	4(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, %edi
	movl	%eax, 4(%ebp)
	movl	36(%esp), %eax
	testb	$-33, (%eax)
	je	.L51
	movl	%eax, %ebx
	movl	$1, %eax
	.p2align 4,,7
	.p2align 3
.L44:
	addl	$1, %ebx
	addl	$1, %eax
	testb	$-33, (%ebx)
	jne	.L44
	leal	-1(%eax), %edx
	movl	%edx, %ecx
.L42:
	movl	%eax, (%esp)
	movl	%ecx, 44(%esp)
	movl	%edx, 32(%esp)
	call	malloc
	movl	32(%esp), %edx
	movl	%eax, -8(%edi,%esi)
	movl	36(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	4(%ebp), %eax
	movl	-8(%eax,%esi), %eax
	movl	%eax, (%esp)
	call	strncpy
	movl	4(%ebp), %eax
	movl	44(%esp), %ecx
	movl	%ebx, 36(%esp)
	movl	-8(%eax,%esi), %eax
	movb	$0, (%eax,%ecx)
	jmp	.L33
	.p2align 4,,7
	.p2align 3
.L60:
	addl	$1, 36(%esp)
	jmp	.L33
.L51:
	movl	36(%esp), %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$1, %eax
	jmp	.L42
.L50:
	movl	%edi, 36(%esp)
	jmp	.L35
.L27:
	addl	$1, %edx
	jmp	.L26
.L48:
	leal	60(%esp), %esi
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movl	$1, %eax
	movl	%esi, 36(%esp)
	jmp	.L21
.L57:
	movl	572(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L62
	addl	$588, %esp
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
.L58:
	.cfi_restore_state
	movl	stderr, %eax
	movl	$.LC4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$4, (%esp)
	call	exit
.L62:
	call	__stack_chk_fail
.L61:
	movl	nwork, %eax
	movl	%edi, 12(%esp)
	movl	$.LC6, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 16(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$4, (%esp)
	call	exit
	.cfi_endproc
.LFE54:
	.size	getwork, .-getwork
	.section	.rodata.str1.1
.LC8:
	.string	"Reason?"
.LC9:
	.string	"pid %d killed off\n"
	.text
	.p2align 4,,15
	.globl	fatal
	.type	fatal, @function
fatal:
.LFB55:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
	movl	$.LC8, (%esp)
	call	perror
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
	movl	nusers, %eax
	testl	%eax, %eax
	jle	.L68
	.p2align 4,,7
	.p2align 3
.L72:
	movl	%ebx, %esi
	sall	$5, %esi
	movl	child+16(%esi), %eax
	testl	%eax, %eax
	jle	.L66
	movl	$9, 4(%esp)
	movl	%eax, (%esp)
	call	kill
	cmpl	$-1, %eax
	je	.L66
	movl	child+16(%esi), %eax
	movl	$.LC9, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
.L66:
	addl	$1, %ebx
	cmpl	%ebx, nusers
	jg	.L72
.L68:
	movl	$4, exit_status
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE55:
	.size	fatal, .-fatal
	.section	.rodata.str1.1
.LC11:
	.string	"a"
.LC12:
	.string	"masterlog.00"
.LC13:
	.string	"%f"
	.section	.rodata.str1.4
	.align 4
.LC15:
	.string	"%s: bad rate, reset to %.2f chars/sec\n"
	.align 4
.LC16:
	.string	"%s: cannot open copy file '%s'\n"
	.section	.rodata.str1.1
.LC17:
	.string	"%s: bad flag '%c'\n"
	.section	.rodata.str1.4
	.align 4
.LC18:
	.string	"%s: impossible nusers (%d<-%s)\n"
	.section	.rodata.str1.1
.LC19:
	.string	"%d Users\n"
.LC20:
	.string	"master pid %d\n"
.LC21:
	.string	"** clone fork failed **\n"
.LC22:
	.string	"master clone pid %d\n"
.LC23:
	.string	"masterlog.%02d"
.LC24:
	.string	"w"
.LC25:
	.string	"user %d job %d "
.LC26:
	.string	"** pipe failed **\n"
.LC27:
	.string	"userlog.%02d"
	.section	.rodata.str1.4
	.align 4
.LC28:
	.string	"makework: cannot open %s for std output\n"
	.section	.rodata.str1.1
.LC29:
	.string	"** exec failed **\n"
.LC30:
	.string	"** fork failed **\n"
.LC31:
	.string	"pid %d pipe fd %d"
.LC32:
	.string	" > "
.LC33:
	.string	"user %d job %d cmd %s "
.LC34:
	.string	"write(,,%d) returns %d\n"
.LC35:
	.string	"** SIGPIPE error **\n"
.LC36:
	.string	"** write error **\n"
.LC37:
	.string	"user %d job %d pid %d done"
.LC38:
	.string	" status %d"
.LC39:
	.string	" exit code %d"
.LC40:
	.string	"Finished waiting ..."
.LC41:
	.string	"%s: missing nusers\n"
.LC42:
	.string	"master clone done, pid %d "
	.text
	.p2align 4,,15
	.globl	dummy
	.type	dummy, @function
dummy:
.LFB49:
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
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	%gs:20, %eax
	movl	%eax, 76(%esp)
	xorl	%eax, %eax
	movl	stderr, %eax
	movl	116(%esp), %ebp
	movl	112(%esp), %esi
	movl	$.LC11, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC12, (%esp)
	call	freopen
	movl	0(%ebp), %eax
	cmpl	$1, %esi
	movl	%eax, 32(%esp)
	jle	.L77
	movl	4(%ebp), %eax
	movl	$0, 28(%esp)
	cmpb	$45, (%eax)
	jne	.L78
	movl	%ebp, %ecx
.L88:
	leal	1(%eax), %ebx
	movsbl	1(%eax), %eax
	leal	-1(%esi), %edx
	leal	4(%ecx), %edi
	testb	%al, %al
	je	.L79
	subl	$2, %esi
	leal	8(%ecx), %ebp
.L87:
	cmpb	$99, %al
	leal	-4(%ebp), %edi
	je	.L81
	cmpb	$114, %al
	jne	.L191
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	0(%ebp), %eax
	movl	%ebp, 36(%esp)
	movl	%eax, (%esp)
	call	strtol
	movl	$est_rate, 8(%esp)
	movl	$.LC13, 4(%esp)
	movl	%eax, 44(%esp)
	movl	0(%ebp), %eax
	fildl	44(%esp)
	fstps	est_rate
	movl	%eax, (%esp)
	call	sscanf
	flds	est_rate
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	.L196
.L195:
	addl	$1, %ebx
	movsbl	(%ebx), %eax
	movl	%esi, %edx
	addl	$4, %ebp
	subl	$1, %esi
	testb	%al, %al
	jne	.L87
	movl	36(%esp), %edi
.L79:
	cmpl	$1, %edx
	jle	.L77
	movl	4(%edi), %eax
	cmpb	$45, (%eax)
	jne	.L151
	movl	%edi, %ecx
	movl	%edx, %esi
	jmp	.L88
	.p2align 4,,7
	.p2align 3
.L81:
	movl	$1, 4(%esp)
	movl	0(%ebp), %eax
	movl	%ebp, 36(%esp)
	movl	%eax, (%esp)
	call	open
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	js	.L197
.L86:
	movl	28(%esp), %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lseek
	jmp	.L195
	.p2align 4,,7
	.p2align 3
.L191:
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	$.LC17, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$4, (%esp)
	call	exit
.L197:
	movl	$384, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	creat
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	jns	.L86
	movl	4(%edi), %eax
	movl	$.LC16, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$2, (%esp)
	call	exit
.L196:
	movl	32(%esp), %eax
	flds	.LC14
	fstl	16(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$.LC15, 8(%esp)
	fstps	40(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	flds	40(%esp)
	fstps	est_rate
	jmp	.L195
.L77:
	movl	32(%esp), %eax
	movl	$.LC41, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$4, (%esp)
	call	exit
.L151:
	movl	%edi, %ebp
.L78:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%ebp), %eax
	movl	%eax, (%esp)
	call	strtol
	testl	%eax, %eax
	movl	%eax, nusers
	jle	.L198
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$12, %ebx
	movl	$.LC19, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	call	getwork
	movl	$12, firstuser
	call	getpid
	movl	$.LC20, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
.L89:
	cmpl	$12, nusers
	jle	.L199
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
	movl	nusers, %eax
	leal	-12(%eax), %edx
	cmpl	$23, %eax
	movl	%edx, %esi
	cmovg	%ebx, %esi
	call	fork
	cmpl	$-1, %eax
	movl	%eax, 48(%esp)
	je	.L200
	testl	%eax, %eax
	jle	.L93
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$.LC22, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	subl	%esi, nusers
	addl	$12, firstuser
	jmp	.L89
.L93:
	movl	firstuser, %eax
	movl	$12, %ecx
	leal	61(%esp), %ebx
	movl	$.LC23, 12(%esp)
	movl	$15, 8(%esp)
	cltd
	idivl	%ecx
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 16(%esp)
	call	__sprintf_chk
	movl	stderr, %eax
	movl	$.LC24, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	freopen
	movl	%esi, nusers
.L94:
	movl	$0, (%esp)
	movl	$child+20, %ebx
	xorl	%esi, %esi
	call	close
	xorl	%ebp, %ebp
	jmp	.L97
.L110:
	movl	stderr, %eax
	addl	$1, %esi
	movl	$10, (%esp)
	movl	%eax, 4(%esp)
	call	fputc
	movl	$0, %eax
	cmpl	nwork, %esi
	cmovge	%eax, %esi
	addl	$1, %ebp
	addl	$32, %ebx
.L97:
	cmpl	nusers, %ebp
	jge	.L201
	movl	firstuser, %eax
	movl	%esi, 16(%esp)
	movl	$.LC25, 8(%esp)
	movl	$1, 4(%esp)
	addl	%ebp, %eax
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	leal	52(%esp), %eax
	movl	%eax, (%esp)
	call	pipe
	addl	$1, %eax
	je	.L202
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
	call	fork
	testl	%eax, %eax
	movl	%eax, -4(%ebx)
	je	.L203
	addl	$1, %eax
	je	.L204
	movl	52(%esp), %eax
	imull	$20, %esi, %edi
	movl	%eax, (%esp)
	call	close
	movl	56(%esp), %eax
	movl	work+8(%edi), %ecx
	movl	work+12(%edi), %edx
	movl	%esi, 8(%ebx)
	movl	%eax, -8(%ebx)
	movl	%ecx, -16(%ebx)
	movl	%ecx, (%ebx)
	movl	%edx, -12(%ebx)
	movl	%esi, 4(%ebx)
	movl	%eax, 16(%esp)
	movl	-4(%ebx), %eax
	movl	$.LC31, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	work+16(%edi), %eax
	cmpb	$0, (%eax)
	je	.L110
	movl	stderr, %eax
	movl	$.LC32, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	work+16(%edi), %edi
	movsbl	(%edi), %eax
	cmpb	$10, %al
	je	.L110
	.p2align 4,,7
	.p2align 3
.L111:
	movl	stderr, %edx
	addl	$1, %edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	fputc
	movsbl	(%edi), %eax
	cmpb	$10, %al
	jne	.L111
	jmp	.L110
.L198:
	movl	4(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	$.LC18, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$4, (%esp)
	call	exit
.L202:
	movl	$.LC26, (%esp)
	call	fatal
.L92:
	movl	$0, (%esp)
	leal	48(%esp), %esi
	call	alarm
	movl	$grunt, 4(%esp)
	movl	$14, (%esp)
	call	__sysv_signal
	movl	$1200, (%esp)
	call	alarm
.L137:
	movl	%esi, (%esp)
	call	wait
	cmpl	$-1, %eax
	je	.L142
	movl	nusers, %ecx
	testl	%ecx, %ecx
	jle	.L139
	xorl	%ebx, %ebx
	cmpl	%eax, child+16
	jne	.L144
	jmp	.L143
	.p2align 4,,7
	.p2align 3
.L138:
	movl	%ebx, %edx
	sall	$5, %edx
	cmpl	%eax, child+16(%edx)
	je	.L143
.L144:
	addl	$1, %ebx
	cmpl	%ecx, %ebx
	jne	.L138
.L139:
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$.LC42, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	48(%esp), %eax
	testl	%eax, %eax
	je	.L148
	movl	%eax, %edx
	andl	$127, %edx
	jne	.L205
.L140:
	testb	$255, %ah
	jne	.L206
.L141:
	movl	$4, exit_status
.L148:
	movl	stderr, %eax
	movl	$10, (%esp)
	movl	%eax, 4(%esp)
	call	fputc
	jmp	.L137
.L143:
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	sall	$5, %eax
	movl	child+28(%eax), %eax
	movl	$.LC37, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 16(%esp)
	movl	firstuser, %eax
	addl	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	48(%esp), %eax
	testl	%eax, %eax
	je	.L134
	movl	%eax, %edx
	andl	$127, %edx
	jne	.L207
.L135:
	testb	$255, %ah
	jne	.L208
.L136:
	movl	$4, exit_status
.L134:
	movl	stderr, %eax
	sall	$5, %ebx
	movl	$10, (%esp)
	movl	%eax, 4(%esp)
	call	fputc
	movl	$-1, child+16(%ebx)
	jmp	.L137
.L208:
	movzbl	%ah, %eax
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$.LC39, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	jmp	.L136
.L207:
	movl	stderr, %eax
	movl	%edx, 12(%esp)
	movl	$.LC38, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	48(%esp), %eax
	jmp	.L135
.L142:
	movl	$0, (%esp)
	call	alarm
	movl	$.LC40, (%esp)
	call	wrapup
.L201:
	movl	stderr, %eax
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	call	fflush
	movl	$0, (%esp)
	call	time
	movl	%eax, (%esp)
	call	srand
	movl	nusers, %ecx
	xorl	%eax, %eax
	flds	.LC14
	fmuls	est_rate
	fldz
	jmp	.L113
.L210:
	addl	$1, %ebx
.L115:
	addl	$1, %eax
.L113:
	cmpl	%ecx, %eax
	jge	.L209
	movl	%eax, %edx
	sall	$5, %edx
	cmpl	$0, child+8(%edx)
	je	.L210
	fadd	%st(1), %st
	jmp	.L115
.L209:
	fstp	%st(1)
	fsts	thres
	movl	$onalarm, 4(%esp)
	fstps	est_rate
	movl	$14, (%esp)
	movl	%ebx, 40(%esp)
	call	__sysv_signal
	movl	$pipeerr, 4(%esp)
	movl	$13, (%esp)
	call	__sysv_signal
	movl	$5, (%esp)
	call	alarm
	movl	$0, 36(%esp)
.L117:
	movl	40(%esp), %eax
	cmpl	nusers, %eax
	jge	.L92
	movl	$child, %esi
	xorl	%ebp, %ebp
	jmp	.L131
.L118:
	addl	$1, %ebp
	addl	$32, %esi
.L131:
	cmpl	nusers, %ebp
	jge	.L211
	movl	8(%esi), %eax
	cmpl	%eax, (%esi)
	movl	%esi, cp
	jge	.L118
	call	rand
	movl	$60, %edi
	cltd
	idivl	%edi
	leal	1(%edx), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 48(%esp)
	je	.L118
	movl	cp, %eax
	movl	(%eax), %edx
	movl	8(%eax), %ebx
	addl	%edx, %ecx
	cmpl	%ebx, %ecx
	jle	.L119
	subl	%edx, %ebx
	movl	%ebx, 48(%esp)
.L119:
	movl	48(%esp), %ecx
	movl	4(%eax), %ebx
	movl	%esi, 32(%esp)
	addl	%ecx, %edx
	leal	(%ebx,%ecx), %edi
	movl	%edi, 4(%eax)
	movl	28(%esp), %edi
	movl	%edx, (%eax)
.L120:
	movl	4(%eax), %edx
	cmpl	%edx, %ebx
	jnb	.L212
	cmpb	$10, (%ebx)
	je	.L121
	subl	$1, %edx
	cmpl	%edx, %ebx
	leal	1(%ebx), %ecx
	je	.L213
.L122:
	movl	%ecx, %ebx
	jmp	.L120
.L213:
	movl	8(%eax), %esi
	cmpl	%esi, (%eax)
	jl	.L122
.L121:
	movl	20(%eax), %ecx
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	1(%edx), %esi
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	write
	cmpl	%esi, %eax
	jne	.L214
	testl	%edi, %edi
	jne	.L215
.L125:
	movl	cp, %eax
	leal	1(%ebx), %ecx
	movl	%ecx, %ebx
	movl	%ecx, 20(%eax)
	jmp	.L120
.L215:
	movl	cp, %eax
	movl	%ebx, %edx
	movl	20(%eax), %eax
	movl	%edi, (%esp)
	subl	%eax, %edx
	addl	$1, %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	write
	jmp	.L125
.L212:
	movl	8(%eax), %edi
	cmpl	%edi, (%eax)
	movl	32(%esp), %esi
	jge	.L216
.L127:
	movl	48(%esp), %eax
	addl	%eax, 36(%esp)
	jmp	.L118
.L211:
	fildl	36(%esp)
	fstps	32(%esp)
	jmp	.L129
.L130:
	call	pause
.L129:
	flds	thres
	flds	32(%esp)
	fcomip	%st(1), %st
	fstp	%st(0)
	ja	.L130
	jmp	.L117
.L216:
	movl	12(%eax), %eax
	addl	$1, 40(%esp)
	movl	%eax, (%esp)
	call	close
	jmp	.L127
.L214:
	movl	%eax, 28(%esp)
	movl	cp, %eax
	movl	20(%eax), %eax
	movb	$0, (%eax,%esi)
	movl	cp, %eax
	addl	firstuser, %ebp
	movl	20(%eax), %ecx
	movl	%ecx, 20(%esp)
	movl	28(%eax), %eax
	movl	%ebp, 12(%esp)
	movl	$.LC33, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 16(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	28(%esp), %edx
	movl	stderr, %eax
	movl	%esi, 12(%esp)
	movl	$.LC34, 8(%esp)
	movl	%edx, 16(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	cmpl	$0, sigpipe
	je	.L124
	movl	$.LC35, (%esp)
	call	fatal
	jmp	.L92
.L204:
	movl	$.LC30, (%esp)
	call	fatal
	jmp	.L92
.L203:
	cmpl	$0, 52(%esp)
	je	.L100
	movl	$0, (%esp)
	call	close
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	dup
.L100:
	addl	firstuser, %ebp
	leal	61(%esp), %ebx
	movl	%ebx, (%esp)
	movl	%ebp, 16(%esp)
	movl	$.LC27, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	call	__sprintf_chk
	movl	stderr, %eax
	movl	%ebx, (%esp)
	movl	$3, %ebx
	movl	$.LC24, 4(%esp)
	movl	%eax, 8(%esp)
	call	freopen
.L102:
	movl	%ebx, (%esp)
	addl	$1, %ebx
	call	close
	cmpl	$24, %ebx
	jne	.L102
	imull	$20, %esi, %eax
	movl	work+16(%eax), %ebx
	cmpb	$0, (%ebx)
	jne	.L104
.L103:
	imull	$20, %esi, %esi
	movl	work+4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	work(%esi), %eax
	movl	%eax, (%esp)
	call	execv
	movl	$.LC29, (%esp)
	call	fatal
	jmp	.L92
.L105:
	addl	$1, %ebx
.L104:
	cmpb	$10, (%ebx)
	jne	.L105
	movb	$0, (%ebx)
	imull	$20, %esi, %edi
	movl	stdout, %eax
	movl	$.LC24, 4(%esp)
	movl	%eax, 8(%esp)
	movl	work+16(%edi), %eax
	movl	%eax, (%esp)
	call	freopen
	testl	%eax, %eax
	je	.L217
.L106:
	movb	$10, (%ebx)
	jmp	.L103
.L206:
	movzbl	%ah, %eax
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$.LC39, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	jmp	.L141
.L205:
	movl	stderr, %eax
	movl	%edx, 12(%esp)
	movl	$.LC38, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	48(%esp), %eax
	jmp	.L140
.L124:
	movl	$.LC36, (%esp)
	call	fatal
	jmp	.L92
.L200:
	movl	$.LC21, (%esp)
	call	fatal
	jmp	.L92
.L199:
	movl	$0, firstuser
	jmp	.L94
.L217:
	movl	work+16(%edi), %eax
	movl	$.LC28, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	fflush
	jmp	.L106
	.cfi_endproc
.LFE49:
	.size	dummy, .-dummy
	.section	.rodata.str1.1
.LC43:
	.string	"Usage: %s duration\n"
.LC44:
	.string	"UB_BINDIR"
.LC45:
	.string	"%s/execl"
.LC46:
	.string	"%lu"
.LC47:
	.string	"COUNT|%lu|1|lps\n"
.LC48:
	.string	"0"
.LC49:
	.string	"Exec failed at iteration %lu\n"
.LC50:
	.string	"Reason"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB56:
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
	subl	$352, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, 348(%esp)
	xorl	%eax, %eax
	cmpl	$1, 8(%ebp)
	jle	.L229
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	call	strtol
	testl	%eax, %eax
	movl	%eax, %ebx
	jle	.L220
	movl	4(%edi), %eax
	leal	92(%esp), %esi
	movl	$.LC44, (%esp)
	movl	%eax, 36(%esp)
	call	getenv
	testl	%eax, %eax
	je	.L221
	leal	92(%esp), %esi
	movl	%eax, 16(%esp)
	movl	$.LC45, 12(%esp)
	movl	$256, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	__sprintf_chk
.L221:
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	time
	movl	%esi, %ecx
	xorl	%esi, %esi
.L222:
	addl	$1, %esi
	leal	56(%esp), %edi
	movl	%esi, 16(%esp)
	movl	$.LC46, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 40(%esp)
	call	__sprintf_chk
	movl	48(%esp), %eax
	leal	68(%esp), %edx
	movl	%edx, (%esp)
	movl	$.LC46, 12(%esp)
	movl	$24, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$1, 4(%esp)
	movl	%edx, 44(%esp)
	call	__sprintf_chk
	leal	52(%esp), %eax
	movl	%eax, (%esp)
	call	time
	movl	52(%esp), %eax
	subl	48(%esp), %eax
	movl	44(%esp), %edx
	movl	40(%esp), %ecx
	cmpl	%eax, %ebx
	jg	.L223
	movl	stderr, %eax
	movl	%esi, 12(%esp)
	movl	$.LC47, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$0, (%esp)
	call	exit
.L223:
	movl	36(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%ecx, (%esp)
	movl	$0, 24(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$.LC48, 8(%esp)
	call	execl
	movl	stderr, %eax
	movl	%esi, 12(%esp)
	movl	$.LC49, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$.LC50, (%esp)
	call	perror
	movl	$1, (%esp)
	call	exit
.L229:
	movl	(%edi), %eax
	movl	$.LC43, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L220:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, %ebx
	movl	8(%edi), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 36(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	$.LC46, 4(%esp)
	movl	%eax, %esi
	leal	48(%esp), %eax
	movl	%eax, 8(%esp)
	movl	16(%edi), %eax
	movl	%eax, (%esp)
	call	sscanf
	movl	(%edi), %ecx
	jmp	.L222
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.comm	cp,4,4
	.comm	child,384,32
	.comm	work,200,32
	.comm	sigpipe,4,4
	.globl	exit_status
	.bss
	.align 4
	.type	exit_status, @object
	.size	exit_status, 4
exit_status:
	.zero	4
	.globl	nwork
	.align 4
	.type	nwork, @object
	.size	nwork, 4
nwork:
	.zero	4
	.comm	firstuser,4,4
	.comm	nusers,4,4
	.globl	est_rate
	.data
	.align 4
	.type	est_rate, @object
	.size	est_rate, 4
est_rate:
	.long	1084227584
	.comm	thres,4,4
	.comm	bss,8192,32
	.globl	SCCSid
	.align 32
	.type	SCCSid, @object
	.size	SCCSid, 41
SCCSid:
	.string	"@(#) @(#)execl.c:3.3 -- 5/15/91 19:30:19"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC14:
	.long	1084227584
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
