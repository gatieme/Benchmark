	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"syscall.c"
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r1
	ble	.L26
	cmp	r0, #2
	ldrne	r6, [r1, #8]
	mov	r2, #10
	mov	r1, #0
	ldr	r0, [r5, #4]
	ldr	r4, .L29
	ldreq	r6, .L29+4
	bl	strtol
	mov	r3, #0
	str	r3, [r4, #0]
	ldr	r1, .L29+8
	bl	wake_me
	ldrb	r3, [r6, #0]	@ zero_extendqisi2
	sub	r3, r3, #99
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L11
.L16:
	.word	.L22
	.word	.L11
	.word	.L23
	.word	.L11
	.word	.L21
	.word	.L11
	.word	.L11
	.word	.L11
	.word	.L11
	.word	.L11
	.word	.L24
.L22:
	mov	r0, #0
	bl	dup
	bl	close
	ldr	r3, [r4, #0]
	mov	r0, #0
	add	r3, r3, #1
	str	r3, [r4, #0]
	bl	dup
	bl	close
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	b	.L22
.L24:
	mov	r0, #0
	bl	dup
	bl	close
	bl	getpid
	bl	getuid
	mov	r0, #18
	bl	umask
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	b	.L24
.L21:
	bl	getpid
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	bl	getpid
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	b	.L21
.L17:
	beq	.L27
	mov	r1, #0
	mov	r2, r1
	bl	waitpid
	cmp	r0, #0
	blt	.L28
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
.L23:
	bl	fork
	subs	r1, r0, #0
	bge	.L17
	ldr	r3, .L29+12
	ldr	r2, [r5, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L29+16
	bl	fprintf
	mov	r0, #1
	bl	exit
.L11:
	mov	r0, #9
	bl	exit
.L26:
	ldr	r4, .L29+12
	ldr	r2, [r1, #0]
	ldr	r0, [r4, #0]
	ldr	r1, .L29+20
	bl	fprintf
	mov	r1, #1
	mov	r2, #16
	ldr	r3, [r4, #0]
	ldr	r0, .L29+24
	bl	fwrite
	ldr	r3, [r4, #0]
	ldr	r0, .L29+28
	mov	r1, #1
	mov	r2, #45
	bl	fwrite
	mov	r0, #1
	bl	exit
.L28:
	ldr	r3, .L29+12
	ldr	r2, [r5, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L29+32
	bl	fprintf
	mov	r0, #1
	bl	exit
.L27:
	ldr	r0, .L29+36
	bl	execl
	ldr	r3, .L29+12
	ldr	r2, [r5, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L29+40
	bl	fprintf
	mov	r0, #1
	bl	exit
.L30:
	.align	2
.L29:
	.word	iter
	.word	.LC4
	.word	report
	.word	stderr
	.word	.LC5
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC8
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.global	SCCSid
	.comm	iter,4,4
	.data
	.align	2
	.type	SCCSid, %object
	.size	SCCSid, 43
SCCSid:
	.ascii	"@(#) @(#)syscall.c:3.3 -- 5/15/91 19:30:21\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COUNT|%ld|1|lps\012\000"
	.space	3
.LC1:
	.ascii	"Usage: %s duration [ test ]\012\000"
	.space	3
.LC2:
	.ascii	"test is one of:\012\000"
	.space	3
.LC3:
	.ascii	"  \"mix\" (default), \"close\", \"getpid\", \"exec\""
	.ascii	"\012\000"
	.space	2
.LC4:
	.ascii	"mix\000"
.LC5:
	.ascii	"%s: fork failed\012\000"
	.space	3
.LC6:
	.ascii	"/bin/true\000"
	.space	2
.LC7:
	.ascii	"%s: exec /bin/true failed\012\000"
	.space	1
.LC8:
	.ascii	"%s: waitpid failed\012\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
