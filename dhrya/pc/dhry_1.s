	.file	"dhry_1.c"
	.text
	.p2align 4,,15
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB62:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	Ptr_Glob, %eax
	movl	32(%esp), %esi
	movl	(%eax), %edx
	movl	(%esi), %ebx
	movl	%edx, (%ebx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	8(%eax), %edx
	movl	%edx, 8(%ebx)
	movl	12(%eax), %edx
	movl	%edx, 12(%ebx)
	movl	16(%eax), %edx
	movl	%edx, 16(%ebx)
	movl	20(%eax), %edx
	movl	%edx, 20(%ebx)
	movl	24(%eax), %edx
	movl	%edx, 24(%ebx)
	movl	28(%eax), %edx
	movl	%edx, 28(%ebx)
	movl	32(%eax), %edx
	movl	%edx, 32(%ebx)
	movl	36(%eax), %edx
	movl	%edx, 36(%ebx)
	movl	40(%eax), %edx
	movl	%edx, 40(%ebx)
	movl	44(%eax), %edx
	movl	%edx, 44(%ebx)
	movl	(%esi), %edx
	movl	$5, 12(%esi)
	movl	$5, 12(%ebx)
	movl	%edx, (%ebx)
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	movl	Ptr_Glob, %eax
	movl	$10, (%esp)
	addl	$12, %eax
	movl	%eax, 8(%esp)
	movl	Int_Glob, %eax
	movl	%eax, 4(%esp)
	call	Proc_7
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	.L7
	movl	(%esi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	4(%eax), %edx
	movl	%edx, 4(%esi)
	movl	8(%eax), %edx
	movl	%edx, 8(%esi)
	movl	12(%eax), %edx
	movl	%edx, 12(%esi)
	movl	16(%eax), %edx
	movl	%edx, 16(%esi)
	movl	20(%eax), %edx
	movl	%edx, 20(%esi)
	movl	24(%eax), %edx
	movl	%edx, 24(%esi)
	movl	28(%eax), %edx
	movl	%edx, 28(%esi)
	movl	32(%eax), %edx
	movl	%edx, 32(%esi)
	movl	36(%eax), %edx
	movl	%edx, 36(%esi)
	movl	40(%eax), %edx
	movl	%edx, 40(%esi)
	movl	44(%eax), %eax
	movl	%eax, 44(%esi)
	addl	$20, %esp
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
.L7:
	.cfi_restore_state
	leal	8(%ebx), %eax
	movl	$6, 12(%ebx)
	movl	%eax, 4(%esp)
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	call	Proc_6
	movl	Ptr_Glob, %eax
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	leal	12(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	Proc_7
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
.LFE62:
	.size	Proc_1, .-Proc_1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a+"
.LC1:
	.string	"result"
.LC2:
	.string	"Can not open dhry.res\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC3:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)"
	.align 4
.LC4:
	.string	"Please give the number of runs through the benchmark: "
	.section	.rodata.str1.1
.LC5:
	.string	"%d"
	.section	.rodata.str1.4
	.align 4
.LC6:
	.string	"Execution starts, %d runs through Dhrystone\n"
	.section	.rodata.str1.1
.LC7:
	.string	"Execution ends"
	.section	.rodata.str1.4
	.align 4
.LC8:
	.string	"Final values of the variables used in the benchmark:"
	.section	.rodata.str1.1
.LC9:
	.string	"Int_Glob:            %d\n"
.LC10:
	.string	"        should be:   %d\n"
.LC11:
	.string	"Bool_Glob:           %d\n"
.LC12:
	.string	"Ch_1_Glob:           %c\n"
.LC13:
	.string	"        should be:   %c\n"
.LC14:
	.string	"Ch_2_Glob:           %c\n"
.LC15:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC16:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.section	.rodata.str1.4
	.align 4
.LC17:
	.string	"        should be:   Number_Of_Runs + 10"
	.section	.rodata.str1.1
.LC18:
	.string	"Ptr_Glob->"
.LC19:
	.string	"  Ptr_Comp:          %d\n"
	.section	.rodata.str1.4
	.align 4
.LC20:
	.string	"        should be:   (implementation-dependent)"
	.section	.rodata.str1.1
.LC21:
	.string	"  Discr:             %d\n"
.LC22:
	.string	"  Enum_Comp:         %d\n"
.LC23:
	.string	"  Int_Comp:          %d\n"
.LC24:
	.string	"  Str_Comp:          %s\n"
	.section	.rodata.str1.4
	.align 4
.LC25:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING"
	.section	.rodata.str1.1
.LC26:
	.string	"Next_Ptr_Glob->"
	.section	.rodata.str1.4
	.align 4
.LC27:
	.string	"        should be:   (implementation-dependent), same as above"
	.section	.rodata.str1.1
.LC28:
	.string	"Int_1_Loc:           %d\n"
.LC29:
	.string	"Int_2_Loc:           %d\n"
.LC30:
	.string	"Int_3_Loc:           %d\n"
.LC31:
	.string	"Enum_Loc:            %d\n"
.LC32:
	.string	"Str_1_Loc:           %s\n"
	.section	.rodata.str1.4
	.align 4
.LC33:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
	.section	.rodata.str1.1
.LC34:
	.string	"Str_2_Loc:           %s\n"
	.section	.rodata.str1.4
	.align 4
.LC35:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
	.align 4
.LC37:
	.string	"Measured time too small to obtain meaningful results"
	.align 4
.LC38:
	.string	"Please increase number of runs"
	.section	.rodata.str1.1
.LC41:
	.string	"Register option selected?  NO"
.LC42:
	.string	"Register option not selected."
	.section	.rodata.str1.4
	.align 4
.LC43:
	.string	"Microseconds for one run through Dhrystone: "
	.section	.rodata.str1.1
.LC44:
	.string	"%7.1lf \n"
	.section	.rodata.str1.4
	.align 4
.LC45:
	.string	"Dhrystones per Second:                      "
	.section	.rodata.str1.1
.LC46:
	.string	"%10.1lf \n"
.LC47:
	.string	"VAX MIPS rating = %10.3lf \n"
	.section	.rodata.str1.4
	.align 4
.LC48:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"
	.section	.rodata.str1.1
.LC49:
	.string	"%s\n"
	.section	.rodata.str1.4
	.align 4
.LC50:
	.string	"Microseconds for one loop: %7.1lf\n"
	.align 4
.LC51:
	.string	"Dhrystones per second: %10.1lf\n"
	.section	.rodata.str1.1
.LC52:
	.string	"VAX MIPS rating: %10.3lf\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB61:
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
	addl	$-128, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$.LC0, 4(%esp)
	movl	$.LC1, (%esp)
	movl	%edx, 40(%esp)
	movl	%gs:20, %eax
	movl	%eax, 124(%esp)
	xorl	%eax, %eax
	call	fopen
	movl	40(%esp), %edx
	testl	%eax, %eax
	movl	%eax, 24(%esp)
	je	.L29
	movl	$48, (%esp)
	movl	$18254, %esi
	movl	%edx, 40(%esp)
	call	malloc
	movl	$48, (%esp)
	movl	%eax, %edi
	movl	%eax, Next_Ptr_Glob
	call	malloc
	movl	$18254, %ecx
	movw	%si, 90(%esp)
	movl	$1498564676, 62(%esp)
	movl	$1313821779, 66(%esp)
	movl	$1380982853, 70(%esp)
	movl	$1095911247, 74(%esp)
	movw	%cx, 44(%eax)
	movl	%edi, (%eax)
	leal	56(%esp), %edi
	movl	$0, 4(%eax)
	movl	$2, 8(%eax)
	movl	$40, 12(%eax)
	movl	$1498564676, 16(%eax)
	movl	$1313821779, 20(%eax)
	movl	$1380982853, 24(%eax)
	movl	$1095911247, 28(%eax)
	movl	$1394617421, 32(%eax)
	movl	$541412687, 36(%eax)
	movl	$1230132307, 40(%eax)
	movb	$0, 46(%eax)
	movl	$10, (%esp)
	movl	%eax, Ptr_Glob
	movl	$824192077, 78(%esp)
	movl	$542397223, 82(%esp)
	movl	$1230132307, 86(%esp)
	movb	$0, 92(%esp)
	movl	$10, Arr_2_Glob+1628
	call	putchar
	movl	$.LC3, (%esp)
	call	puts
	movl	$10, (%esp)
	call	putchar
	movl	$.LC4, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%edi, 4(%esp)
	movl	$.LC5, (%esp)
	call	__isoc99_scanf
	movl	56(%esp), %eax
	movl	$10, (%esp)
	movl	%eax, %esi
	movl	%eax, 28(%esp)
	call	putchar
	movl	%esi, 8(%esp)
	movl	$.LC6, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	call	dtime
	testl	%esi, %esi
	movl	40(%esp), %edx
	fstpl	Begin_Time
	jle	.L30
	leal	93(%esp), %eax
	movl	%eax, 32(%esp)
	leal	62(%esp), %eax
	movl	$1, 40(%esp)
	movl	%eax, 36(%esp)
	.p2align 4,,7
	.p2align 3
.L17:
	movl	32(%esp), %eax
	movl	$18254, %edx
	movw	%dx, 121(%esp)
	movb	$65, Ch_1_Glob
	movl	$1, Bool_Glob
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movb	$66, Ch_2_Glob
	movl	$1498564676, 93(%esp)
	movl	$1313821779, 97(%esp)
	movl	%eax, (%esp)
	movl	$1380982853, 101(%esp)
	movl	$1095911247, 105(%esp)
	movl	$840969293, 109(%esp)
	movl	$541347367, 113(%esp)
	movl	$1230132307, 117(%esp)
	movb	$0, 123(%esp)
	movl	$1, 56(%esp)
	call	Func_2
	movl	$3, 4(%esp)
	movl	$2, (%esp)
	movl	$7, 52(%esp)
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, Bool_Glob
	leal	52(%esp), %eax
	movl	%eax, 8(%esp)
	call	Proc_7
	movl	52(%esp), %eax
	movl	$3, 8(%esp)
	movl	$Arr_2_Glob, 4(%esp)
	movl	$Arr_1_Glob, (%esp)
	movl	%eax, 12(%esp)
	call	Proc_8
	movl	Ptr_Glob, %eax
	movl	%eax, (%esp)
	call	Proc_1
	cmpb	$64, Ch_2_Glob
	jle	.L22
	movl	$65, %ebx
	movl	$3, %esi
	jmp	.L14
	.p2align 4,,7
	.p2align 3
.L12:
	addl	$1, %ebx
	cmpb	%bl, Ch_2_Glob
	jl	.L31
.L14:
	movsbl	%bl, %eax
	movl	$67, 4(%esp)
	movl	%eax, (%esp)
	call	Func_1
	cmpl	56(%esp), %eax
	jne	.L12
	movl	%edi, 4(%esp)
	addl	$1, %ebx
	movl	$0, (%esp)
	call	Proc_6
	movl	$18254, %eax
	movw	%ax, 121(%esp)
	movl	40(%esp), %eax
	cmpb	%bl, Ch_2_Glob
	movl	$1498564676, 93(%esp)
	movl	$1313821779, 97(%esp)
	movl	$1380982853, 101(%esp)
	movl	%eax, %esi
	movl	$1095911247, 105(%esp)
	movl	$857746509, 109(%esp)
	movl	$541348391, 113(%esp)
	movl	$1230132307, 117(%esp)
	movb	$0, 123(%esp)
	movl	%eax, Int_Glob
	jge	.L14
	.p2align 4,,7
	.p2align 3
.L31:
	leal	(%esi,%esi,2), %esi
.L11:
	movl	52(%esp), %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	cmpb	$65, Ch_1_Glob
	movl	%eax, %edx
	je	.L32
.L15:
	addl	$1, 40(%esp)
	movl	40(%esp), %ebx
	cmpl	%ebx, 28(%esp)
	jge	.L17
	subl	%ecx, %esi
	leal	0(,%esi,8), %ebx
	subl	%esi, %ebx
	subl	%eax, %ebx
.L10:
	movl	%edx, 40(%esp)
	call	dtime
	movl	$.LC7, (%esp)
	fstpl	End_Time
	call	puts
	movl	$10, (%esp)
	call	putchar
	movl	$.LC8, (%esp)
	call	puts
	movl	$10, (%esp)
	call	putchar
	movl	Int_Glob, %eax
	movl	$.LC9, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$5, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Bool_Glob, %eax
	movl	$.LC11, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$1, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movsbl	Ch_1_Glob, %eax
	movl	$.LC12, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$65, 8(%esp)
	movl	$.LC13, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movsbl	Ch_2_Glob, %eax
	movl	$.LC14, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$66, 8(%esp)
	movl	$.LC13, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Arr_1_Glob+32, %eax
	movl	$.LC15, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$7, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Arr_2_Glob+1628, %eax
	movl	$.LC16, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC17, (%esp)
	call	puts
	movl	$.LC18, (%esp)
	call	puts
	movl	Ptr_Glob, %eax
	movl	(%eax), %eax
	movl	$.LC19, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC20, (%esp)
	call	puts
	movl	Ptr_Glob, %eax
	movl	4(%eax), %eax
	movl	$.LC21, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$0, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Ptr_Glob, %eax
	movl	8(%eax), %eax
	movl	$.LC22, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$2, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Ptr_Glob, %eax
	movl	12(%eax), %eax
	movl	$.LC23, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$17, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Ptr_Glob, %eax
	movl	$.LC24, 4(%esp)
	movl	$1, (%esp)
	addl	$16, %eax
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC25, (%esp)
	call	puts
	movl	$.LC26, (%esp)
	call	puts
	movl	Next_Ptr_Glob, %eax
	movl	(%eax), %eax
	movl	$.LC19, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC27, (%esp)
	call	puts
	movl	Next_Ptr_Glob, %eax
	movl	4(%eax), %eax
	movl	$.LC21, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$0, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Next_Ptr_Glob, %eax
	movl	8(%eax), %eax
	movl	$.LC22, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$1, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Next_Ptr_Glob, %eax
	movl	12(%eax), %eax
	movl	$.LC23, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$18, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	Next_Ptr_Glob, %eax
	movl	$.LC24, 4(%esp)
	movl	$1, (%esp)
	addl	$16, %eax
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC25, (%esp)
	call	puts
	movl	40(%esp), %edx
	movl	$.LC28, 4(%esp)
	movl	$1, (%esp)
	movl	%edx, 8(%esp)
	call	__printf_chk
	movl	$5, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 8(%esp)
	movl	$.LC29, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$13, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	52(%esp), %eax
	movl	$.LC30, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$7, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	56(%esp), %eax
	movl	$.LC31, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$1, 8(%esp)
	movl	$.LC10, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	36(%esp), %eax
	movl	$.LC32, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC33, (%esp)
	call	puts
	movl	32(%esp), %eax
	movl	$.LC34, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	movl	$.LC35, (%esp)
	call	puts
	movl	$10, (%esp)
	call	putchar
	fldl	End_Time
	fstl	User_Time
	flds	.LC36
	fucomip	%st(1), %st
	ja	.L33
	fildl	28(%esp)
	fld	%st(1)
	fmuls	.LC39
	movl	$.LC41, (%esp)
	fdiv	%st(1), %st
	fstpl	Microseconds
	fdivp	%st, %st(1)
	fstl	Dhrystones_Per_Second
	fdivs	.LC40
	fstpl	Vax_Mips
	call	puts
	movl	$26, 12(%esp)
	movl	$30, 8(%esp)
	movl	$.LC42, 4(%esp)
	movl	$Reg_Define, (%esp)
	call	__memcpy_chk
	movl	$.LC43, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC44, 4(%esp)
	movl	$1, (%esp)
	fldl	Microseconds
	fstpl	8(%esp)
	call	__printf_chk
	movl	$.LC45, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC46, 4(%esp)
	movl	$1, (%esp)
	fldl	Dhrystones_Per_Second
	fstpl	8(%esp)
	call	__printf_chk
	movl	$.LC47, 4(%esp)
	movl	$1, (%esp)
	fldl	Vax_Mips
	fstpl	8(%esp)
	call	__printf_chk
	movl	$10, (%esp)
	call	putchar
	movl	24(%esp), %edi
	movl	$10, (%esp)
	movl	%edi, 4(%esp)
	call	fputc
	movl	%edi, 12(%esp)
	movl	$47, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC48, (%esp)
	call	fwrite
	movl	$Reg_Define, 12(%esp)
	movl	$.LC49, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	__fprintf_chk
	movl	$.LC50, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	fldl	Microseconds
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	$.LC51, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	fldl	Dhrystones_Per_Second
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	$.LC52, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	fldl	Vax_Mips
	fstpl	12(%esp)
	call	__fprintf_chk
	movl	%edi, (%esp)
	call	fclose
.L20:
	xorl	%eax, %eax
	movl	124(%esp), %edi
	xorl	%gs:20, %edi
	jne	.L34
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
.L32:
	.cfi_restore_state
	leal	9(%eax), %edx
	subl	Int_Glob, %edx
	jmp	.L15
.L22:
	movl	$9, %esi
	jmp	.L11
.L33:
	fstp	%st(0)
	movl	$.LC37, (%esp)
	call	puts
	movl	$.LC38, (%esp)
	call	puts
	movl	$10, (%esp)
	call	putchar
	jmp	.L20
.L30:
	leal	93(%esp), %eax
	movl	%eax, 32(%esp)
	leal	62(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	.L10
.L34:
	call	__stack_chk_fail
.L29:
	movl	$.LC2, (%esp)
	call	puts
	movl	$1, (%esp)
	call	exit
	.cfi_endproc
.LFE61:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB63:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$65, Ch_1_Glob
	movl	(%eax), %edx
	je	.L38
	rep ret
	.p2align 4,,7
	.p2align 3
.L38:
	addl	$9, %edx
	subl	Int_Glob, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE63:
	.size	Proc_2, .-Proc_2
	.p2align 4,,15
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB64:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	Ptr_Glob, %eax
	testl	%eax, %eax
	je	.L41
	movl	(%eax), %edx
	movl	32(%esp), %eax
	movl	%edx, (%eax)
	movl	Ptr_Glob, %eax
.L40:
	addl	$12, %eax
	movl	%eax, 8(%esp)
	movl	Int_Glob, %eax
	movl	$10, (%esp)
	movl	%eax, 4(%esp)
	call	Proc_7
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L41:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L40
	.cfi_endproc
.LFE64:
	.size	Proc_3, .-Proc_3
	.p2align 4,,15
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB65:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	$65, Ch_1_Glob
	movb	$66, Ch_2_Glob
	sete	%al
	orl	%eax, Bool_Glob
	ret
	.cfi_endproc
.LFE65:
	.size	Proc_4, .-Proc_4
	.p2align 4,,15
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
.LFB66:
	.cfi_startproc
	movb	$65, Ch_1_Glob
	movl	$0, Bool_Glob
	ret
	.cfi_endproc
.LFE66:
	.size	Proc_5, .-Proc_5
	.comm	Vax_Mips,8,8
	.comm	Dhrystones_Per_Second,8,8
	.comm	Microseconds,8,8
	.comm	User_Time,8,8
	.comm	End_Time,8,8
	.comm	Begin_Time,8,8
	.globl	Reg_Define
	.data
	.type	Reg_Define, @object
	.size	Reg_Define, 26
Reg_Define:
	.string	"Register option selected."
	.comm	Arr_2_Glob,10000,32
	.comm	Arr_1_Glob,200,32
	.comm	Ch_2_Glob,1,1
	.comm	Ch_1_Glob,1,1
	.comm	Bool_Glob,4,4
	.comm	Int_Glob,4,4
	.comm	Next_Ptr_Glob,4,4
	.comm	Ptr_Glob,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC36:
	.long	1073741824
	.align 4
.LC39:
	.long	1232348160
	.align 4
.LC40:
	.long	1155244032
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
