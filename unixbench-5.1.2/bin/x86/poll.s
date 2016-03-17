	.file	"time-polling.c"
	.text
	.p2align 4,,15
	.type	test_func, @function
test_func:
.LFB48:
	.cfi_startproc
	addl	$1, total_bits
	ret
	.cfi_endproc
.LFE48:
	.size	test_func, .-test_func
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Error dup()ing\t%s\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"File descriptor: %d larger than max: %d\n"
	.align 4
.LC2:
	.string	"Usage:\ttime-polling [num_iter] [num_to_test] [num_active] [-v]\n"
	.section	.rodata.str1.1
.LC3:
	.string	"num_iter too large\n"
	.section	.rodata.str1.4
	.align 4
.LC4:
	.string	"Num fds: %d, polling descriptors %d-%d\n"
	.section	.rodata.str1.1
.LC5:
	.string	"Error polling\t%s\n"
.LC6:
	.string	"Error: nready: %d\n"
.LC7:
	.string	"\n%d\t\t"
.LC8:
	.string	"%-12ld"
.LC9:
	.string	"\n\naverage\t\t"
.LC10:
	.string	"Per fd\t\t"
.LC11:
	.string	"%-12.2f"
.LC14:
	.string	"lps\t%.2f\t%.1f\n"
.LC15:
	.string	"<- the most important value\n"
.LC16:
	.string	"All times in microseconds\n"
.LC17:
	.string	"ITERATION\t"
.LC18:
	.string	"poll(2)"
.LC19:
	.string	"%-12s"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	$-1, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	andl	$-16, %esp
	subl	$331760, %esp
	leal	4080(%esp), %edi
	movl	$327680, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	memset
.L7:
	movl	$1, (%esp)
	call	dup
	cmpl	$-1, %eax
	je	.L61
	cmpl	$40959, %eax
	jg	.L62
	movl	%eax, %ecx
	sall	$4, %ecx
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	testl	%esi, %esi
	cmovs	%eax, %esi
	xorl	%edx, %edx
	movl	$test_func, callbacks(%ecx)
	movl	$test_func, callbacks+4(%ecx)
	movl	$test_func, callbacks+8(%ecx)
	movl	$0, callbacks+12(%ecx)
	movl	%eax, 4080(%esp,%eax,8)
	movw	%dx, 4084(%esp,%eax,8)
	jmp	.L7
	.p2align 4,,7
	.p2align 3
.L61:
	call	__errno_location
	movl	%eax, 36(%esp)
	movl	(%eax), %eax
	cmpl	$24, %eax
	je	.L4
	movl	%eax, (%esp)
	call	strerror
	movl	$.LC0, 8(%esp)
	movl	%eax, 12(%esp)
.L59:
	movl	stderr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
	.p2align 4,,7
	.p2align 3
.L4:
	cmpl	$5, 8(%ebp)
	jg	.L14
	cmpl	$1, 8(%ebp)
	jle	.L8
	movl	12(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	cmpl	$1000, %eax
	movl	%eax, 44(%esp)
	jle	.L9
	movl	stderr, %eax
	movl	$.LC3, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L9:
	cmpl	$2, 8(%ebp)
	leal	1(%ebx), %edx
	jle	.L10
	movl	12(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, 52(%esp)
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	52(%esp), %edx
	cmpl	$3, 8(%ebp)
	movl	%eax, 56(%esp)
	je	.L12
	movl	12(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, 52(%esp)
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	52(%esp), %edx
	cmpl	$5, 8(%ebp)
	jne	.L41
	movl	12(%ebp), %ecx
	movl	16(%ecx), %ecx
	cmpb	$45, (%ecx)
	jne	.L14
	cmpb	$118, 1(%ecx)
	jne	.L14
	cmpb	$0, 2(%ecx)
	movl	$1, 32(%esp)
	je	.L13
.L14:
	movl	stderr, %eax
	movl	$63, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	$1, (%esp)
	call	exit
.L62:
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	$40959, 16(%esp)
	movl	$.LC1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$1, (%esp)
	call	exit
.L8:
	leal	1(%ebx), %edx
	movl	$1000, 44(%esp)
.L10:
	movl	%edx, %eax
	subl	%esi, %eax
	movl	%eax, 56(%esp)
.L12:
	movl	$1, %eax
	movl	$0, 32(%esp)
.L13:
	movl	%edx, %ecx
	subl	%esi, %ecx
	movl	56(%esp), %esi
	cmpl	%ecx, %esi
	cmovg	%ecx, %esi
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	movl	%edx, %eax
	subl	%esi, %eax
	cmpl	%edx, %eax
	movl	%esi, 40(%esp)
	movl	%eax, %esi
	movl	%ecx, 56(%esp)
	jge	.L18
	leal	4(%edi,%eax,8), %eax
	leal	4092(%esp,%ebx,8), %ecx
	.p2align 4,,7
	.p2align 3
.L19:
	movw	$3, (%eax)
	addl	$8, %eax
	cmpl	%ecx, %eax
	jne	.L19
.L18:
	movl	%edx, %eax
	subl	56(%esp), %eax
	cmpl	%edx, %eax
	jge	.L17
	leal	4(%edi,%eax,8), %eax
	leal	4092(%esp,%ebx,8), %ecx
	.p2align 4,,7
	.p2align 3
.L22:
	orw	$4, (%eax)
	addl	$8, %eax
	cmpl	%ecx, %eax
	jne	.L22
.L17:
	movl	stdout, %eax
	movl	%edx, 12(%esp)
	movl	%ebx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$.LC4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	leal	(%edi,%esi,8), %eax
	movl	40(%esp), %edi
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%eax, 48(%esp)
	movl	%edi, 4(%esp)
	call	poll
	cmpl	$0, 44(%esp)
	movl	$0, 52(%esp)
	jle	.L63
	.p2align 4,,7
	.p2align 3
.L55:
	leal	64(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, total_bits
	call	gettimeofday
	movl	40(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	poll
	cmpl	$-1, %eax
	movl	%eax, %edi
	je	.L64
	testl	%eax, %eax
	jle	.L65
	movl	48(%esp), %esi
	jmp	.L30
	.p2align 4,,7
	.p2align 3
.L26:
	testb	$1, %bl
	jne	.L66
.L27:
	andl	$4, %ebx
	jne	.L67
.L28:
	subl	$1, %edi
	.p2align 4,,2
	je	.L29
.L25:
	addl	$8, %esi
.L30:
	movzwl	6(%esi), %ebx
	testw	%bx, %bx
	je	.L25
	testb	$2, %bl
	movl	(%esi), %eax
	je	.L26
	movl	%eax, %edx
	sall	$4, %edx
	movl	callbacks+12(%edx), %ecx
	addl	$callbacks, %edx
	movl	%eax, 56(%esp)
	movl	%ecx, (%esp)
	call	*8(%edx)
	testb	$1, %bl
	movl	56(%esp), %eax
	je	.L27
.L66:
	movl	%eax, %edx
	sall	$4, %edx
	movl	callbacks+12(%edx), %ecx
	movl	%eax, 56(%esp)
	movl	%ecx, (%esp)
	call	*callbacks(%edx)
	andl	$4, %ebx
	movl	56(%esp), %eax
	je	.L28
.L67:
	sall	$4, %eax
	movl	callbacks+12(%eax), %edx
	addl	$callbacks, %eax
	movl	%edx, (%esp)
	call	*4(%eax)
	subl	$1, %edi
	jne	.L25
.L29:
	leal	72(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	gettimeofday
	movl	72(%esp), %eax
	subl	64(%esp), %eax
	movl	52(%esp), %edi
	addl	$1, 52(%esp)
	imull	$1000000, %eax, %eax
	addl	76(%esp), %eax
	subl	68(%esp), %eax
	movl	%eax, 80(%esp,%edi,4)
	movl	52(%esp), %eax
	cmpl	44(%esp), %eax
	jne	.L55
	movl	stdout, %eax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC16, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	stdout, %eax
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC17, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	stdout, %eax
	movl	$.LC18, 12(%esp)
	movl	$.LC19, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	32(%esp), %edx
	movl	44(%esp), %ecx
	jmp	.L39
	.p2align 4,,7
	.p2align 3
.L68:
	movl	80(%esp,%ebx,4), %edi
.L34:
	addl	$1, %ebx
	addl	%edi, %esi
	cmpl	%ecx, %ebx
	je	.L38
.L39:
	testl	%edx, %edx
	je	.L68
	movl	stdout, %eax
	movl	%ebx, 12(%esp)
	movl	$.LC7, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 52(%esp)
	movl	%edx, 56(%esp)
	call	__fprintf_chk
	movl	80(%esp,%ebx,4), %edi
	movl	stdout, %eax
	movl	$.LC8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	52(%esp), %ecx
	movl	56(%esp), %edx
	jmp	.L34
.L63:
	movl	stdout, %eax
	xorl	%esi, %esi
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC16, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	stdout, %eax
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC17, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	stdout, %eax
	movl	$.LC18, 12(%esp)
	movl	$.LC19, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__fprintf_chk
.L38:
	movl	stdout, %eax
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC9, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	%esi, %eax
	cltd
	idivl	44(%esp)
	movl	$.LC8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stdout, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	stdout, %eax
	movl	$10, (%esp)
	movl	%eax, 4(%esp)
	call	_IO_putc
	movl	stdout, %eax
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC10, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	stdout, %eax
	movl	%esi, 60(%esp)
	movl	$.LC11, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	fildl	60(%esp)
	fildl	40(%esp)
	fildl	44(%esp)
	fmulp	%st, %st(1)
	fld	%st(1)
	fstps	52(%esp)
	fdivr	%st, %st(1)
	fstps	56(%esp)
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	stderr, %eax
	movl	$.LC14, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	flds	52(%esp)
	flds	.LC12
	fmul	%st(1), %st
	fstpl	20(%esp)
	flds	56(%esp)
	fmuls	.LC13
	fdivp	%st, %st(1)
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	stdout, %eax
	movl	$28, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC15, (%esp)
	movl	%eax, 12(%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L41:
	movl	$0, 32(%esp)
	jmp	.L13
.L65:
	movl	%eax, 12(%esp)
	movl	$.LC6, 8(%esp)
	jmp	.L59
.L64:
	movl	36(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror
	movl	$.LC5, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	stderr, %eax
	movl	%eax, (%esp)
	call	__fprintf_chk
	movl	$2, (%esp)
	call	exit
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.comm	callbacks,655360,32
	.local	total_bits
	.comm	total_bits,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC12:
	.long	897988541
	.align 4
.LC13:
	.long	1232348160
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
