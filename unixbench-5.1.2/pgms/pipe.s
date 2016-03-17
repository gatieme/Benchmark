	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"pipe.c"
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
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	cmp	r0, #2
	sub	sp, sp, #520
	beq	.L8
	ldr	r3, .L15
	ldr	r2, [r1, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L15+4
	bl	fprintf
	mov	r0, #1
	bl	exit
.L8:
	mov	r2, #10
	ldr	r0, [r1, #4]
	mov	r1, #0
	bl	strtol
	mov	r4, r0
	add	r0, sp, #512
	bl	pipe
	mov	r0, r4
	ldr	r1, .L15+8
	ldr	r4, .L15+12
	bl	wake_me
	mov	r3, #0
	ldr	r6, .L15
	str	r3, [r4, #0]
	mov	r5, sp
	b	.L11
.L9:
	ldr	r0, [sp, #512]
	mov	r1, r5
	mov	r2, #512
	bl	read
	cmp	r0, #512
	beq	.L10
	bl	__errno_location
	ldr	r2, [r0, #0]
	cmp	r2, #0
	cmpne	r2, #4
	bne	.L14
.L10:
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
.L11:
	ldr	r0, [sp, #516]
	mov	r1, r5
	mov	r2, #512
	bl	write
	cmp	r0, #512
	beq	.L9
	bl	__errno_location
	ldr	r2, [r0, #0]
	cmp	r2, #0
	cmpne	r2, #4
	beq	.L9
	ldr	r0, [r6, #0]
	ldr	r1, .L15+16
	bl	fprintf
	b	.L9
.L14:
	ldr	r0, [r6, #0]
	ldr	r1, .L15+20
	bl	fprintf
	b	.L10
.L16:
	.align	2
.L15:
	.word	stderr
	.word	.LC1
	.word	report
	.word	iter
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.global	SCCSid
	.comm	iter,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 40
SCCSid:
	.ascii	"@(#) @(#)pipe.c:3.3 -- 5/15/91 19:30:20\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%ld|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"Usage: %s duration\012\000"
.LC2:
	.ascii	"write failed, error %d\012\000"
.LC3:
	.ascii	"read failed, error %d\012\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
