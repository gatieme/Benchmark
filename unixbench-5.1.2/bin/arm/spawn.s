	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"spawn.c"
	.text
	.align	2
	.global	report
	.type	report, %function
report:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L3
	stmfd	sp!, {r4, lr}
	ldr	r0, [r3, #0]
	ldr	r3, .L3+4
	ldr	r1, .L3+8
	ldr	r2, [r3, #0]
	bl	fprintf
	mov	r0, #0
	bl	exit
.L4:
	.align	2
.L3:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	cmp	r0, #2
	sub	sp, sp, #12
	beq	.L8
	ldr	r3, .L18
	ldr	r2, [r1, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L18+4
	bl	fprintf
	mov	r0, #1
	bl	exit
.L8:
	ldr	r0, [r1, #4]
	mov	r2, #10
	mov	r1, #0
	ldr	r4, .L18+8
	bl	strtol
	mov	r3, #0
	ldr	r1, .L18+12
	str	r3, [r4, #0]
	add	r5, sp, #4
	bl	wake_me
	b	.L12
.L9:
	blt	.L16
	mov	r0, r5
	bl	wait
	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	.L17
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
.L12:
	bl	fork
	cmp	r0, #0
	bne	.L9
	bl	exit
.L16:
	ldr	r3, .L18
	ldr	r2, [r4, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L18+16
	bl	fprintf
	ldr	r0, .L18+20
	bl	perror
	mov	r0, #2
	bl	exit
.L17:
	ldr	r3, .L18
	ldr	r1, .L18+24
	ldr	r0, [r3, #0]
	bl	fprintf
	mov	r0, #2
	bl	exit
.L19:
	.align	2
.L18:
	.word	stderr
	.word	.LC1
	.word	iter
	.word	report
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.global	SCCSid
	.comm	iter,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 41
SCCSid:
	.ascii	"@(#) @(#)spawn.c:3.3 -- 5/15/91 19:30:20\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%lu|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"Usage: %s duration \012\000"
	.space	3
.LC2:
	.ascii	"Fork failed at iteration %lu\012\000"
	.space	2
.LC3:
	.ascii	"Reason\000"
	.space	1
.LC4:
	.ascii	"Bad wait status: 0x%x\012\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
