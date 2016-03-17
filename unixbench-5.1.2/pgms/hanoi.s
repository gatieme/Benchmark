	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"hanoi.c"
	.text
	.align	2
	.global	mov
	.type	mov, %function
mov:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r4, r1
	mov	r7, r2
	rsbne	r8, r2, #6
	beq	.L4
.L3:
	sub	r5, r5, #1
	rsb	r6, r4, r8
	mov	r1, r4
	mov	r0, r5
	mov	r2, r6
	bl	mov
	mov	r1, r4
	mov	r0, #1
	mov	r2, r7
	bl	mov
	cmp	r5, #1
	mov	r4, r6
	bne	.L3
.L4:
	ldr	r3, .L8
	ldr	r2, [r3, r4, asl #2]
	sub	r2, r2, #1
	str	r2, [r3, r4, asl #2]
	ldr	r2, [r3, r7, asl #2]
	add	r2, r2, #1
	str	r2, [r3, r7, asl #2]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	num
	.size	mov, .-mov
	.align	2
	.global	report
	.type	report, %function
report:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	stmfd	sp!, {r4, lr}
	ldr	r0, [r3, #0]
	ldr	r3, .L12+4
	ldr	r1, .L12+8
	ldr	r2, [r3, #0]
	bl	fprintf
	mov	r0, #0
	bl	exit
.L13:
	.align	2
.L12:
	.word	stderr
	.word	.LANCHOR0
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
	cmp	r0, #1
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r1
	ble	.L22
	ldr	r0, [r1, #4]
	mov	r2, #10
	mov	r1, #0
	bl	strtol
	cmp	r5, #2
	mov	r6, r0
	addeq	r5, r5, #8
	bne	.L23
.L19:
	ldr	r3, .L24
	mov	r0, r6
	ldr	r1, .L24+4
	str	r5, [r3, #4]
	bl	wake_me
	ldr	r4, .L24+8
.L20:
	mov	r0, r5
	mov	r1, #1
	mov	r2, #3
	bl	mov
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	b	.L20
.L22:
	ldr	r3, .L24+12
	ldr	r2, [r1, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L24+16
	bl	fprintf
	mov	r0, #1
	bl	exit
.L23:
	ldr	r0, [r4, #8]
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	mov	r5, r0
	b	.L19
.L25:
	.align	2
.L24:
	.word	num
	.word	report
	.word	.LANCHOR0
	.word	stderr
	.word	.LC1
	.size	main, .-main
	.global	SCCSid
	.global	iter
	.comm	num,16,4
	.comm	cnt,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 41
SCCSid:
	.ascii	"@(#) @(#)hanoi.c:3.3 -- 5/15/91 19:30:20\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%ld|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"Usage: %s duration [disks]\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	iter, %object
	.size	iter, 4
iter:
	.space	4
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
