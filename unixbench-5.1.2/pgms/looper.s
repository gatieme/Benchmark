	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"looper.c"
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
	cmp	r0, #1
	sub	sp, sp, #12
	mov	r4, r0
	mov	r5, r1
	ble	.L21
	ldr	r0, [r1, #4]
	mov	r2, #10
	mov	r1, #0
	bl	strtol
	cmp	r0, #0
	ble	.L22
	ldr	r3, .L26
	cmp	r4, #2
	sub	r4, r4, #2
	str	r4, [r3, #0]
	beq	.L10
	ldr	r1, .L26+4
	mov	r4, r4, asl #2
	mov	r3, #0
.L11:
	ldr	r2, [r5, #8]
	add	r5, r5, #4
	str	r2, [r1, r3]
	add	r3, r3, #4
	cmp	r3, r4
	bne	.L11
.L10:
	ldr	r4, .L26+8
	mov	r3, #0
	ldr	r1, .L26+12
	str	r3, [r4, #0]
	bl	wake_me
	add	r5, sp, #4
	b	.L16
.L12:
	blt	.L23
	mov	r0, r5
	bl	wait
	ldr	r2, [sp, #4]
	cmp	r2, #25344
	beq	.L24
	cmp	r2, #0
	bne	.L25
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
.L16:
	bl	fork
	cmp	r0, #0
	bne	.L12
	ldr	r3, .L26+4
	mov	r1, r3
	ldr	r0, [r3, #0]
	bl	execvp
	mov	r0, #99
	bl	exit
.L21:
	ldr	r2, [r1, #0]
	ldr	r4, .L26+16
	ldr	r1, .L26+20
.L19:
	ldr	r0, [r4, #0]
	bl	fprintf
	ldr	r3, [r4, #0]
	ldr	r0, .L26+24
	mov	r1, #1
	mov	r2, #22
	bl	fwrite
	mov	r0, #1
	bl	exit
.L23:
	ldr	r3, .L26+16
	ldr	r2, [r4, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L26+28
	bl	fprintf
	ldr	r0, .L26+32
	bl	perror
	mov	r0, #2
	bl	exit
.L24:
	ldr	r3, .L26+16
	ldr	r1, .L26+36
	ldr	r0, [r3, #0]
	ldr	r3, .L26+4
	ldr	r2, [r3, #0]
	bl	fprintf
	mov	r0, #2
	bl	exit
.L25:
	ldr	r3, .L26+16
	ldr	r1, .L26+40
	ldr	r0, [r3, #0]
	bl	fprintf
	mov	r0, #2
	bl	exit
.L22:
	ldr	r4, .L26+16
	ldr	r2, [r5, #0]
	ldr	r1, .L26+44
	b	.L19
.L27:
	.align	2
.L26:
	.word	cmd_argc
	.word	cmd_argv
	.word	iter
	.word	report
	.word	stderr
	.word	.LC1
	.word	.LC2
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC3
	.size	main, .-main
	.global	SCCSid
	.comm	iter,4,4
	.comm	cmd_argv,112,4
	.comm	cmd_argc,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 42
SCCSid:
	.ascii	"@(#) @(#)looper.c:1.4 -- 5/15/91 19:30:22\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%lu|60|lpm\012\000"
	.space	2
.LC1:
	.ascii	"Usage: %s duration command [args..]\012\000"
	.space	3
.LC2:
	.ascii	"  duration in seconds\012\000"
	.space	1
.LC3:
	.ascii	"Usage: %s duration command [arg..]\012\000"
.LC4:
	.ascii	"Fork failed at iteration %lu\012\000"
	.space	2
.LC5:
	.ascii	"Reason\000"
	.space	1
.LC6:
	.ascii	"Command \"%s\" didn't exec\012\000"
	.space	2
.LC7:
	.ascii	"Bad wait status: 0x%x\012\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
