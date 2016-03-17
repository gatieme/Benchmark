	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"arith.c"
	.global	__aeabi_i2d
	.global	__aeabi_dsub
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.text
	.align	2
	.global	dumb_stuff
	.type	dumb_stuff, %function
dumb_stuff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
	mov	r5, #0
	ldr	r6, .L7
	mov	r4, #2
	mov	r7, #0
	mov	r8, #0
	b	.L3
.L6:
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
.L3:
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L7+4
	mov	sl, r0
	mov	fp, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dadd
	add	r4, r4, #1
	cmp	r4, #102
	mov	r7, r0
	mov	r8, r1
	bne	.L6
	mov	r2, r7
	mov	r3, r8
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	1074790400
	.word	1072693248
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
