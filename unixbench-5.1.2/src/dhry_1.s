	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"dhry_1.c"
	.text
	.align	2
	.global	Proc_2
	.type	Proc_2, %function
Proc_2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L4
	ldr	r2, [r0, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #65
	ldreq	r3, .L4+4
	ldreq	r3, [r3, #0]
	rsbeq	r3, r3, #9
	addeq	r2, r3, r2
	streq	r2, [r0, #0]
	bx	lr
.L5:
	.align	2
.L4:
	.word	Ch_1_Glob
	.word	Int_Glob
	.size	Proc_2, .-Proc_2
	.align	2
	.global	Proc_4
	.type	Proc_4, %function
Proc_4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldr	r1, .L8+4
	ldr	r2, [r3, #0]
	ldrb	r1, [r1, #0]	@ zero_extendqisi2
	cmp	r1, #65
	orreq	r2, r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L8+8
	mov	r2, #66
	strb	r2, [r3, #0]
	bx	lr
.L9:
	.align	2
.L8:
	.word	Bool_Glob
	.word	Ch_1_Glob
	.word	Ch_2_Glob
	.size	Proc_4, .-Proc_4
	.align	2
	.global	Proc_5
	.type	Proc_5, %function
Proc_5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	mov	r2, #65
	strb	r2, [r3, #0]
	ldr	r3, .L12+4
	mov	r2, #0
	str	r2, [r3, #0]
	bx	lr
.L13:
	.align	2
.L12:
	.word	Ch_1_Glob
	.word	Bool_Glob
	.size	Proc_5, .-Proc_5
	.align	2
	.global	Proc_3
	.type	Proc_3, %function
Proc_3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L18
	stmfd	sp!, {r4, lr}
	ldr	r2, [r3, #0]
	cmp	r2, #0
	ldrne	r2, [r2, #0]
	strne	r2, [r0, #0]
	ldrne	r2, [r3, #0]
	ldr	r3, .L18+4
	add	r2, r2, #12
	ldr	r1, [r3, #0]
	mov	r0, #10
	bl	Proc_7
	ldmfd	sp!, {r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	Ptr_Glob
	.word	Int_Glob
	.size	Proc_3, .-Proc_3
	.align	2
	.global	Proc_1
	.type	Proc_1, %function
Proc_1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, .L26
	ldr	r4, [r0, #0]
	ldr	lr, [r6, #0]
	mov	ip, r4
	mov	r5, r0
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [r5, #0]
	mov	r7, #5
	str	r7, [r5, #12]
	str	r3, [r4, #0]
	str	r7, [r4, #12]
	mov	r0, r4
	bl	Proc_3
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L25
	ldr	r4, [r5, #0]
	mov	ip, r5
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L23:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L25:
	mov	r3, #6
	str	r3, [r4, #12]
	ldr	r0, [r5, #8]
	add	r1, r4, #8
	bl	Proc_6
	ldr	r3, [r6, #0]
	mov	r2, r4
	ldr	r3, [r3, #0]
	ldr	r0, [r2, #12]!
	str	r3, [r4, #0]
	mov	r1, #10
	bl	Proc_7
	b	.L23
.L27:
	.align	2
.L26:
	.word	Ptr_Glob
	.size	Proc_1, .-Proc_1
	.align	2
	.global	report
	.type	report, %function
report:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L30
	stmfd	sp!, {r4, lr}
	ldr	r0, [r3, #0]
	ldr	r3, .L30+4
	ldr	r1, .L30+8
	ldr	r2, [r3, #0]
	bl	fprintf
	mov	r0, #0
	bl	exit
.L31:
	.align	2
.L30:
	.word	stderr
	.word	Run_Index
	.word	.LC0
	.size	report, .-report
	.align	2
	.global	wake_me
	.type	wake_me, %function
wake_me:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #14
	bl	__sysv_signal
	mov	r0, r4
	bl	alarm
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	wake_me, .-wake_me
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	sl, r0
	sub	sp, sp, #84
	mov	r0, #48
	mov	r6, r1
	bl	malloc
	ldr	r4, .L42
	add	r3, sp, #40
	str	r0, [r4, #0]
	mov	r0, #48
	str	r3, [sp, #4]
	bl	malloc
	ldr	r7, .L42+4
	add	ip, r0, #16
	mov	lr, ip
	mov	r5, r0
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r7, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2}
	strh	r3, [lr], #2	@ movhi
	ldr	ip, [sp, #4]
	ldr	r8, .L42+8
	mov	r7, r3, lsr #16
	ldmia	r8!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r8, {r0, r1, r2, r3}
	ldr	r8, [r4, #0]
	strb	r7, [lr, #0]
	mov	lr, #2
	str	lr, [r5, #8]
	mov	r4, #0
	add	lr, lr, #38
	str	r8, [r5, #0]
	str	lr, [r5, #12]
	str	r4, [r5, #4]
	stmia	ip!, {r0, r1, r2}
	strh	r3, [ip], #2	@ movhi
	mov	r3, r3, lsr #16
	ldr	lr, .L42+12
	strb	r3, [ip, #0]
	ldr	r3, .L42+16
	mov	r2, #10
	cmp	sl, #2
	str	r5, [lr, #0]
	str	r2, [r3, #1628]
	beq	.L35
	ldr	r3, .L42+20
	ldr	r2, [r6, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L42+24
	bl	fprintf
	mov	r0, #1
	bl	exit
.L35:
	ldr	r7, .L42+28
	ldr	r0, [r6, #4]
	mov	r1, r4
	bl	strtol
	mov	sl, #1
	ldr	r1, .L42+32
	str	r4, [r7, #0]
	ldr	r8, .L42+36
	ldr	r5, .L42+40
	ldr	r9, .L42+44
	ldr	fp, .L42+48
	bl	wake_me
	add	r6, sp, #8
	str	sl, [r7, #0]
.L39:
	ldr	ip, .L42+52
	mov	lr, #66
	mov	r3, #65
	strb	r3, [ip, #0]
	strb	lr, [r5, #0]
	mov	r2, #31
	ldr	r1, .L42+56
	mov	r0, r6
	str	sl, [r8, #0]
	bl	memcpy
	mov	r1, r6
	add	r0, sp, #40
	str	sl, [sp, #72]
	bl	Func_2
	rsbs	r3, r0, #1
	movcc	r3, #0
	mov	r1, #3
	mov	r0, #2
	add	r2, sp, #76
	str	r3, [r8, #0]
	mov	r3, #7
	str	r3, [sp, #76]
	bl	Proc_7
	ldr	r3, [sp, #76]
	ldr	r0, .L42+60
	ldr	r1, .L42+16
	mov	r2, #3
	bl	Proc_8
	ldr	ip, .L42+12
	ldr	r0, [ip, #0]
	bl	Proc_1
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L36
	mov	r4, #65
	b	.L38
.L37:
	add	r4, r4, #1
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	and	r4, r4, #255
	cmp	r3, r4
	bcc	.L36
.L38:
	mov	r0, r4
	mov	r1, #67
	bl	Func_1
	ldr	r3, [sp, #72]
	cmp	r0, r3
	bne	.L37
	mov	r0, #0
	add	r1, sp, #72
	bl	Proc_6
	mov	lr, r9
	mov	ip, r6
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	strh	r3, [ip], #2	@ movhi
	mov	r3, r3, lsr #16
	strb	r3, [ip, #0]
	add	r4, r4, #1
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	ldr	r2, [r7, #0]
	and	r4, r4, #255
	cmp	r3, r4
	str	r2, [fp, #0]
	bcs	.L38
.L36:
	ldr	r3, [r7, #0]
	add	r3, r3, #1
	str	r3, [r7, #0]
	b	.L39
.L43:
	.align	2
.L42:
	.word	Next_Ptr_Glob
	.word	.LC1
	.word	.LC2
	.word	Ptr_Glob
	.word	Arr_2_Glob
	.word	stderr
	.word	.LC3
	.word	Run_Index
	.word	report
	.word	Bool_Glob
	.word	Ch_2_Glob
	.word	.LC5
	.word	Int_Glob
	.word	Ch_1_Glob
	.word	.LC4
	.word	Arr_1_Glob
	.size	main, .-main
	.global	SCCSid
	.global	Reg
	.comm	Run_Index,4,4
	.comm	Ptr_Glob,4,4
	.comm	Next_Ptr_Glob,4,4
	.comm	Int_Glob,4,4
	.comm	Bool_Glob,4,4
	.comm	Ch_1_Glob,1,1
	.comm	Ch_2_Glob,1,1
	.comm	Arr_1_Glob,200,4
	.comm	Arr_2_Glob,10000,4
	.comm	Begin_Time,4,4
	.comm	End_Time,4,4
	.comm	User_Time,4,4
	.comm	Microseconds,4,4
	.comm	Dhrystones_Per_Second,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 42
SCCSid:
	.ascii	"@(#) @(#)dhry_1.c:3.4 -- 5/15/91 19:30:21\000"
	.space	2
	.type	Reg, %object
	.size	Reg, 4
Reg:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%ld|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"DHRYSTONE PROGRAM, SOME STRING\000"
	.space	1
.LC2:
	.ascii	"DHRYSTONE PROGRAM, 1'ST STRING\000"
	.space	1
.LC3:
	.ascii	"Usage: %s duration\012\000"
.LC4:
	.ascii	"DHRYSTONE PROGRAM, 2'ND STRING\000"
	.space	1
.LC5:
	.ascii	"DHRYSTONE PROGRAM, 3'RD STRING\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
