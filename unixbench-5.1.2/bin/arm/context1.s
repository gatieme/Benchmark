	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"context1.c"
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	cmp	r0, #2
	sub	sp, sp, #24
	beq	.L8
	ldr	r3, .L32
	ldr	r0, .L32+4
	ldr	r3, [r3, #0]
	mov	r1, #1
	mov	r2, #24
	bl	fwrite
	mov	r0, #1
	bl	exit
.L8:
	mov	r2, #10
	ldr	r0, [r1, #4]
	ldr	r4, .L32+8
	mov	r1, #0
	bl	strtol
	mov	r3, #0
	ldr	r1, .L32+12
	str	r3, [r4, #0]
	bl	wake_me
	add	r0, sp, #8
	bl	pipe
	cmp	r0, #0
	beq	.L26
.L9:
	ldr	r0, .L32+16
	bl	perror
	mov	r0, #1
	bl	exit
.L26:
	mov	r0, sp
	bl	pipe
	cmp	r0, #0
	bne	.L9
	bl	fork
	subs	r3, r0, #0
	beq	.L11
	ldr	r0, [sp, #8]
	bl	close
	ldr	r0, [sp, #4]
	bl	close
	add	r5, sp, #20
	b	.L17
.L12:
	mov	r2, r0
	mov	r1, r5
	ldr	r0, [sp, #0]
	bl	read
	cmp	r0, #4
	bne	.L27
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #0]
	cmp	r3, r2
	bne	.L28
	add	r3, r3, #1
	str	r3, [r4, #0]
.L17:
	ldr	r0, [sp, #12]
	ldr	r1, .L32+8
	mov	r2, #4
	bl	write
	cmp	r0, #4
	beq	.L12
	bl	__errno_location
	ldr	r3, [r0, #0]
	cmp	r3, #4
	cmpne	r3, #0
	bne	.L29
.L22:
	mov	r0, #1
	bl	exit
.L11:
	ldr	r0, [sp, #12]
	str	r3, [sp, #16]
	bl	close
	ldr	r0, [sp, #0]
	bl	close
	add	r5, sp, #20
	add	r6, sp, #16
	b	.L23
.L18:
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	bne	.L30
	mov	r2, r0
	mov	r1, r6
	ldr	r0, [sp, #4]
	bl	write
	cmp	r0, #4
	bne	.L31
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
.L23:
	ldr	r0, [sp, #8]
	mov	r1, r5
	mov	r2, #4
	bl	read
	cmp	r0, #4
	beq	.L18
	bl	__errno_location
	ldr	r3, [r0, #0]
	cmp	r3, #4
	cmpne	r3, #0
	beq	.L22
	ldr	r0, .L32+20
	bl	perror
	b	.L22
.L27:
	bl	__errno_location
	ldr	r3, [r0, #0]
	cmp	r3, #4
	cmpne	r3, #0
	beq	.L22
	ldr	r0, .L32+24
	bl	perror
	b	.L22
.L30:
	ldr	r1, .L32
	ldr	r2, [r4, #0]
	ldr	r0, [r1, #0]
	ldr	r1, .L32+28
	bl	fprintf
	mov	r0, #2
	bl	exit
.L31:
	bl	__errno_location
	ldr	r3, [r0, #0]
	cmp	r3, #4
	cmpne	r3, #0
	beq	.L22
	ldr	r0, .L32+32
	bl	perror
	b	.L22
.L28:
	ldr	r1, .L32
	ldr	r0, [r1, #0]
	ldr	r1, .L32+36
	bl	fprintf
	mov	r0, #2
	bl	exit
.L29:
	ldr	r0, .L32+40
	bl	perror
	b	.L22
.L33:
	.align	2
.L32:
	.word	stderr
	.word	.LC1
	.word	iter
	.word	report
	.word	.LC2
	.word	.LC6
	.word	.LC4
	.word	.LC7
	.word	.LC8
	.word	.LC5
	.word	.LC3
	.size	main, .-main
	.global	SCCSid
	.comm	iter,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 44
SCCSid:
	.ascii	"@(#) @(#)context1.c:3.3 -- 5/15/91 19:30:18\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%lu|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"Usage: context duration\012\000"
	.space	3
.LC2:
	.ascii	"pipe create failed\000"
	.space	1
.LC3:
	.ascii	"master write failed\000"
.LC4:
	.ascii	"master read failed\000"
	.space	1
.LC5:
	.ascii	"Master sync error: expect %lu, got %lu\012\000"
.LC6:
	.ascii	"slave read failed\000"
	.space	2
.LC7:
	.ascii	"Slave sync error: expect %lu, got %lu\012\000"
	.space	1
.LC8:
	.ascii	"slave write failed\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
