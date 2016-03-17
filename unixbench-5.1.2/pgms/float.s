	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"arith.c"
	.global	__aeabi_i2f
	.global	__aeabi_fsub
	.global	__aeabi_fdiv
	.global	__aeabi_fadd
	.global	__aeabi_fmul
	.global	__aeabi_f2iz
	.text
	.align	2
	.global	dumb_stuff
	.type	dumb_stuff, %function
dumb_stuff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L7
	mov	r6, #0
	mov	r4, #2
	b	.L3
.L6:
	mov	r0, r4
	bl	__aeabi_i2f
	mov	r1, r0
	bl	__aeabi_fmul
	mov	r5, r0
.L3:
	mov	r0, r4
	bl	__aeabi_i2f
	mov	r1, #1065353216
	mov	r7, r0
	mov	r0, r5
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd
	add	r4, r4, #1
	cmp	r4, #102
	mov	r6, r0
	bne	.L6
	mov	r1, r6
	mov	r0, r7
	bl	__aeabi_fadd
	mov	r1, r5
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	1082130432
	.size	dumb_stuff, .-dumb_stuff
	.align	2
	.global	report
	.type	report, %function
report:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L11
	stmfd	sp!, {r4, lr}
	ldr	r0, [r3, #0]
	ldr	r3, .L11+4
	ldr	r1, .L11+8
	ldr	r2, [r3, #0]
	bl	fprintf
	mov	r0, #0
	bl	exit
.L12:
	.align	2
.L11:
	.word	stderr
	.word	iter
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #2
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L16
	ldr	r1, [r1, #0]
	ldr	r0, .L19
	bl	printf
	mov	r0, #1
	bl	exit
.L16:
	ldr	r0, [r1, #4]
	mov	r2, #10
	mov	r1, #0
	ldr	r4, .L19+4
	bl	strtol
	mov	r5, #0
	ldr	r1, .L19+8
	str	r5, [r4, #0]
	bl	wake_me
	mov	r0, r5
.L17:
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	bl	dumb_stuff
	b	.L17
.L20:
	.align	2
.L19:
	.word	.LC1
	.word	iter
	.word	report
	.size	main, .-main
	.global	SCCSid
	.comm	iter,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 41
SCCSid:
	.ascii	"@(#) @(#)arith.c:3.3 -- 5/15/91 19:30:19\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%ld|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"Usage: %s duration\012\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
