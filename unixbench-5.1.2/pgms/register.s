	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"arith.c"
	.global	__aeabi_idiv
	.text
	.align	2
	.global	dumb_stuff
	.type	dumb_stuff, %function
dumb_stuff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #2
	mov	r5, #0
.L2:
	mul	r0, r4, r4
	sub	r1, r0, #1
	bl	__aeabi_idiv
	add	r4, r4, #1
	cmp	r4, #102
	add	r5, r5, r0
	bne	.L2
	add	r0, r5, #10240
	add	r0, r0, #62
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	dumb_stuff, .-dumb_stuff
	.align	2
	.global	report
	.type	report, %function
report:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	stmfd	sp!, {r4, lr}
	ldr	r0, [r3, #0]
	ldr	r3, .L8+4
	ldr	r1, .L8+8
	ldr	r2, [r3, #0]
	bl	fprintf
	mov	r0, #0
	bl	exit
.L9:
	.align	2
.L8:
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
	beq	.L13
	ldr	r1, [r1, #0]
	ldr	r0, .L16
	bl	printf
	mov	r0, #1
	bl	exit
.L13:
	ldr	r0, [r1, #4]
	mov	r2, #10
	mov	r1, #0
	ldr	r4, .L16+4
	bl	strtol
	mov	r5, #0
	ldr	r1, .L16+8
	str	r5, [r4, #0]
	bl	wake_me
	mov	r0, r5
.L14:
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	bl	dumb_stuff
	b	.L14
.L17:
	.align	2
.L16:
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
