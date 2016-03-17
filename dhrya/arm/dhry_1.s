	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
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
	ldr	r3, .L6
	ldr	r2, [r0, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #65
	bxne	lr
	ldr	r3, .L6+4
	ldr	r3, [r3, #0]
	rsb	r3, r3, #9
	add	r2, r3, r2
	str	r2, [r0, #0]
	bx	lr
.L7:
	.align	2
.L6:
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
	ldr	r3, .L10
	ldr	r1, .L10+4
	ldr	r2, [r3, #0]
	ldrb	r1, [r1, #0]	@ zero_extendqisi2
	cmp	r1, #65
	orreq	r2, r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L10+8
	mov	r2, #66
	strb	r2, [r3, #0]
	bx	lr
.L11:
	.align	2
.L10:
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
	ldr	r3, .L14
	mov	r2, #65
	strb	r2, [r3, #0]
	ldr	r3, .L14+4
	mov	r2, #0
	str	r2, [r3, #0]
	bx	lr
.L15:
	.align	2
.L14:
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
	ldr	r3, .L20
	stmfd	sp!, {r4, lr}
	ldr	r2, [r3, #0]
	cmp	r2, #0
	ldrne	r2, [r2, #0]
	strne	r2, [r0, #0]
	ldrne	r2, [r3, #0]
	ldr	r3, .L20+4
	add	r2, r2, #12
	ldr	r1, [r3, #0]
	mov	r0, #10
	bl	Proc_7
	ldmfd	sp!, {r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	ldr	r6, .L28
	ldr	r4, [r0, #0]
	ldr	r7, [r6, #0]
	mov	ip, r4
	mov	lr, r7
	mov	r5, r0
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [r5, #0]
	mov	r2, r7
	str	r3, [r4, #0]
	mov	r3, #5
	str	r3, [r5, #12]
	ldr	r1, [r2], #12
	str	r3, [r4, #12]
	ldr	r3, .L28+4
	str	r1, [r4, #0]
	mov	r0, #10
	ldr	r1, [r3, #0]
	bl	Proc_7
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L27
	ldr	r4, [r5, #0]
	mov	ip, r5
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L26:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L27:
	mov	r3, #6
	str	r3, [r4, #12]
	add	r1, r4, #8
	ldr	r0, [r5, #8]
	bl	Proc_6
	ldr	r3, [r6, #0]
	mov	r2, r4
	ldr	r3, [r3, #0]
	ldr	r0, [r2, #12]!
	str	r3, [r4, #0]
	mov	r1, #10
	bl	Proc_7
	b	.L26
.L29:
	.align	2
.L28:
	.word	Ptr_Glob
	.word	Int_Glob
	.size	Proc_1, .-Proc_1
	.global	__aeabi_idiv
	.global	__aeabi_dcmplt
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r0, .L58
	sub	sp, sp, #116
	ldr	r1, .L58+4
	bl	fopen
	cmp	r0, #0
	str	r0, [sp, #20]
	beq	.L53
	mov	r0, #48
	bl	malloc
	ldr	r3, .L58+8
	add	r2, sp, #68
	str	r0, [r3, #0]
	mov	r0, #48
	str	r2, [sp, #4]
	bl	malloc
	ldr	r7, .L58+12
	add	ip, r0, #16
	mov	lr, ip
	mov	r5, r0
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r7, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2}
	strh	r3, [lr], #2	@ movhi
	ldr	ip, [sp, #4]
	ldr	r7, .L58+16
	mov	r8, r3, lsr #16
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	sl, .L58+8
	ldmia	r7, {r0, r1, r2, r3}
	ldr	r7, [sl, #0]
	strb	r8, [lr, #0]
	mov	lr, #0
	str	lr, [r5, #4]
	mov	lr, #2
	str	r7, [r5, #0]
	str	lr, [r5, #8]
	mov	lr, #40
	str	lr, [r5, #12]
	stmia	ip!, {r0, r1, r2}
	ldr	sl, .L58+20
	strh	r3, [ip], #2	@ movhi
	mov	r3, r3, lsr #16
	strb	r3, [ip, #0]
	ldr	ip, .L58+24
	str	r5, [sl, #0]
	mov	r5, #10
	str	r5, [ip, #1628]
	mov	r0, r5
	bl	putchar
	ldr	r0, .L58+28
	bl	puts
	mov	r0, r5
	bl	putchar
	ldr	r0, .L58+32
	bl	printf
	add	r1, sp, #100
	ldr	r0, .L58+36
	bl	scanf
	ldr	r2, [sp, #100]
	mov	r0, r5
	str	r2, [sp, #16]
	bl	putchar
	ldr	r1, [sp, #16]
	ldr	r0, .L58+40
	bl	printf
	bl	dtime
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldr	r3, .L58+44
	stmia	r3, {r0-r1}
	ble	.L54
	ldr	r2, .L58+48
	ldr	ip, .L58+52
	ldr	r3, .L58+56
	ldr	r5, .L58+60
	ldr	r9, .L58+64
	mov	r7, #1
	str	ip, [sp, #12]
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	add	r8, sp, #36
	mov	fp, r2
.L42:
	ldr	r3, [sp, #12]
	mov	ip, #65
	strb	ip, [r3, #0]
	mov	r3, #66
	mov	ip, #1
	mov	r2, #31
	strb	r3, [r5, #0]
	ldr	r1, .L58+68
	str	ip, [fp, #0]
	mov	r0, r8
	bl	memcpy
	mov	ip, #1
	mov	r1, r8
	add	r0, sp, #68
	str	ip, [sp, #104]
	bl	Func_2
	rsbs	r3, r0, #1
	movcc	r3, #0
	mov	r1, #3
	add	r2, sp, #108
	str	r3, [fp, #0]
	mov	r0, #2
	mov	r3, #7
	str	r3, [sp, #108]
	bl	Proc_7
	ldr	r1, .L58+24
	mov	r2, #3
	ldr	r3, [sp, #108]
	ldr	r0, .L58+56
	bl	Proc_8
	ldr	r4, [sl, #0]
	ldr	r6, [r4, #0]
	mov	lr, r4
	mov	ip, r6
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	ip, #5
	str	ip, [r4, #12]
	str	ip, [r6, #12]
	ldr	r2, [sl, #0]
	ldr	r3, [r4, #0]
	cmp	r2, #0
	str	r3, [r6, #0]
	ldrne	r3, [r2, #0]
	mov	r0, #10
	strne	r3, [r6, #0]
	add	r2, r2, #12
	ldr	r1, [r9, #0]
	bl	Proc_7
	ldr	r3, [r6, #4]
	cmp	r3, #0
	beq	.L55
	ldr	lr, [r4, #0]
	mov	ip, r4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L38:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	cmp	r3, #64
	movls	r6, #9
	bls	.L37
	mov	r4, #65
	mov	r6, #3
	b	.L40
.L39:
	add	r4, r4, #1
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	and	r4, r4, #255
	cmp	r3, r4
	bcc	.L56
.L40:
	mov	r0, r4
	mov	r1, #67
	bl	Func_1
	ldr	r3, [sp, #104]
	cmp	r0, r3
	bne	.L39
	add	r1, sp, #104
	mov	r0, #0
	bl	Proc_6
	ldr	lr, .L58+72
	mov	ip, r8
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	add	r4, r4, #1
	mov	r2, r3, lsr #16
	strh	r3, [ip], #2	@ movhi
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	and	r4, r4, #255
	cmp	r3, r4
	strb	r2, [ip, #0]
	str	r7, [r9, #0]
	mov	r6, r7
	bcs	.L40
.L56:
	add	r6, r6, r6, asl #1
.L37:
	ldr	r4, [sp, #108]
	mov	r0, r6
	mov	r1, r4
	bl	__aeabi_idiv
	ldr	r2, [sp, #12]
	rsb	r6, r4, r6
	ldrb	r3, [r2, #0]	@ zero_extendqisi2
	rsb	r6, r6, r6, asl #3
	cmp	r3, #65
	ldreq	r3, [r9, #0]
	rsb	r6, r0, r6
	rsbeq	r3, r3, #9
	addeq	r0, r0, r3
	ldr	r3, [sp, #16]
	add	r7, r7, #1
	cmp	r3, r7
	bge	.L42
	mov	r4, r0
.L32:
	bl	dtime
	ldr	r7, .L58+76
	stmia	r7, {r0-r1}
	ldr	r0, .L58+80
	bl	puts
	mov	r0, #10
	bl	putchar
	ldr	r0, .L58+84
	bl	puts
	mov	r0, #10
	bl	putchar
	ldr	r1, [r9, #0]
	ldr	r0, .L58+88
	bl	printf
	mov	r1, #5
	ldr	r0, .L58+92
	bl	printf
	ldr	ip, [sp, #24]
	ldr	r0, .L58+96
	ldr	r1, [ip, #0]
	bl	printf
	mov	r1, #1
	ldr	r0, .L58+92
	bl	printf
	ldr	r2, [sp, #12]
	ldr	r0, .L58+100
	ldrb	r1, [r2, #0]	@ zero_extendqisi2
	bl	printf
	mov	r1, #65
	ldr	r0, .L58+104
	bl	printf
	ldrb	r1, [r5, #0]	@ zero_extendqisi2
	ldr	r0, .L58+108
	bl	printf
	mov	r1, #66
	ldr	r0, .L58+104
	bl	printf
	ldr	r3, [sp, #28]
	ldr	r0, .L58+112
	ldr	r1, [r3, #32]
	bl	printf
	mov	r1, #7
	ldr	r0, .L58+92
	bl	printf
	ldr	ip, .L58+24
	ldr	r0, .L58+116
	ldr	r1, [ip, #1628]
	bl	printf
	ldr	r0, .L58+120
	bl	puts
	ldr	r0, .L58+124
	bl	puts
	ldr	r3, [sl, #0]
	ldr	r0, .L58+128
	ldr	r1, [r3, #0]
	bl	printf
	ldr	r0, .L58+132
	bl	puts
	ldr	r3, [sl, #0]
	ldr	r0, .L58+136
	ldr	r1, [r3, #4]
	bl	printf
	mov	r1, #0
	ldr	r0, .L58+92
	bl	printf
	ldr	r3, [sl, #0]
	ldr	r0, .L58+140
	ldr	r1, [r3, #8]
	bl	printf
	mov	r1, #2
	ldr	r0, .L58+92
	bl	printf
	ldr	r3, [sl, #0]
	ldr	r0, .L58+144
	ldr	r1, [r3, #12]
	bl	printf
	mov	r1, #17
	ldr	r0, .L58+92
	bl	printf
	ldr	r1, [sl, #0]
	ldr	r0, .L58+148
	add	r1, r1, #16
	bl	printf
	ldr	r0, .L58+152
	bl	puts
	ldr	r0, .L58+156
	bl	puts
	ldr	r2, .L58+8
	ldr	sl, .L58+8
	ldr	r3, [r2, #0]
	ldr	r0, .L58+128
	ldr	r1, [r3, #0]
	bl	printf
	ldr	r0, .L58+160
	bl	puts
	ldr	r3, [sl, #0]
	ldr	r0, .L58+136
	ldr	r1, [r3, #4]
	bl	printf
	mov	r1, #0
	ldr	r0, .L58+92
	bl	printf
	ldr	r3, [sl, #0]
	ldr	r0, .L58+140
	ldr	r1, [r3, #8]
	bl	printf
	mov	r1, #1
	ldr	r0, .L58+92
	bl	printf
	ldr	r3, [sl, #0]
	ldr	r0, .L58+144
	ldr	r1, [r3, #12]
	bl	printf
	mov	r1, #18
	ldr	r0, .L58+92
	bl	printf
	ldr	r1, [sl, #0]
	ldr	r0, .L58+148
	add	r1, r1, #16
	bl	printf
	ldr	r0, .L58+152
	bl	puts
	mov	r1, r4
	ldr	r0, .L58+164
	bl	printf
	mov	r1, #5
	ldr	r0, .L58+92
	bl	printf
	mov	r1, r6
	ldr	r0, .L58+168
	bl	printf
	mov	r1, #13
	ldr	r0, .L58+92
	bl	printf
	ldr	r1, [sp, #108]
	ldr	r0, .L58+172
	bl	printf
	mov	r1, #7
	ldr	r0, .L58+92
	bl	printf
	ldr	r1, [sp, #104]
	ldr	r0, .L58+176
	bl	printf
	mov	r1, #1
	ldr	r0, .L58+92
	bl	printf
	add	r1, sp, #68
	ldr	r0, .L58+180
	bl	printf
	ldr	r0, .L58+184
	bl	puts
	mov	r1, r8
	ldr	r0, .L58+188
	bl	printf
	ldr	r0, .L58+192
	bl	puts
	mov	r0, #10
	bl	putchar
	ldmia	r7, {r4-r5}
	ldr	ip, .L58+196
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #1073741824
	stmia	ip, {r4-r5}
	bl	__aeabi_dcmplt
	cmp	r0, #0
	bne	.L57
	ldr	r0, [sp, #16]
	bl	__aeabi_i2d
	mov	r2, #0
	mov	r7, r0
	mov	r8, r1
	ldr	r3, .L58+200
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_ddiv
	ldr	r6, .L58+204
	mov	r2, r4
	mov	r3, r5
	stmia	r6, {r0-r1}
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_ddiv
	ldr	r7, .L58+208
	mov	r2, #0
	ldr	r3, .L58+212
	stmia	r7, {r0-r1}
	bl	__aeabi_ddiv
	ldr	r5, .L58+216
	ldr	r4, .L58+220
	stmia	r5, {r0-r1}
	ldr	r0, .L58+224
	bl	puts
	ldr	lr, .L58+228
	mov	ip, r4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r0, .L58+232
	strh	r3, [ip, #0]	@ movhi
	bl	printf
	ldmia	r6, {r2-r3}
	ldr	r0, .L58+236
	bl	printf
	ldr	r0, .L58+240
	bl	printf
	ldmia	r7, {r2-r3}
	ldr	r0, .L58+244
	bl	printf
	ldmia	r5, {r2-r3}
	ldr	r0, .L58+248
	bl	printf
	mov	r0, #10
	bl	putchar
	ldr	r1, [sp, #20]
	mov	r0, #10
	bl	fputc
	ldr	r3, [sp, #20]
	mov	r1, #1
	mov	r2, #47
	ldr	r0, .L58+252
	bl	fwrite
	mov	r2, r4
	ldr	r1, .L58+256
	ldr	r0, [sp, #20]
	bl	fprintf
	ldmia	r6, {r2-r3}
	ldr	r1, .L58+260
	ldr	r0, [sp, #20]
	bl	fprintf
	ldmia	r7, {r2-r3}
	ldr	r1, .L58+264
	ldr	r0, [sp, #20]
	bl	fprintf
	ldmia	r5, {r2-r3}
	ldr	r0, [sp, #20]
	ldr	r1, .L58+268
	bl	fprintf
	ldr	r0, [sp, #20]
	bl	fclose
.L45:
	mov	r0, #0
	add	sp, sp, #116
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L55:
	mov	r3, #6
	str	r3, [r6, #12]
	add	r1, r6, #8
	ldr	r0, [r4, #8]
	bl	Proc_6
	ldr	r3, [sl, #0]
	mov	r2, r6
	ldr	r3, [r3, #0]
	ldr	r0, [r2, #12]!
	str	r3, [r6, #0]
	mov	r1, #10
	bl	Proc_7
	b	.L38
.L57:
	ldr	r0, .L58+272
	bl	puts
	ldr	r0, .L58+276
	bl	puts
	mov	r0, #10
	bl	putchar
	b	.L45
.L54:
	ldr	ip, .L58+52
	ldr	r2, .L58+48
	ldr	r3, .L58+56
	str	ip, [sp, #12]
	str	r2, [sp, #24]
	ldr	r5, .L58+60
	add	r8, sp, #36
	str	r3, [sp, #28]
	ldr	r9, .L58+64
	b	.L32
.L53:
	ldr	r0, .L58+280
	bl	puts
	mov	r0, #1
	bl	exit
.L59:
	.align	2
.L58:
	.word	.LC0
	.word	.LC1
	.word	Next_Ptr_Glob
	.word	.LC3
	.word	.LC4
	.word	Ptr_Glob
	.word	Arr_2_Glob
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	Begin_Time
	.word	Bool_Glob
	.word	Ch_1_Glob
	.word	Arr_1_Glob
	.word	Ch_2_Glob
	.word	Int_Glob
	.word	.LC9
	.word	.LC10
	.word	End_Time
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	User_Time
	.word	1093567616
	.word	Microseconds
	.word	Dhrystones_Per_Second
	.word	1083929600
	.word	Vax_Mips
	.word	.LANCHOR0
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC40
	.word	.LC41
	.word	.LC2
	.size	main, .-main
	.global	Reg_Define
	.comm	Ptr_Glob,4,4
	.comm	Next_Ptr_Glob,4,4
	.comm	Int_Glob,4,4
	.comm	Bool_Glob,4,4
	.comm	Ch_1_Glob,1,1
	.comm	Ch_2_Glob,1,1
	.comm	Arr_1_Glob,200,4
	.comm	Arr_2_Glob,10000,4
	.comm	Begin_Time,8,8
	.comm	End_Time,8,8
	.comm	User_Time,8,8
	.comm	Microseconds,8,8
	.comm	Dhrystones_Per_Second,8,8
	.comm	Vax_Mips,8,8
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	Reg_Define, %object
	.size	Reg_Define, 26
Reg_Define:
	.ascii	"Register option selected.\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"result\000"
	.space	1
.LC1:
	.ascii	"a+\000"
	.space	1
.LC2:
	.ascii	"Can not open dhry.res\012\000"
	.space	1
.LC3:
	.ascii	"DHRYSTONE PROGRAM, SOME STRING\000"
	.space	1
.LC4:
	.ascii	"DHRYSTONE PROGRAM, 1'ST STRING\000"
	.space	1
.LC5:
	.ascii	"Dhrystone Benchmark, Version 2.1 (Language: C)\000"
	.space	1
.LC6:
	.ascii	"Please give the number of runs through the benchmar"
	.ascii	"k: \000"
	.space	1
.LC7:
	.ascii	"%d\000"
	.space	1
.LC8:
	.ascii	"Execution starts, %d runs through Dhrystone\012\000"
	.space	3
.LC9:
	.ascii	"DHRYSTONE PROGRAM, 2'ND STRING\000"
	.space	1
.LC10:
	.ascii	"DHRYSTONE PROGRAM, 3'RD STRING\000"
	.space	1
.LC11:
	.ascii	"Execution ends\000"
	.space	1
.LC12:
	.ascii	"Final values of the variables used in the benchmark"
	.ascii	":\000"
	.space	3
.LC13:
	.ascii	"Int_Glob:            %d\012\000"
	.space	3
.LC14:
	.ascii	"        should be:   %d\012\000"
	.space	3
.LC15:
	.ascii	"Bool_Glob:           %d\012\000"
	.space	3
.LC16:
	.ascii	"Ch_1_Glob:           %c\012\000"
	.space	3
.LC17:
	.ascii	"        should be:   %c\012\000"
	.space	3
.LC18:
	.ascii	"Ch_2_Glob:           %c\012\000"
	.space	3
.LC19:
	.ascii	"Arr_1_Glob[8]:       %d\012\000"
	.space	3
.LC20:
	.ascii	"Arr_2_Glob[8][7]:    %d\012\000"
	.space	3
.LC21:
	.ascii	"        should be:   Number_Of_Runs + 10\000"
	.space	3
.LC22:
	.ascii	"Ptr_Glob->\000"
	.space	1
.LC23:
	.ascii	"  Ptr_Comp:          %d\012\000"
	.space	3
.LC24:
	.ascii	"        should be:   (implementation-dependent)\000"
.LC25:
	.ascii	"  Discr:             %d\012\000"
	.space	3
.LC26:
	.ascii	"  Enum_Comp:         %d\012\000"
	.space	3
.LC27:
	.ascii	"  Int_Comp:          %d\012\000"
	.space	3
.LC28:
	.ascii	"  Str_Comp:          %s\012\000"
	.space	3
.LC29:
	.ascii	"        should be:   DHRYSTONE PROGRAM, SOME STRING"
	.ascii	"\000"
.LC30:
	.ascii	"Next_Ptr_Glob->\000"
.LC31:
	.ascii	"        should be:   (implementation-dependent), sa"
	.ascii	"me as above\000"
	.space	1
.LC32:
	.ascii	"Int_1_Loc:           %d\012\000"
	.space	3
.LC33:
	.ascii	"Int_2_Loc:           %d\012\000"
	.space	3
.LC34:
	.ascii	"Int_3_Loc:           %d\012\000"
	.space	3
.LC35:
	.ascii	"Enum_Loc:            %d\012\000"
	.space	3
.LC36:
	.ascii	"Str_1_Loc:           %s\012\000"
	.space	3
.LC37:
	.ascii	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
	.ascii	"\000"
.LC38:
	.ascii	"Str_2_Loc:           %s\012\000"
	.space	3
.LC39:
	.ascii	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
	.ascii	"\000"
.LC40:
	.ascii	"Measured time too small to obtain meaningful result"
	.ascii	"s\000"
	.space	3
.LC41:
	.ascii	"Please increase number of runs\000"
	.space	1
.LC42:
	.ascii	"Register option selected?  NO\000"
	.space	2
.LC43:
	.ascii	"Register option not selected.\000"
	.space	2
.LC44:
	.ascii	"Microseconds for one run through Dhrystone: \000"
	.space	3
.LC45:
	.ascii	"%7.1lf \012\000"
	.space	3
.LC46:
	.ascii	"Dhrystones per Second:                      \000"
	.space	3
.LC47:
	.ascii	"%10.1lf \012\000"
	.space	2
.LC48:
	.ascii	"VAX MIPS rating = %10.3lf \012\000"
.LC49:
	.ascii	"Dhrystone Benchmark, Version 2.1 (Language: C)\012\000"
.LC50:
	.ascii	"%s\012\000"
.LC51:
	.ascii	"Microseconds for one loop: %7.1lf\012\000"
	.space	1
.LC52:
	.ascii	"Dhrystones per second: %10.1lf\012\000"
.LC53:
	.ascii	"VAX MIPS rating: %10.3lf\012\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
