	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"whets.c"
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_dmul
	.text
	.align	2
	.global	pa
	.type	pa, %function
pa:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #28
	mov	r9, r0
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	add	r3, sp, #64
	ldmia	r3, {r2-r3}
	mov	r0, #0
	ldr	r1, .L6
	bl	__aeabi_ddiv
	add	r3, r9, #16
	ldmia	r3, {r2-r3}
	add	r5, r9, #24
	ldmia	r5, {r4-r5}
	ldmia	r9, {r7-r8}
	add	fp, r9, #8
	ldmia	fp, {sl-fp}
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	stmia	sp, {r2-r3}
	mov	r6, #0
.L2:
	mov	r2, sl
	mov	r3, fp
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dadd
	ldmia	sp, {r2-r3}
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r7, r0
	mov	r8, r1
	mov	r3, r5
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	ldmia	sp, {r2-r3}
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r4
	mov	sl, r0
	mov	fp, r1
	mov	r3, r5
	ldmia	sp, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dsub
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r7
	stmia	sp, {r0-r1}
	mov	r3, r8
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	ldmia	sp, {r2-r3}
	bl	__aeabi_dadd
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	add	r6, r6, #1
	cmp	r6, #6
	mov	r4, r0
	mov	r5, r1
	bne	.L2
	str	r4, [r9, #24]
	str	r5, [r9, #28]
	ldmia	sp, {r3-r4}
	stmia	r9, {r7-r8}
	str	sl, [r9, #8]
	str	fp, [r9, #12]
	str	r3, [r9, #16]
	str	r4, [r9, #20]
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	1072693248
	.size	pa, .-pa
	.align	2
	.global	po
	.type	po, %function
po:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, r2, asl #3
	add	r1, r0, r1, asl #3
	str	fp, [sp, #-4]!
	ldmia	r2, {fp-ip}
	stmia	r1, {fp-ip}
	add	r3, r0, r3, asl #3
	ldmia	r3, {fp-ip}
	stmia	r2, {fp-ip}
	ldmia	r1, {r1-r2}
	stmia	r3, {r1-r2}
	ldmfd	sp!, {fp}
	bx	lr
	.size	po, .-po
	.align	2
	.global	p3
	.type	p3, %function
p3:
	@ Function supports interworking.
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	ldmia	r1, {r0-r1}
	stmia	r4, {r0-r1}
	ldmia	r2, {r0-r1}
	stmia	r5, {r0-r1}
	mov	r6, r2
	ldmia	r4, {r2-r3}
	bl	__aeabi_dadd
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	stmia	r4, {r0-r1}
	ldmia	r5, {r2-r3}
	bl	__aeabi_dadd
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	stmia	r5, {r0-r1}
	ldmia	r4, {r2-r3}
	bl	__aeabi_dadd
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	stmia	r6, {r0-r1}
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	p3, .-p3
	.global	__aeabi_i2d
	.align	2
	.global	dtime
	.type	dtime, %function
dtime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L14
	mov	r0, #0
	mov	r1, r6
	bl	getrusage
	ldr	r0, [r6, #0]
	bl	__aeabi_i2d
	mov	r4, r0
	ldr	r0, [r6, #4]
	mov	r5, r1
	bl	__aeabi_i2d
	ldr	r2, .L14+4
	ldr	r3, .L14+8
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	rusage
	.word	-1598689907
	.word	1051772663
	.size	dtime, .-dtime
	.global	__aeabi_dcmpgt
	.global	__aeabi_f2d
	.align	2
	.global	pout
	.type	pout, %function
pout:
	@ Function supports interworking.
	@ args = 24, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L27
	sub	sp, sp, #20
	mov	r6, r0
	str	r1, [sp, #12]	@ float
	mov	r9, r2
	add	r1, sp, #56
	ldmia	r1, {r0-r1}
	ldmia	r4, {r2-r3}
	bl	__aeabi_dadd
	add	fp, sp, #64
	ldmia	fp, {sl-fp}
	ldr	r3, [sp, #76]
	add	r2, r4, #80
	mov	r5, r3, asl #3
	add	r8, r5, r3
	add	r8, r2, r8, asl #1
	add	r7, r4, r5
	stmia	r4, {r0-r1}
	str	sl, [r7, #8]
	str	fp, [r7, #12]
	mov	r1, r6
	mov	r0, r8
	ldr	r6, [sp, #72]
	bl	strcpy
	add	r3, r4, #248
	ldmia	r3, {r2-r3}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	cmp	r6, #1
	str	r0, [r4, #248]
	str	r1, [r4, #252]
	beq	.L25
	cmp	r6, #0
	bne	.L24
	mov	r1, r8
	add	r3, r7, #256
	ldmia	r3, {r2-r3}
	ldr	r0, .L27+4
	bl	printf
	cmp	r9, #1
	beq	.L26
	mov	r0, sl
	mov	r1, fp
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	moveq	r6, #0
	moveq	r7, #0
	beq	.L23
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L27+8
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	mov	r6, r0
	mov	r7, r1
.L23:
	add	r4, r4, r5
	mov	r8, #0
	mov	r9, #0
	str	r8, [r4, #400]
	str	r9, [r4, #404]
	add	r9, r4, #8
	ldmia	r9, {r8-r9}
	mov	r2, r6
	stmia	sp, {r8-r9}
	mov	r3, r7
	ldr	r0, .L27+12
	str	r6, [r4, #328]
	str	r7, [r4, #332]
	bl	printf
.L24:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L25:
	add	r3, sp, #56
	ldmia	r3, {r2-r3}
	str	r2, [r7, #256]
	str	r3, [r7, #260]
	b	.L24
.L26:
	mov	r0, sl
	mov	r1, fp
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	moveq	r6, #0
	moveq	r7, #0
	beq	.L21
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_f2d
	mov	r2, #0
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L27+8
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	mov	r6, r0
	mov	r7, r1
.L21:
	add	r4, r4, r5
	add	r9, r4, #8
	ldmia	r9, {r8-r9}
	stmia	sp, {r8-r9}
	ldr	r9, .L27+16
	mov	r8, #0
	mov	r2, r6
	mov	r3, r7
	str	r8, [r4, #328]
	str	r9, [r4, #332]
	str	r6, [r4, #400]
	str	r7, [r4, #404]
	ldr	r0, .L27+20
	bl	printf
	b	.L24
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	.LC0
	.word	1093567616
	.word	.LC2
	.word	1090021872
	.word	.LC1
	.size	pout, .-pout
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.align	2
	.global	whetstones
	.type	whetstones, %function
whetstones:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r9, r1, asl #1
	add	r4, r9, r1
	mov	r5, r1, asl #3
	add	r3, r5, r1
	mov	r6, r4, asl #2
	add	lr, r1, r1, asl #2
	sub	sp, sp, #196
	add	ip, r6, r1
	rsb	r5, r1, r5
	add	lr, r1, lr, asl #2
	add	r3, r1, r3, asl #1
	ldr	r7, .L81
	str	r6, [sp, #88]
	add	r3, r1, r3, asl #2
	ldr	r6, .L81+4
	str	r0, [sp, #72]
	add	lr, r1, lr, asl #1
	add	r0, r1, r5, asl #6
	add	ip, r1, ip, asl #3
	ldr	r8, .L81+72
	mov	sl, #0
	mov	fp, #0
	mov	r5, #0
	add	lr, r1, lr, asl #3
	mov	ip, ip, asl #1
	add	r0, r1, r0, asl #1
	stmia	r7, {sl-fp}
	mov	r3, r3, asl #3
	rsb	r9, r9, r1, asl #4
	mov	r7, #0
	mov	r1, r1, asl #5
	str	ip, [sp, #56]
	str	r7, [sp, #136]
	str	r8, [sp, #140]
	str	r5, [sp, #160]
	str	r6, [sp, #164]
	str	r2, [sp, #84]
	str	lr, [sp, #76]
	str	r0, [sp, #104]
	str	r3, [sp, #100]
	str	r5, [sp, #144]
	str	r6, [sp, #148]
	str	r5, [sp, #152]
	str	r6, [sp, #156]
	str	r1, [sp, #68]
	bl	dtime
	ldr	r8, [sp, #72]
	rsb	ip, r4, r4, asl #5
	cmp	r8, #0
	str	r0, [sp, #112]
	str	r1, [sp, #116]
	str	ip, [sp, #108]
	ble	.L30
	ldr	r1, [sp, #88]
	str	r9, [sp, #80]
	add	r4, r1, r4, asl #4
	add	r2, sp, #160
	ldmia	r2, {r1-r2}
	str	r1, [sp, #40]
	str	r2, [sp, #44]
	add	r8, sp, #144
	ldmia	r8, {r7-r8}
	add	fp, sp, #152
	ldmia	fp, {sl-fp}
	ldr	r2, .L81+8
	ldr	r1, .L81+12
	mov	r3, r4, asl #1
	str	r1, [sp, #32]
	str	r2, [sp, #36]
	add	r5, sp, #136
	ldmia	r5, {r4-r5}
	mov	r2, #0
	mov	r6, r5
	str	r2, [sp, #48]
	mov	r5, r4
	mov	r9, r3
.L31:
	cmp	r9, #0
	movgt	r4, #0
	ble	.L34
.L35:
	mov	r2, r5
	mov	r3, r6
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r7
	mov	r5, r0
	mov	r6, r1
	mov	r3, r8
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dsub
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r7, r0
	mov	r8, r1
	mov	r3, fp
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dsub
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r5
	mov	sl, r0
	mov	fp, r1
	mov	r3, r6
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, sl
	mov	r3, fp
	bl	__aeabi_dadd
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	add	r4, r4, #1
	cmp	r4, r9
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	bne	.L35
.L34:
	ldr	r3, [sp, #48]
	ldr	r4, [sp, #72]
	add	r3, r3, #1
	cmp	r3, r4
	str	r3, [sp, #48]
	beq	.L33
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	mov	r0, #0
	ldr	r1, .L81+72
	bl	__aeabi_dsub
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	b	.L31
.L33:
	ldr	r1, .L81+12
	ldr	r2, .L81+8
	mov	r4, r5
	mov	r5, r6
	str	r4, [sp, #136]
	str	r5, [sp, #140]
	str	sl, [sp, #152]
	str	fp, [sp, #156]
	str	r1, [sp, #32]
	str	r2, [sp, #36]
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	str	r7, [sp, #144]
	str	r8, [sp, #148]
	str	r2, [sp, #160]
	str	r3, [sp, #164]
	ldr	r9, [sp, #80]
	bl	dtime
	mov	r5, r0
	ldr	r0, [sp, #72]
	mov	r6, r1
	bl	__aeabi_i2f
	ldr	r3, [sp, #88]
	str	r0, [sp, #80]	@ float
	mov	r0, r3, asl #4
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	add	r3, sp, #112
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r6
	mov	r0, r5
	add	r6, sp, #160
	ldmia	r6, {r5-r6}
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	ldr	r2, .L81+40
	ldr	r3, .L81+36
	bl	__aeabi_dmul
	mov	r3, #1
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r1, r4
	ldr	r4, [sp, #84]
	mov	r2, r3
	ldr	r0, .L81+44
	str	r4, [sp, #16]
	str	r3, [sp, #20]
	bl	pout
	bl	dtime
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	mov	sl, #0
	add	r6, sp, #136
	mov	r4, #0
	mov	r5, #1073741824
	mov	r8, sl
	add	fp, sp, #32
	ldmia	fp, {sl-fp}
.L36:
	cmp	r9, #0
	movgt	r7, #0
	ble	.L40
.L37:
	add	r7, r7, #1
	mov	r0, r6
	mov	r2, sl
	mov	r3, fp
	stmia	sp, {r4-r5}
	bl	pa
	cmp	r9, r7
	bgt	.L37
.L40:
	ldr	r7, [sp, #72]
	add	r8, r8, #1
	cmp	r7, r8
	ble	.L38
	mov	r2, sl
	mov	r3, fp
	mov	r0, #0
	ldr	r1, .L81+72
	bl	__aeabi_dsub
	mov	sl, r0
	mov	fp, r1
	b	.L36
.L38:
	bl	dtime
	add	r9, r9, r9, asl #1
	mov	r5, r0
	mov	r0, r9, asl #5
	mov	r6, r1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r6
	mov	r0, r5
	add	r6, sp, #160
	ldmia	r6, {r5-r6}
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	ldr	r8, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r2, #1
	mov	r1, r4
	mov	r3, #2
	ldr	r0, .L81+48
	str	r3, [sp, #20]
	str	r8, [sp, #16]
	bl	pout
	bl	dtime
	mov	r6, r0
	mov	r7, r1
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #76]
	mov	r4, #1
	mov	r2, #0
.L41:
	cmp	r1, #0
	movgt	r3, #0
	ble	.L45
.L42:
	add	r3, r3, #1
	cmp	r3, r1
	eor	r4, r4, #1
	bne	.L42
.L45:
	add	r2, r2, #1
	cmp	r2, r0
	bne	.L41
	bl	dtime
	ldr	ip, [sp, #76]
	mov	sl, r0
	add	r0, ip, ip, asl #1
	mov	fp, r1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r3, r7
	stmia	sp, {r0-r1}
	mov	r2, r6
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r3, #3
	str	r3, [sp, #20]
	ldr	r3, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r2, #2
	mov	r1, r5
	ldr	r0, .L81+52
	str	r3, [sp, #16]
	bl	pout
	bl	dtime
	add	r5, sp, #136
	ldmia	r5, {r4-r5}
	mov	r7, r0
	mov	r8, r1
	ldr	ip, [sp, #72]
	add	r2, sp, #144
	ldmia	r2, {r1-r2}
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #56]
	mov	r3, #0
.L46:
	cmp	r2, #0
	movgt	r1, #0
	ble	.L50
.L47:
	add	r1, r1, #1
	cmp	r1, r2
	bne	.L47
	ldr	r1, .L81+16
	mov	r0, #0
	mov	r4, r0
	mov	r5, r1
.L50:
	add	r3, r3, #1
	cmp	r3, ip
	bne	.L46
	str	r4, [sp, #136]
	str	r5, [sp, #140]
	ldr	r3, .L81+12
	ldr	r4, .L81+8
	mov	r2, r1
	mov	r1, r0
	str	r3, [sp, #40]
	str	r4, [sp, #44]
	str	r1, [sp, #144]
	str	r2, [sp, #148]
	bl	dtime
	add	r3, sp, #136
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	add	r1, sp, #144
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	r4, [sp, #56]
	mov	r6, r1
	mov	r5, r0
	rsb	r0, r4, r4, asl #4
	str	r5, [sp, #184]
	str	r6, [sp, #188]
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r2, r7
	mov	r4, r0
	mov	r3, r8
	mov	r0, sl
	mov	r1, fp
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	ldr	r6, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r3, #4
	mov	r1, r4
	ldr	r0, .L81+56
	ldr	r4, .L81+60
	mov	r2, #2
	str	r3, [sp, #20]
	str	r6, [sp, #16]
	bl	pout
	mov	r3, #0
	str	r3, [sp, #176]
	str	r4, [sp, #180]
	str	r3, [sp, #184]
	str	r4, [sp, #188]
	mov	r3, #0
	str	r3, [sp, #76]
	bl	dtime
	add	r8, sp, #184
	ldmia	r8, {r7-r8}
	add	r5, sp, #176
	ldmia	r5, {r4-r5}
	str	r0, [sp, #88]
	str	r1, [sp, #92]
	add	sl, sp, #128
	add	r9, sp, #120
.L51:
	ldr	ip, [sp, #68]
	cmp	ip, #1
	movgt	r6, #1
	ble	.L55
.L52:
	mov	r0, r7
	mov	r1, r8
	mov	r2, sl
	mov	r3, r9
	bl	sincos
	add	r2, sp, #120
	ldmia	r2, {r1-r2}
	add	ip, sp, #128
	ldmia	ip, {fp-ip}
	str	r1, [sp, #32]
	str	r2, [sp, #36]
	mov	r0, r4
	mov	r1, r5
	mov	r2, sl
	mov	r3, r9
	str	ip, [sp, #28]
	bl	sincos
	mov	r2, r7
	mov	r3, r8
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	bl	cos
	mov	r2, r4
	mov	r3, r5
	str	r0, [sp, #56]
	str	r1, [sp, #60]
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dsub
	bl	cos
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	ldr	ip, [sp, #28]
	str	r0, [sp, #48]
	str	r1, [sp, #52]
	mov	r1, ip
	mov	r0, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	add	r3, sp, #48
	ldmia	r3, {r2-r3}
	mov	r7, r0
	mov	r8, r1
	add	r1, sp, #56
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L81+4
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_ddiv
	bl	atan
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	mov	r7, r0
	mov	r8, r1
	bl	__aeabi_dadd
	bl	cos
	mov	r2, r4
	mov	r3, r5
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dsub
	bl	cos
	add	r3, sp, #120
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	add	r1, sp, #128
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r2, r4
	mov	ip, r1
	mov	r3, r5
	mov	fp, r0
	add	r1, sp, #32
	ldmia	r1, {r0-r1}
	str	ip, [sp, #28]
	bl	__aeabi_dadd
	mov	r2, #0
	ldr	r3, .L81+4
	bl	__aeabi_dadd
	ldr	ip, [sp, #28]
	mov	r2, r0
	mov	r3, r1
	mov	r0, fp
	mov	r1, ip
	bl	__aeabi_ddiv
	bl	atan
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	ldr	r2, [sp, #68]
	add	r6, r6, #1
	cmp	r6, r2
	mov	r4, r0
	mov	r5, r1
	bne	.L52
.L55:
	ldr	r3, [sp, #76]
	ldr	r6, [sp, #72]
	add	r3, r3, #1
	cmp	r3, r6
	str	r3, [sp, #76]
	beq	.L53
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	mov	r0, #0
	ldr	r1, .L81+72
	bl	__aeabi_dsub
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	b	.L51
.L53:
	str	r4, [sp, #176]
	str	r5, [sp, #180]
	str	r7, [sp, #184]
	str	r8, [sp, #188]
	bl	dtime
	mov	r6, r1
	ldr	r1, [sp, #68]
	mov	r5, r0
	add	r0, r1, r1, asl #1
	add	r0, r1, r0, asl #2
	mov	r0, r0, asl #1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	add	r3, sp, #88
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r6
	mov	r0, r5
	add	r6, sp, #176
	ldmia	r6, {r5-r6}
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	mov	r3, #5
	str	r3, [sp, #20]
	ldr	r3, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r2, #2
	mov	r1, r4
	ldr	r0, .L81+64
	ldr	r4, .L81+72
	str	r3, [sp, #16]
	bl	pout
	mov	r3, #0
	str	r3, [sp, #168]
	str	r4, [sp, #172]
	str	r3, [sp, #184]
	str	r4, [sp, #188]
	str	r3, [sp, #176]
	str	r4, [sp, #180]
	bl	dtime
	mov	r5, #0
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	mov	r8, r5
	ldr	r5, [sp, #104]
	add	fp, sp, #184
	add	r9, sp, #176
	add	sl, sp, #168
.L56:
	cmp	r5, #0
	movgt	r4, #0
	ble	.L60
.L57:
	ldr	r6, .L81+12
	ldr	r7, .L81+8
	add	r4, r4, #1
	stmia	sp, {r6-r7}
	ldr	r6, .L81+20
	ldr	r7, .L81+60
	mov	r0, fp
	str	r6, [sp, #8]
	str	r7, [sp, #12]
	mov	r1, r9
	mov	r2, sl
	mov	r6, #0
	mov	r7, #1073741824
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	bl	p3
	cmp	r5, r4
	bgt	.L57
.L60:
	ldr	r7, [sp, #72]
	add	r8, r8, #1
	cmp	r7, r8
	bgt	.L56
	bl	dtime
	ldr	r8, [sp, #104]
	mov	r5, r0
	add	r0, r8, r8, asl #1
	mov	r0, r0, asl #1
	mov	r6, r1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	add	r3, sp, #40
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r6
	mov	r0, r5
	add	r6, sp, #168
	ldmia	r6, {r5-r6}
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	ldr	ip, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r3, #6
	mov	r1, r4
	ldr	r0, .L81+68
	mov	r2, #1
	ldr	r4, .L81+72
	str	r3, [sp, #20]
	str	ip, [sp, #16]
	bl	pout
	mov	r3, #0
	str	r3, [sp, #136]
	str	r4, [sp, #140]
	mov	r3, #0
	mov	r4, #1073741824
	str	r3, [sp, #144]
	str	r4, [sp, #148]
	ldr	r4, .L81+76
	mov	r3, #0
	str	r3, [sp, #152]
	str	r4, [sp, #156]
	bl	dtime
	ldr	r7, [sp, #100]
	ldr	r8, [sp, #72]
	mov	r6, #0
	add	r5, sp, #136
	mov	sl, r0
	mov	fp, r1
.L61:
	cmp	r7, #0
	movgt	r4, #0
	ble	.L65
.L62:
	add	r4, r4, #1
	mov	r0, r5
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	bl	po
	cmp	r7, r4
	bgt	.L62
.L65:
	add	r6, r6, #1
	cmp	r8, r6
	bgt	.L61
	bl	dtime
	mov	r6, r1
	ldr	r1, [sp, #100]
	mov	r5, r0
	add	r0, r1, r1, asl #1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r2, sl
	mov	r4, r0
	mov	r3, fp
	mov	r0, r5
	mov	r1, r6
	add	r6, sp, #152
	ldmia	r6, {r5-r6}
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	mov	r3, #7
	str	r3, [sp, #20]
	ldr	r3, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r2, #2
	mov	r1, r4
	ldr	r0, .L81+80
	ldr	r4, .L81+84
	str	r3, [sp, #16]
	bl	pout
	mov	r3, #0
	str	r3, [sp, #184]
	str	r4, [sp, #188]
	bl	dtime
	mov	r7, r0
	mov	r8, r1
	mov	r9, r8
	ldr	r6, [sp, #108]
	mov	r8, r7
	ldr	r7, [sp, #72]
	mov	r5, #0
	add	r1, sp, #184
	ldmia	r1, {r0-r1}
.L66:
	cmp	r6, #0
	movgt	r4, #0
	ble	.L70
.L67:
	bl	log
	ldr	r2, .L81+24
	ldr	r3, .L81+28
	bl	__aeabi_dmul
	add	r4, r4, #1
	bl	exp
	cmp	r4, r6
	bne	.L67
.L70:
	add	r5, r5, #1
	cmp	r5, r7
	bne	.L66
	str	r0, [sp, #184]
	str	r1, [sp, #188]
	mov	r7, r8
	mov	r8, r9
.L71:
	bl	dtime
	ldr	r6, [sp, #108]
	mov	r4, r0
	mov	r0, r6, asl #2
	mov	r5, r1
	bl	__aeabi_i2f
	mov	r1, r0
	ldr	r0, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r2, r7
	mov	r6, r0
	mov	r3, r8
	mov	r0, r4
	mov	r1, r5
	add	r5, sp, #184
	ldmia	r5, {r4-r5}
	stmia	sp, {r4-r5}
	bl	__aeabi_dsub
	ldr	r7, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r3, #8
	mov	r1, r6
	ldr	r0, .L81+32
	mov	r2, #2
	str	r7, [sp, #16]
	str	r3, [sp, #20]
	bl	pout
	add	sp, sp, #196
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	.LANCHOR0
	.word	-1074790400
	.word	1071644670
	.word	-208632331
	.word	1075314688
	.word	-2043167482
	.word	-208630080
	.word	1072693246
	.word	.LANCHOR1+140
	.word	1069128089
	.word	-1717986918
	.word	.LANCHOR1
	.word	.LANCHOR1+20
	.word	.LANCHOR1+40
	.word	.LANCHOR1+60
	.word	1071644672
	.word	.LANCHOR1+80
	.word	.LANCHOR1+100
	.word	1072693248
	.word	1074266112
	.word	.LANCHOR1+120
	.word	1072168960
.L30:
	bl	dtime
	mov	r5, r0
	ldr	r0, [sp, #72]
	mov	r6, r1
	bl	__aeabi_i2f
	str	r0, [sp, #80]	@ float
	mov	r0, r4, asl #6
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	add	r3, sp, #112
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r1, r6
	mov	r0, r5
	add	r6, sp, #160
	ldmia	r6, {r5-r6}
	stmia	sp, {r5-r6}
	bl	__aeabi_dsub
	ldr	r3, .L81+36
	ldr	r2, .L81+40
	bl	__aeabi_dmul
	mov	r5, #1
	ldr	r8, [sp, #84]
	mov	r2, r5
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r1, r4
	ldr	r0, .L81+44
	str	r8, [sp, #16]
	str	r5, [sp, #20]
	bl	pout
	bl	dtime
	mov	r6, r0
	mov	r7, r1
	bl	dtime
	mov	sl, r0
	mov	r0, #96
	mul	r0, r9, r0
	mov	fp, r1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r3, r7
	mov	r4, r0
	mov	r2, r6
	mov	r0, sl
	mov	r1, fp
	add	r7, sp, #160
	ldmia	r7, {r6-r7}
	stmia	sp, {r6-r7}
	bl	__aeabi_dsub
	mov	r2, r5
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r1, r4
	ldr	r0, .L81+48
	mov	r4, #2
	str	r8, [sp, #16]
	str	r4, [sp, #20]
	bl	pout
	bl	dtime
	mov	r7, r0
	mov	r8, r1
	bl	dtime
	mov	sl, r0
	ldr	r0, [sp, #76]
	mov	r6, #3
	mul	r0, r6, r0
	mov	fp, r1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r3, r8
	ldr	r8, .L81+72
	mov	r9, r0
	mov	r2, r7
	mov	r0, sl
	mov	r1, fp
	mov	r7, #0
	stmia	sp, {r7-r8}
	bl	__aeabi_dsub
	ldr	r8, [sp, #84]
	mov	r2, r4
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r1, r9
	ldr	r0, .L81+52
	str	r8, [sp, #16]
	str	r6, [sp, #20]
	bl	pout
	bl	dtime
	mov	sl, r0
	mov	fp, r1
	bl	dtime
	add	r3, sp, #144
	ldmia	r3, {r2-r3}
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	add	r1, sp, #136
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	ip, [sp, #56]
	mov	r7, r0
	mov	r0, #15
	mul	r0, ip, r0
	mov	r8, r1
	str	r7, [sp, #184]
	str	r8, [sp, #188]
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r2, sl
	mov	r9, r0
	mov	r3, fp
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	stmia	sp, {r7-r8}
	bl	__aeabi_dsub
	mov	r3, #4
	str	r3, [sp, #20]
	ldr	r3, [sp, #84]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r2, r4
	mov	r1, r9
	ldr	r0, .L81+56
	str	r3, [sp, #16]
	bl	pout
	ldr	r3, .L81+60
	mov	r2, #0
	str	r2, [sp, #176]
	str	r3, [sp, #180]
	str	r2, [sp, #184]
	str	r3, [sp, #188]
	bl	dtime
	mov	sl, r0
	mov	fp, r1
	bl	dtime
	ldr	r7, [sp, #68]
	mov	r8, r0
	mov	r0, #26
	mul	r0, r7, r0
	mov	r9, r1
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r2, sl
	mov	r7, r0
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
	add	r9, sp, #176
	ldmia	r9, {r8-r9}
	stmia	sp, {r8-r9}
	bl	__aeabi_dsub
	ldr	r8, [sp, #84]
	mov	r3, #5
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r2, r4
	mov	r1, r7
	ldr	r0, .L81+64
	str	r3, [sp, #20]
	str	r8, [sp, #16]
	bl	pout
	ldr	r2, .L81+72
	mov	r1, #0
	str	r1, [sp, #184]
	str	r2, [sp, #188]
	str	r1, [sp, #176]
	str	r2, [sp, #180]
	str	r1, [sp, #168]
	str	r2, [sp, #172]
	bl	dtime
	mov	r8, r0
	mov	r9, r1
	bl	dtime
	mov	fp, r0
	ldr	r0, [sp, #104]
	mov	r7, #6
	mul	r0, r7, r0
	str	r1, [sp, #28]
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	ldr	ip, [sp, #28]
	mov	sl, r0
	mov	r1, ip
	mov	r2, r8
	mov	r3, r9
	mov	r0, fp
	add	r9, sp, #168
	ldmia	r9, {r8-r9}
	stmia	sp, {r8-r9}
	bl	__aeabi_dsub
	ldr	r3, [sp, #84]
	mov	r2, r5
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r1, sl
	ldr	r0, .L81+68
	str	r7, [sp, #20]
	str	r3, [sp, #16]
	bl	pout
	mov	r2, #0
	mov	r3, #1073741824
	str	r2, [sp, #144]
	str	r3, [sp, #148]
	ldr	r8, .L81+72
	ldr	r3, .L81+76
	mov	r2, #0
	mov	r7, #0
	str	r2, [sp, #152]
	str	r3, [sp, #156]
	str	r7, [sp, #136]
	str	r8, [sp, #140]
	bl	dtime
	mov	r7, r0
	mov	r8, r1
	bl	dtime
	mov	sl, r0
	ldr	r0, [sp, #100]
	mov	fp, r1
	mul	r0, r6, r0
	bl	__aeabi_i2f
	ldr	r1, [sp, #80]	@ float
	bl	__aeabi_fmul
	mov	r2, r7
	mov	r3, r8
	mov	r5, r0
	mov	r1, fp
	mov	r0, sl
	add	r7, sp, #152
	ldmia	r7, {r6-r7}
	stmia	sp, {r6-r7}
	bl	__aeabi_dsub
	ldr	r8, [sp, #84]
	mov	r2, r4
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r3, #7
	mov	r1, r5
	ldr	r0, .L81+80
	ldr	r4, .L81+84
	str	r3, [sp, #20]
	str	r8, [sp, #16]
	bl	pout
	mov	r3, #0
	str	r3, [sp, #184]
	str	r4, [sp, #188]
	bl	dtime
	mov	r7, r0
	mov	r8, r1
	b	.L71
	.size	whetstones, .-whetstones
	.global	__aeabi_d2iz
	.global	__aeabi_dcmpeq
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
	ldr	r0, .L101
	sub	sp, sp, #8
	bl	puts
	mov	r4, #1
	ldr	r5, .L101+4
	mov	r6, r4
	mov	sl, #0
	mov	fp, #0
.L85:
	mov	r2, r6
	mov	r0, r4
	mov	r1, #100
	str	sl, [r5, #248]
	str	fp, [r5, #252]
	bl	whetstones
	add	r8, r5, #248
	ldmia	r8, {r7-r8}
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r2, r7
	mov	r3, r8
	stmia	sp, {r0-r1}
	ldr	r0, .L101+8
	bl	printf
	add	r8, r5, #248
	ldmia	r8, {r7-r8}
	mov	r2, #0
	ldr	r3, .L101+12
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	add	r6, r6, #1
	beq	.L99
.L84:
	mov	r0, r7
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.L86
	add	r4, r4, r4, asl #2
	mov	r0, r4, asl #1
	bl	__aeabi_i2d
	mov	r2, r7
	mov	r3, r8
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	cmp	r0, #1
	movge	r4, r0
	movlt	r4, #1
.L86:
	mov	r1, r4
	ldr	r0, .L101+16
	bl	printf
	ldr	r1, .L101+20
	ldr	r0, .L101+24
	bl	printf
	mov	r0, #10
	bl	putchar
	ldr	r0, .L101+28
	bl	puts
	mov	sl, #0
	mov	r1, #100
	mov	r2, #0
	mov	fp, #0
	mov	r0, r4
	str	sl, [r5, #248]
	str	fp, [r5, #252]
	bl	whetstones
	ldr	r0, .L101+32
	bl	printf
	add	r7, r5, #248
	ldmia	r7, {r6-r7}
	mov	r2, sl
	mov	r3, fp
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	ldr	r8, .L101+4
	beq	.L98
	mov	r0, r4
	bl	__aeabi_i2f
	ldr	r1, .L101+36
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, #0
	mov	sl, r0
	mov	fp, r1
	ldr	r3, .L101+40
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	str	r2, [r8, #472]
	str	r3, [r8, #476]
.L90:
	ldr	r0, .L101+44
	stmia	sp, {r6-r7}
	bl	printf
	ldmia	r5, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.L100
.L91:
	ldr	r4, .L101+48
	ldr	r1, .L101+52
	add	r3, r5, #472
	ldmia	r3, {r2-r3}
	ldr	r0, [r4, #0]
	bl	fprintf
	add	r3, r5, #248
	ldmia	r3, {r2-r3}
	ldr	r0, [r4, #0]
	ldr	r1, .L101+56
	bl	fprintf
	mov	r0, #0
	bl	exit
.L99:
	cmp	r6, #11
	add	r4, r4, r4, asl #2
	bne	.L85
	b	.L84
.L100:
	ldr	r0, .L101+60
	bl	printf
	b	.L91
.L98:
	str	sl, [r8, #472]
	str	fp, [r8, #476]
	mov	r2, sl
	mov	r3, fp
	b	.L90
.L102:
	.align	2
.L101:
	.word	.LC11
	.word	.LANCHOR0
	.word	.LC12
	.word	1071644672
	.word	.LC13
	.word	.LC15
	.word	.LC14
	.word	.LC16
	.word	.LC17
	.word	1120403456
	.word	1076101120
	.word	.LC18
	.word	stderr
	.word	.LC20
	.word	.LC21
	.word	.LC19
	.size	main, .-main
	.comm	rusage,72,4
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
.LC3:
	.ascii	"N1 floating point\000\000"
	.space	1
.LC4:
	.ascii	"N2 floating point\000\000"
	.space	1
.LC5:
	.ascii	"N3 if then else  \000\000"
	.space	1
.LC6:
	.ascii	"N4 fixed point   \000\000"
	.space	1
.LC7:
	.ascii	"N5 sin,cos etc.  \000\000"
	.space	1
.LC8:
	.ascii	"N6 floating point\000\000"
	.space	1
.LC9:
	.ascii	"N7 assignments   \000\000"
	.space	1
.LC10:
	.ascii	"N8 exp,sqrt etc. \000\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s %24.17f    \000"
	.space	1
.LC1:
	.ascii	" %9.3f          %9.3f\012\000"
	.space	1
.LC2:
	.ascii	"           %9.3f%9.3f\012\000"
	.space	1
.LC11:
	.ascii	"Calibrate\000"
	.space	2
.LC12:
	.ascii	"%11.2f Seconds %10.0f   Passes (x 100)\012\000"
.LC13:
	.ascii	"\012Use %ld  passes (x 100)\012\000"
	.space	2
.LC14:
	.ascii	"\012          %s Precision C/C++ Whetstone Benchmar"
	.ascii	"k\000"
	.space	2
.LC15:
	.ascii	"Double\000"
	.space	1
.LC16:
	.ascii	"\012Loop content                  Result           "
	.ascii	"   MFLOPS      MOPS   Seconds\012\000"
	.space	1
.LC17:
	.ascii	"\012MWIPS            \000"
	.space	1
.LC18:
	.ascii	"%39.3f%19.3f\012\012\000"
	.space	1
.LC19:
	.ascii	"Wrong answer  \000"
	.space	1
.LC20:
	.ascii	"COUNT|%.3f|0|MWIPS\012\000"
.LC21:
	.ascii	"TIME|%.3f\012\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
	.type	Check, %object
	.size	Check, 8
Check:
	.space	8
	.type	loop_time, %object
	.size	loop_time, 72
loop_time:
	.space	72
	.type	headings, %object
	.size	headings, 162
headings:
	.space	162
	.space	6
	.type	TimeUsed, %object
	.size	TimeUsed, 8
TimeUsed:
	.space	8
	.type	results, %object
	.size	results, 72
results:
	.space	72
	.type	loop_mops, %object
	.size	loop_mops, 72
loop_mops:
	.space	72
	.type	loop_mflops, %object
	.size	loop_mflops, 72
loop_mflops:
	.space	72
	.type	mwips, %object
	.size	mwips, 8
mwips:
	.space	8
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
