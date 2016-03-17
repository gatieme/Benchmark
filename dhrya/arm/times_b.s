	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"times_b.c"
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.text
	.align	2
	.global	dtime
	.type	dtime, %function
dtime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L3
	mov	r0, #0
	mov	r1, r6
	bl	getrusage
	ldr	r0, [r6, #0]
	bl	__aeabi_i2d
	mov	r4, r0
	ldr	r0, [r6, #4]
	mov	r5, r1
	bl	__aeabi_i2d
	ldr	r2, .L3+4
	ldr	r3, .L3+8
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	rusage
	.word	-1598689907
	.word	1051772663
	.size	dtime, .-dtime
	.comm	rusage,72,4
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
