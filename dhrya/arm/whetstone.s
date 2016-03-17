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
	.file	"whetstone.c"
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.text
	.align	2
	.global	PA
	.type	PA, %function
PA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.L2:
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
	add	r3, r0, #16
	ldmia	r3, {r2-r3}
	sub	sp, sp, #24
	mov	r4, r0
	add	r1, r0, #8
	ldmia	r1, {r0-r1}
	ldr	r5, .L4
	bl	__aeabi_dadd
	add	r3, r4, #24
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	add	r3, r4, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, r4, #16
	ldmia	r3, {r2-r3}
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	bl	__aeabi_dadd
	add	r3, r4, #24
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	add	r3, r4, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	mov	r7, r0
	mov	r8, r1
	str	r7, [r4, #16]
	str	r8, [r4, #20]
	mov	r2, r0
	mov	r3, r1
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	add	r3, r4, #24
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	add	r3, r4, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	str	sl, [r4, #24]
	str	fp, [r4, #28]
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dsub
	ldr	r6, .L4+4
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	add	r3, r4, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	ldmia	r6, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r7
	mov	r3, r8
	stmia	sp, {r0-r1}
	str	r0, [r4, #32]
	str	r1, [r4, #36]
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	sp, {r2-r3}
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r7
	mov	r3, r8
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dsub
	ldmia	sp, {r2-r3}
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	sp, {r2-r3}
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r7, r0
	mov	r8, r1
	str	r7, [r4, #24]
	str	r8, [r4, #28]
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dadd
	ldmia	sp, {r2-r3}
	bl	__aeabi_dadd
	ldmia	r6, {r2-r3}
	bl	__aeabi_ddiv
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	str	sl, [r4, #32]
	str	fp, [r4, #36]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	stmia	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r7, r0
	mov	r8, r1
	str	r7, [r4, #24]
	str	r8, [r4, #28]
	ldmia	sp, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	r6, {r2-r3}
	bl	__aeabi_ddiv
	ldmia	sp, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	str	sl, [r4, #32]
	str	fp, [r4, #36]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	ldmia	sp, {r2-r3}
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	stmia	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	ldmia	sp, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	ldmia	r6, {r2-r3}
	bl	__aeabi_ddiv
	ldmia	sp, {r2-r3}
	mov	r7, r0
	mov	r8, r1
	str	r7, [r4, #32]
	str	r8, [r4, #36]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	ldmia	sp, {r2-r3}
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	bl	__aeabi_dadd
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	stmia	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	ldmia	sp, {r0-r1}
	str	sl, [r4, #24]
	str	fp, [r4, #28]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	ldmia	r6, {r2-r3}
	bl	__aeabi_ddiv
	ldmia	sp, {r2-r3}
	mov	r7, r0
	mov	r8, r1
	str	r7, [r4, #32]
	str	r8, [r4, #36]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	ldmia	sp, {r2-r3}
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	stmia	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	ldmia	r5, {r2-r3}
	bl	__aeabi_dmul
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	str	sl, [r4, #24]
	str	fp, [r4, #28]
	ldmia	sp, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	ldmia	r6, {r2-r3}
	bl	__aeabi_ddiv
	ldr	r3, .L4+8
	mov	r2, #6
	str	r0, [r4, #32]
	str	r1, [r4, #36]
	str	r2, [r3, #0]
	add	sp, sp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	T
	.word	T2
	.word	J
	.size	PA, .-PA
	.align	2
	.global	P0
	.type	P0, %function
P0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldr	r0, .L8+4
	ldr	r2, [r3, #0]
	ldr	r3, .L8+8
	str	fp, [sp, #-4]!
	ldr	r1, [r3, #0]
	ldr	r3, .L8+12
	ldr	r0, [r0, #0]
	add	r1, r3, r1, asl #3
	add	r2, r3, r2, asl #3
	ldmia	r1, {fp-ip}
	stmia	r2, {fp-ip}
	add	r3, r3, r0, asl #3
	ldmia	r3, {fp-ip}
	stmia	r1, {fp-ip}
	ldmia	r2, {r1-r2}
	stmia	r3, {r1-r2}
	ldmfd	sp!, {fp}
	bx	lr
.L9:
	.align	2
.L8:
	.word	J
	.word	L
	.word	K
	.word	E1
	.size	P0, .-P0
	.align	2
	.global	P3
	.type	P3, %function
P3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L12
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldmia	ip, {r6-r7}
	mov	r8, r2
	mov	r9, r3
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r3, .L12+4
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	ldr	r3, [sp, #32]
	stmia	r3, {r0-r1}
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	T
	.word	T2
	.size	P3, .-P3
	.global	__aeabi_i2d
	.global	__aeabi_i2f
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_fcmpge
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #1
	sub	sp, sp, #108
	mov	sl, r0
	ble	.L54
	mov	ip, #0
	mov	lr, #1000
	mov	r4, r1
	str	ip, [sp, #92]
	str	lr, [sp, #36]
	mov	r6, #1
	mov	r8, ip
	mov	r7, lr
	b	.L21
.L56:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	mov	r0, r5
	cmp	r3, #99
	mov	r1, #0
	mov	r2, #10
	beq	.L17
	bl	strtol
	cmp	r0, #0
	ble	.L18
	ldr	r0, [r4, #4]
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	add	r6, r6, #1
	cmp	sl, r6
	mov	r7, r0
	add	r4, r4, #4
	ble	.L55
.L21:
	ldr	r5, [r4, #4]
	ldr	r1, .L62
	mov	r0, r5
	mov	r2, #2
	bl	strncmp
	cmp	r0, #0
	bne	.L56
.L17:
	add	r6, r6, #1
	cmp	sl, r6
	mov	r8, #1
	add	r4, r4, #4
	bgt	.L21
.L55:
	ldr	r4, .L62+4
	mov	ip, r7, asl #1
	ldr	lr, .L62+8
	str	r4, [sp, #96]
	ldr	r4, .L62+12
	add	r3, ip, r7
	mov	r1, r3, asl #2
	add	r0, r7, r7, asl #2
	add	r2, r7, r7, asl #3
	str	lr, [sp, #84]
	str	r4, [sp, #100]
	ldr	lr, .L62+16
	ldr	r4, .L62+20
	str	r1, [sp, #64]
	add	r0, r7, r0, asl #2
	add	r2, r7, r2, asl #1
	add	r1, r1, r7
	add	r0, r7, r0, asl #1
	add	r1, r7, r1, asl #3
	add	r2, r7, r2, asl #2
	str	lr, [sp, #24]
	str	r4, [sp, #32]
	ldr	lr, .L62+24
	ldr	r4, .L62+28
	rsb	ip, ip, r7, asl #4
	add	r0, r7, r0, asl #3
	mov	r1, r1, asl #1
	mov	r2, r2, asl #3
	rsb	r3, r3, r3, asl #5
	str	r8, [sp, #92]
	str	r7, [sp, #36]
	str	lr, [sp, #56]
	str	r4, [sp, #60]
	str	ip, [sp, #28]
	str	r0, [sp, #80]
	str	r1, [sp, #68]
	str	r2, [sp, #76]
	str	r3, [sp, #72]
.L46:
.L22:
	mov	r0, #0
	bl	time
	ldr	r1, .L62+32
	ldr	r2, .L62+36
	ldr	r3, [sp, #96]
	ldr	ip, [sp, #64]
	stmia	r3, {r1-r2}
	ldr	r1, .L62+40
	ldr	r2, .L62+44
	ldr	r3, [sp, #84]
	cmp	ip, #0
	stmia	r3, {r1-r2}
	ldr	r3, [sp, #100]
	mov	r1, #0
	mov	r2, #1073741824
	stmia	r3, {r1-r2}
	ldr	r3, [sp, #24]
	ldr	r2, .L62+48
	mov	r1, #0
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	ldr	r2, .L62+52
	mov	r1, #0
	str	r0, [sp, #88]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #32]
	str	r2, [r3, #36]
	ble	.L57
	ldr	r7, .L62+52
	mov	r6, #0
	ldr	r5, .L62+48
	mov	sl, r6
	mov	fp, r7
	mov	r4, #0
	mov	r8, r6
	mov	r9, r7
	mov	r3, #1
	stmia	sp, {sl-fp}
	str	r6, [sp, #8]
	str	r7, [sp, #12]
	mov	sl, r4
	mov	fp, r5
	str	r8, [sp, #16]
	str	r9, [sp, #20]
	mov	r0, r6
	mov	r1, r7
	ldr	r5, [sp, #64]
	mov	r4, r3
	b	.L26
.L58:
	str	r8, [sp, #16]
	str	r9, [sp, #20]
	ldmia	sp, {r1-r2}
	mov	r0, r6
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	mov	r1, r7
.L26:
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldmia	sp, {r0-r1}
	bl	__aeabi_dadd
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r7
	mov	sl, r0
	mov	fp, r1
	bl	__aeabi_dadd
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r7, r1
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, sl
	stmia	sp, {r0-r1}
	mov	r3, fp
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	add	r4, r4, #1
	cmp	r4, r5
	mov	r8, r0
	mov	r9, r1
	ble	.L58
	ldr	r2, [sp, #24]
	mov	r4, sl
	mov	r5, fp
	str	r4, [r2, #8]
	str	r5, [r2, #12]
	ldmia	sp, {sl-fp}
	str	r6, [r2, #16]
	str	r7, [r2, #20]
	str	sl, [r2, #24]
	str	fp, [r2, #28]
	str	r8, [r2, #32]
	str	r9, [r2, #36]
.L24:
	ldr	r3, [sp, #28]
	cmp	r3, #0
	ble	.L27
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #24]
	add	r2, r2, #16
	ldmia	r2, {r1-r2}
	str	r1, [sp, #40]
	str	r2, [sp, #44]
	ldr	r2, [sp, #24]
	mov	ip, #1
	add	r2, r2, #24
	ldmia	r2, {r1-r2}
	str	r1, [sp, #48]
	str	r2, [sp, #52]
	add	r1, r3, #32
	ldmia	r1, {r0-r1}
	stmia	sp, {r4-r5}
	str	r8, [sp, #16]
	str	r9, [sp, #20]
	add	r9, sp, #48
	ldmia	r9, {r8-r9}
	mov	r2, r6
	mov	r3, r7
	mov	r6, sl
	mov	r7, fp
	str	ip, [sp, #8]
	add	fp, sp, #40
	ldmia	fp, {sl-fp}
	mov	r4, r0
	mov	r5, r1
	b	.L30
.L59:
	str	r4, [sp, #16]
	str	r5, [sp, #20]
	mov	r6, r8
	mov	r7, r9
	mov	r2, sl
	mov	r3, fp
.L30:
.L28:
	ldmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r3, fp
	stmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	ldmia	sp, {r0-r1}
	mov	r3, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	ldmia	sp, {r2-r3}
	mov	r6, r0
	mov	r7, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L62+56
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r4, r0
	mov	r5, r1
	mov	r3, fp
	ldmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	stmia	sp, {r0-r1}
	ldmia	sp, {r2-r3}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r9, r1
	mov	r2, r8
	mov	r3, r9
	ldmia	sp, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	ldmia	sp, {r2-r3}
	mov	r6, r0
	mov	r7, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L62+56
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	ldmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r9, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r6, r0
	mov	r7, r1
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L62+56
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r9, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r6, r0
	mov	r7, r1
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L62+56
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r9, r1
	mov	r2, r8
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r6, r0
	mov	r7, r1
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L62+56
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	stmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	mov	r3, fp
	ldmia	sp, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	ldr	r2, .L62+32
	ldr	r3, .L62+36
	bl	__aeabi_dmul
	ldmia	sp, {r2-r3}
	mov	r8, r0
	mov	r9, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r4
	ldr	r4, [sp, #8]
	mov	r3, r5
	add	r4, r4, #1
	str	r4, [sp, #8]
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L62+56
	bl	__aeabi_dmul
	ldr	ip, [sp, #8]
	ldr	lr, [sp, #28]
	mov	r4, r0
	cmp	ip, lr
	mov	r5, r1
	ble	.L59
	ldr	r2, [sp, #24]
	ldmia	sp, {r4-r5}
	mov	r3, sl
	str	r4, [r2, #8]
	str	r5, [r2, #12]
	mov	r4, fp
	mov	ip, r2
	str	r3, [r2, #16]
	str	r4, [r2, #20]
	mov	r3, r9
	mov	r2, r8
	str	r2, [ip, #24]
	str	r3, [ip, #28]
	str	r0, [ip, #32]
	str	r1, [ip, #36]
	str	sl, [sp, #40]
	str	fp, [sp, #44]
	ldr	ip, [sp, #32]
	str	r8, [sp, #48]
	str	r9, [sp, #52]
	mov	r3, #6
	str	r3, [ip, #0]
.L27:
	ldr	lr, [sp, #80]
	ldr	r1, [sp, #32]
	mov	r2, #1
	cmp	lr, #0
	str	r2, [r1, #0]
	ble	.L31
	mov	r3, r2
	mov	r1, lr
.L32:
	add	r3, r3, #1
	cmp	r1, r3
	eor	r2, r2, #1
	bge	.L32
	ldr	r3, [sp, #32]
	str	r2, [r3, #0]
	mov	r1, r3
.L31:
	ldr	r4, [sp, #68]
	ldr	ip, [sp, #56]
	mov	r3, #2
	ldr	lr, [sp, #60]
	str	r3, [ip, #0]
	mov	r2, #1
	mov	r3, #3
	cmp	r4, #0
	str	r3, [lr, #0]
	str	r2, [r1, #0]
	ble	.L33
	mov	r3, r2
	mov	r2, r4
.L34:
	add	r3, r3, #1
	cmp	r3, r2
	ble	.L34
	ldr	r4, .L62+60
	ldr	ip, [sp, #24]
	mov	r3, #0
	ldr	lr, [sp, #56]
	str	r3, [ip, #8]
	str	r4, [ip, #12]
	str	r3, [ip, #16]
	str	r4, [ip, #20]
	ldr	r1, [sp, #60]
	mov	r3, #2
	str	r3, [lr, #0]
	ldr	r2, [sp, #32]
	mov	r3, #3
	str	r3, [r1, #0]
	mov	r3, #1
	str	r3, [r2, #0]
.L33:
	ldr	ip, [sp, #60]
	mov	r3, #3
	ldr	r4, [sp, #76]
	ldr	r2, .L62+48
	str	r3, [ip, #0]
	ldr	r3, [sp, #24]
	mov	r1, #0
	ldr	r5, .L62+64
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	cmp	r4, #0
	mov	r1, #0
	mov	r4, #0
	mov	r2, #1073741824
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #28]
	ble	.L35
	mov	r3, #1
	ldr	r0, [sp, #76]
	b	.L37
.L60:
	mov	r6, r1
	mov	r7, r2
	mov	r1, r4
	mov	r2, r5
	mov	r4, r6
	mov	r5, r7
.L37:
	add	r3, r3, #1
	cmp	r0, r3
	bge	.L60
	ldr	ip, [sp, #24]
	str	r4, [ip, #16]
	str	r5, [ip, #20]
	str	r1, [ip, #24]
	str	r2, [ip, #28]
	str	r1, [ip, #8]
	str	r2, [ip, #12]
.L35:
	ldr	lr, [sp, #72]
	ldr	r1, [sp, #32]
	mov	r3, #2
	ldr	r2, [sp, #56]
	str	r3, [r1, #0]
	cmp	lr, #0
	mov	r3, #3
	str	r3, [r2, #0]
	ble	.L38
	ldr	r1, .L62+68
	ldr	r8, [sp, #84]
	mov	r0, #0
	mov	r4, #1
	mov	r6, lr
.L39:
	bl	log
	ldmia	r8, {r2-r3}
	bl	__aeabi_ddiv
	bl	exp
	add	r4, r4, #1
	bl	sqrt
	cmp	r4, r6
	ble	.L39
.L38:
	mov	r0, #0
	bl	time
	ldr	r3, [sp, #88]
	rsb	r4, r3, r0
	mov	r0, #10
	bl	putchar
	cmp	r4, #0
	ble	.L61
	mov	r3, r4
	mov	r2, #1
	ldr	r1, [sp, #36]
	ldr	r0, .L62+72
	bl	printf
	ldr	r0, [sp, #36]
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L62+76
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r0, r4
	mov	r7, r1
	bl	__aeabi_i2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	ldr	r1, .L62+80
	mov	r4, r0
	bl	__aeabi_fcmpge
	cmp	r0, #0
	beq	.L52
	mov	r0, r4
	bl	__aeabi_f2d
	mov	r2, #0
	ldr	r3, .L62+84
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L62+88
	bl	printf
.L43:
	ldr	r4, [sp, #92]
	cmp	r4, #0
	bne	.L46
	mov	r0, r4
.L20:
	add	sp, sp, #108
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L52:
	mov	r0, r4
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L62+92
	bl	printf
	b	.L43
.L57:
	mov	r8, r1
	mov	r9, r2
	mov	sl, r1
	mov	fp, r2
	mov	r6, r1
	mov	r7, r2
	mov	r4, #0
	ldr	r5, .L62+48
	b	.L24
.L18:
	ldr	r3, .L62+96
	ldr	r0, .L62+100
	ldr	r3, [r3, #0]
	mov	r1, #1
	mov	r2, #27
	bl	fwrite
	mov	r0, #1
	b	.L20
.L61:
	ldr	r0, .L62+104
	bl	puts
	mov	r0, #1
	b	.L20
.L54:
	ldr	r3, .L62+108
	ldr	r1, .L62+112
	ldr	r2, .L62+116
	ldr	r4, .L62+120
	ldr	ip, .L62+124
	ldr	lr, .L62+128
	str	r3, [sp, #68]
	ldr	r3, .L62+4
	str	r1, [sp, #72]
	str	r2, [sp, #76]
	mov	r1, #0
	mov	r2, #1000
	str	r4, [sp, #80]
	str	ip, [sp, #28]
	str	lr, [sp, #64]
	str	r1, [sp, #92]
	str	r2, [sp, #36]
	str	r3, [sp, #96]
	ldr	r4, .L62+8
	ldr	ip, .L62+12
	ldr	lr, .L62+16
	ldr	r1, .L62+20
	ldr	r2, .L62+24
	ldr	r3, .L62+28
	str	r4, [sp, #84]
	str	ip, [sp, #100]
	str	lr, [sp, #24]
	str	r1, [sp, #32]
	str	r2, [sp, #56]
	str	r3, [sp, #60]
	b	.L46
.L63:
	.align	2
.L62:
	.word	.LC0
	.word	T
	.word	T1
	.word	T2
	.word	E1
	.word	J
	.word	K
	.word	L
	.word	611603343
	.word	1071644567
	.word	1236950581
	.word	1071645196
	.word	1072693248
	.word	-1074790400
	.word	1071644672
	.word	1075314688
	.word	1074266112
	.word	1072168960
	.word	.LC3
	.word	1079574528
	.word	1148846080
	.word	1083129856
	.word	.LC4
	.word	.LC5
	.word	stderr
	.word	.LC1
	.word	.LC2
	.word	210000
	.word	93000
	.word	616000
	.word	345000
	.word	14000
	.word	12000
	.size	main, .-main
	.comm	T,8,8
	.comm	T1,8,8
	.comm	T2,8,8
	.comm	E1,40,8
	.comm	J,4,4
	.comm	K,4,4
	.comm	L,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-c\000"
	.space	1
.LC1:
	.ascii	"usage: whetdc [-c] [loops]\012\000"
.LC2:
	.ascii	"Insufficient duration- Increase the LOOP count\000"
	.space	1
.LC3:
	.ascii	"Loops: %ld, Iterations: %d, Duration: %ld sec.\012\000"
.LC4:
	.ascii	"C Converted Double Precision Whetstones: %.1f MIPS\012"
	.ascii	"\000"
.LC5:
	.ascii	"C Converted Double Precision Whetstones: %.1f KIPS\012"
	.ascii	"\000"
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
