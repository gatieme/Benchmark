	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"dhry_2.c"
	.text
	.align	2
	.global	Proc_6
	.type	Proc_6, %function
Proc_6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2
	str	r0, [r1, #0]
	beq	.L3
	mov	r3, #3
	str	r3, [r1, #0]
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L10
.L8:
	.word	.L11
	.word	.L6
	.word	.L3
	.word	.L10
	.word	.L7
.L7:
	mov	r3, #2
	str	r3, [r1, #0]
.L10:
	bx	lr
.L6:
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	cmp	r3, #100
	movle	r3, #3
	strle	r3, [r1, #0]
	bxle	lr
.L11:
	mov	r3, #0
	str	r3, [r1, #0]
	bx	lr
.L3:
	mov	r3, #1
	str	r3, [r1, #0]
	bx	lr
.L14:
	.align	2
.L13:
	.word	Int_Glob
	.size	Proc_6, .-Proc_6
	.align	2
	.global	Proc_7
	.type	Proc_7, %function
Proc_7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #2
	add	r1, r0, r1
	str	r1, [r2, #0]
	bx	lr
	.size	Proc_7, .-Proc_7
	.align	2
	.global	Proc_8
	.type	Proc_8, %function
Proc_8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	ip, r2, #5
	stmfd	sp!, {r4, r5}
	add	r4, ip, ip, asl #2
	add	r4, r4, r4, asl #2
	add	r4, r1, r4, asl #3
	add	r5, r2, #35
	add	r1, r2, #6
	str	r3, [r0, ip, asl #2]
	add	r2, r2, #4
	str	r3, [r0, r1, asl #2]
	str	ip, [r0, r5, asl #2]
	str	ip, [r4, ip, asl #2]
	str	ip, [r4, r1, asl #2]
	ldr	r3, [r4, r2, asl #2]
	add	r3, r3, #1
	str	r3, [r4, r2, asl #2]
	ldr	r3, [r0, ip, asl #2]
	add	r4, r4, #4000
	str	r3, [r4, ip, asl #2]
	ldr	r3, .L19
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5}
	bx	lr
.L20:
	.align	2
.L19:
	.word	Int_Glob
	.size	Proc_8, .-Proc_8
	.align	2
	.global	Func_1
	.type	Func_1, %function
Func_1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	ldreq	r2, .L25
	mov	r3, r0
	streqb	r3, [r2, #0]
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L26:
	.align	2
.L25:
	.word	Ch_1_Glob
	.size	Func_1, .-Func_1
	.align	2
	.global	Func_3
	.type	Func_3, %function
Func_3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2
	movne	r0, #0
	moveq	r0, #1
	bx	lr
	.size	Func_3, .-Func_3
	.align	2
	.global	Func_2
	.type	Func_2, %function
Func_2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	add	ip, r0, #2
	cmp	r3, r2
	add	r2, r1, #3
	beq	.L39
.L30:
	bl	strcmp
	cmp	r0, #0
	ldrgt	r3, .L41
	movgt	r2, #10
	movle	r0, #0
	strgt	r2, [r3, #0]
	movgt	r0, #1
	ldmfd	sp!, {r4, lr}
	bx	lr
.L39:
	ldr	r4, .L41+4
	strb	r3, [r4, #0]
	ldrb	lr, [ip, #0]	@ zero_extendqisi2
	ldrb	r3, [r2, #0]	@ zero_extendqisi2
	cmp	r3, lr
	bne	.L30
.L40:
	strb	r3, [r4, #0]
	ldrb	lr, [ip, #0]	@ zero_extendqisi2
	ldrb	r3, [r2, #0]	@ zero_extendqisi2
	cmp	r3, lr
	bne	.L30
	b	.L40
.L42:
	.align	2
.L41:
	.word	Int_Glob
	.word	Ch_1_Glob
	.size	Func_2, .-Func_2
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
