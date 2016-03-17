	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"execl.c"
	.text
	.align	2
	.global	pipeerr
	.type	pipeerr, %function
pipeerr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	ldr	r2, [r3, #0]
	add	r2, r2, #1
	str	r2, [r3, #0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	sigpipe
	.size	pipeerr, .-pipeerr
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	cmp	r0, #1
	sub	sp, sp, #324
	mov	r5, r1
	ble	.L15
	ldr	r0, [r1, #4]
	mov	r2, #10
	mov	r1, #0
	bl	strtol
	subs	r7, r0, #0
	ble	.L7
	ldr	r0, .L16
	ldr	r8, [r5, #4]
	bl	getenv
	subs	r2, r0, #0
	addeq	r4, sp, #20
	addne	r4, sp, #20
	movne	r0, r4
	ldrne	r1, .L16+4
	blne	sprintf
.L8:
	add	r0, sp, #316
	bl	time
	mov	sl, r4
	mov	r4, #1
.L9:
	add	r6, sp, #300
	ldr	r1, .L16+8
	mov	r2, r4
	mov	r0, r6
	add	r5, sp, #276
	bl	sprintf
	ldr	r2, [sp, #316]
	ldr	r1, .L16+8
	mov	r0, r5
	bl	sprintf
	add	r0, sp, #312
	bl	time
	ldr	r3, [sp, #316]
	ldr	r2, [sp, #312]
	rsb	r3, r3, r2
	cmp	r7, r3
	bgt	.L10
	ldr	r3, .L16+12
	mov	r2, r4
	ldr	r0, [r3, #0]
	ldr	r1, .L16+16
	bl	fprintf
	mov	r0, #0
	bl	exit
.L10:
	mov	ip, #0
	mov	r3, r8
	mov	r1, sl
	ldr	r2, .L16+20
	mov	r0, sl
	str	ip, [sp, #8]
	str	r6, [sp, #0]
	str	r5, [sp, #4]
	bl	execl
	ldr	r3, .L16+12
	mov	r2, r4
	ldr	r0, [r3, #0]
	ldr	r1, .L16+24
	bl	fprintf
	ldr	r0, .L16+28
	bl	perror
	mov	r0, #1
	bl	exit
.L15:
	ldr	r3, .L16+12
	ldr	r2, [r1, #0]
	ldr	r0, [r3, #0]
	ldr	r1, .L16+32
	bl	fprintf
	mov	r0, #1
	bl	exit
.L7:
	mov	r1, #0
	mov	r2, #10
	ldr	r0, [r5, #8]
	bl	strtol
	mov	r1, #0
	mov	r2, #10
	mov	r7, r0
	ldr	r0, [r5, #12]
	ldr	r8, [r5, #8]
	bl	strtol
	ldr	r1, .L16+8
	mov	r4, r0
	add	r2, sp, #316
	ldr	r0, [r5, #16]
	bl	sscanf
	add	r4, r4, #1
	ldr	sl, [r5, #0]
	b	.L9
.L17:
	.align	2
.L16:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	stderr
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC0
	.size	main, .-main
	.align	2
	.global	fatal
	.type	fatal, %function
fatal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r7, .L24
	mov	r1, r0
	ldr	r0, [r7, #0]
	bl	fprintf
	ldr	r0, [r7, #0]
	bl	fflush
	ldr	r6, .L24+4
	ldr	r0, .L24+8
	bl	perror
	ldr	r0, [r7, #0]
	bl	fflush
	ldr	r3, [r6, #0]
	cmp	r3, #0
	ble	.L19
	ldr	r4, .L24+12
	mov	r5, #0
.L21:
	ldr	r3, [r4, #16]
	mov	r1, #9
	subs	r0, r3, #0
	add	r5, r5, #1
	ble	.L20
	bl	kill
	cmn	r0, #1
	ldr	r1, .L24+16
	beq	.L20
	ldr	r2, [r4, #16]
	ldr	r0, [r7, #0]
	bl	fprintf
	ldr	r0, [r7, #0]
	bl	fflush
.L20:
	ldr	r3, [r6, #0]
	add	r4, r4, #32
	cmp	r3, r5
	bgt	.L21
.L19:
	ldr	r3, .L24+20
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	stderr
	.word	nusers
	.word	.LC8
	.word	child
	.word	.LC9
	.word	.LANCHOR0
	.size	fatal, .-fatal
	.align	2
	.global	wrapup
	.type	wrapup, %function
wrapup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r7, .L33
	ldr	r6, .L33+4
	sub	sp, sp, #8
	mov	sl, r0
	ldr	r0, [r7, #0]
	bl	fflush
	ldr	r3, [r6, #0]
	cmp	r3, #0
	ble	.L27
	mov	r9, #0
	ldr	r4, .L33+8
	ldr	r8, .L33+12
	mov	r5, r9
	b	.L30
.L29:
	ldr	r2, [r8, #0]
	ldr	ip, [r4, #16]
	ldr	r3, [r4, #28]
	add	r2, r5, r2
	ldr	r1, .L33+16
	ldr	r0, [r7, #0]
	str	ip, [sp, #0]
	bl	fprintf
	ldr	r0, [r7, #0]
	bl	fflush
	mov	r9, #1
.L28:
	ldr	r3, [r6, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #32
	ble	.L27
.L30:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	ble	.L28
	mov	r1, #9
	bl	kill
	cmn	r0, #1
	beq	.L28
	cmp	r9, #0
	bne	.L29
	ldr	r0, [r7, #0]
	ldr	r1, .L33+20
	mov	r2, sl
	bl	fprintf
	ldr	r0, [r7, #0]
	bl	fflush
	b	.L29
.L27:
	ldr	r3, .L33+24
	ldr	r0, [r3, #0]
	bl	exit
.L34:
	.align	2
.L33:
	.word	stderr
	.word	nusers
	.word	child
	.word	firstuser
	.word	.LC11
	.word	.LC10
	.word	.LANCHOR0
	.size	wrapup, .-wrapup
	.align	2
	.global	grunt
	.type	grunt, %function
grunt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L37
	ldr	r0, .L37+4
	mov	r2, #4
	str	r2, [r3, #0]
	b	wrapup
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	.LC12
	.size	grunt, .-grunt
	.align	2
	.global	getwork
	.type	getwork, %function
getwork:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L85
	sub	sp, sp, #524
	add	r0, sp, #8
	mov	r1, #512
	ldr	r2, [r3, #0]
	bl	fgets
	cmp	r0, #0
	mov	r9, #0
	beq	.L80
.L69:
	ldr	r1, .L85+4
	ldr	r7, [r1, #4]
	cmp	r7, #9
	bgt	.L81
	ldrb	r8, [sp, #8]	@ zero_extendqisi2
	ldr	r6, .L85+8
	cmp	r8, #32
	cmpne	r8, #0
	add	r7, r7, r7, asl #2
	moveq	r8, #0
	movne	r8, #1
	add	r4, r6, r7, asl #2
	moveq	sl, r8
	moveq	r0, #1
	addeq	r5, sp, #8
	beq	.L43
	add	r5, sp, #8
	mov	r0, #1
.L44:
	ldrb	r3, [r5, #1]!	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r3, #32
	cmpne	r3, #0
	bne	.L44
	sub	sl, r0, #1
	mov	r8, sl
.L43:
	bl	malloc
	mov	r2, sl
	add	r1, sp, #8
	str	r0, [r6, r7, asl #2]
	bl	strncpy
	ldr	r3, [r6, r7, asl #2]
	mov	r0, #8
	strb	r9, [r3, r8]
	ldr	r3, .L85+12
	str	r9, [r4, #12]
	str	r3, [r4, #8]
	bl	malloc
	ldr	r1, [r6, r7, asl #2]
	str	r0, [r4, #4]
	ldrb	r3, [r1, #0]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r2, r1
	beq	.L46
	mov	r2, r1
.L47:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L47
.L46:
	sub	r3, r2, #1
	cmp	r1, r3
	bhi	.L48
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #47
	bne	.L71
	b	.L49
.L51:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	cmp	r2, #47
	beq	.L49
.L71:
	sub	r3, r3, #1
	cmp	r1, r3
	bls	.L51
.L48:
	str	r3, [r0, #0]
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	mov	sl, #2
	cmp	r3, #0
	beq	.L82
.L68:
	cmp	r3, #32
	addeq	r7, r5, #1
	beq	.L54
	cmp	r3, #60
	bne	.L55
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	add	r5, r5, #1
	cmp	r3, #32
	cmpne	r3, #0
	moveq	r7, r5
	beq	.L57
	mov	r7, r5
.L58:
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2
	cmp	r3, #32
	cmpne	r3, #0
	bne	.L58
.L57:
	strb	r9, [r7, #0]
	mov	r0, r5
	mov	r1, #0
	bl	open
	cmn	r0, #1
	mov	r6, r0
	beq	.L83
	mov	r0, #512
	bl	malloc
	mov	r3, r0
	str	r0, [r4, #8]
	b	.L60
.L61:
	ldr	r2, [r4, #12]
	ldr	r0, [r4, #8]
	add	r3, r3, r2
	add	r1, r3, #512
	str	r3, [r4, #12]
	bl	realloc
	mov	r3, r0
	str	r0, [r4, #8]
.L60:
	ldr	r1, [r4, #12]
	mov	r0, r6
	add	r1, r3, r1
	mov	r2, #512
	bl	read
	subs	r3, r0, #0
	bgt	.L61
	ldr	r1, [r4, #12]
	ldr	r0, [r4, #8]
	bl	realloc
	str	r0, [r4, #8]
	mov	r0, r6
	bl	close
	ldr	r8, [r4, #12]
	ldr	r6, [r4, #8]
	sub	r8, r8, #10
	add	r8, r6, r8
	ldr	r1, .L85+12
	cmp	r6, r8
	str	r1, [r4, #16]
	bcc	.L77
	b	.L54
.L63:
	cmp	r8, r5
	bls	.L54
	mov	r6, r5
.L77:
	ldrb	r3, [r6, #0]	@ zero_extendqisi2
	cmp	r3, #10
	addne	r5, r6, #1
	bne	.L63
	add	r5, r6, #1
	mov	r0, r5
	ldr	r1, .L85+16
	mov	r2, #2
	bl	strncmp
	cmp	r0, #0
	bne	.L63
	add	r6, r6, #3
	str	r6, [r4, #16]
.L54:
	mov	r5, r7
.L84:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L68
.L82:
	ldr	r1, .L85+4
	sub	sl, sl, #1
	ldr	r2, [r1, #4]
	ldr	r1, [r4, #4]
	add	r2, r2, #1
	str	r3, [r1, sl, asl #2]
	ldr	r3, .L85+4
	add	r0, sp, #8
	str	r2, [r3, #4]
	ldr	r3, .L85
	mov	r1, #512
	ldr	r2, [r3, #0]
	bl	fgets
	cmp	r0, #0
	bne	.L69
.L80:
	add	sp, sp, #524
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L55:
	add	sl, sl, #1
	ldr	r0, [r4, #4]
	mov	r1, sl, asl #2
	bl	realloc
	str	r0, [r4, #4]
	ldrb	r8, [r5, #0]	@ zero_extendqisi2
	mov	r3, r0
	cmp	r8, #32
	cmpne	r8, #0
	moveq	r8, #0
	movne	r8, #1
	moveq	r7, r5
	moveq	fp, r8
	moveq	r0, #1
	beq	.L66
	mov	r7, r5
	mov	r0, #1
.L67:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r2, #32
	cmpne	r2, #0
	bne	.L67
	sub	fp, r0, #1
	mov	r8, fp
.L66:
	str	r3, [sp, #4]
	bl	malloc
	ldr	r3, [sp, #4]
	sub	r6, sl, #2
	ldr	r2, [r4, #4]
	str	r0, [r3, r6, asl #2]
	ldr	r0, [r2, r6, asl #2]
	mov	r1, r5
	mov	r2, fp
	bl	strncpy
	ldr	r3, [r4, #4]
	mov	r5, r7
	ldr	r3, [r3, r6, asl #2]
	strb	r9, [r3, r8]
	b	.L84
.L49:
	add	r3, r3, #1
	b	.L48
.L81:
	ldr	r3, .L85+20
	ldr	r0, .L85+24
	ldr	r3, [r3, #0]
	mov	r1, #1
	mov	r2, #45
	bl	fwrite
	mov	r0, #4
	bl	exit
.L83:
	ldr	r3, .L85+20
	mov	r2, r5
	ldr	r0, [r3, #0]
	ldr	r3, .L85+4
	ldr	r1, .L85+28
	ldr	r3, [r3, #4]
	bl	fprintf
	mov	r0, #4
	bl	exit
.L86:
	.align	2
.L85:
	.word	stdin
	.word	.LANCHOR0
	.word	work
	.word	.LC14
	.word	.LC16
	.word	stderr
	.word	.LC13
	.word	.LC15
	.size	getwork, .-getwork
	.global	__aeabi_fadd
	.align	2
	.global	onalarm
	.type	onalarm, %function
onalarm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L89
	ldr	r4, .L89+4
	ldr	r0, [r3, #0]	@ float
	ldr	r1, [r4, #0]	@ float
	bl	__aeabi_fadd
	ldr	r1, .L89+8
	str	r0, [r4, #0]	@ float
	mov	r0, #14
	bl	__sysv_signal
	mov	r0, #5
	bl	alarm
	ldmfd	sp!, {r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	.LANCHOR1
	.word	thres
	.word	onalarm
	.size	onalarm, .-onalarm
	.global	__aeabi_i2f
	.global	__aeabi_fcmple
	.global	__aeabi_fmul
	.global	__aeabi_fcmplt
	.align	2
	.global	dummy
	.type	dummy, %function
dummy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L209
	mov	r8, r0
	mov	r5, r1
	sub	sp, sp, #68
	ldr	r0, .L209+4
	ldr	r1, .L209+8
	ldr	r2, [r4, #0]
	bl	freopen
	cmp	r8, #1
	ldr	r9, [r5, #0]
	ble	.L92
	ldr	r7, [r5, #4]
	add	r5, r5, #4
	ldrb	r3, [r7, #0]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L93
	mov	r1, #0
	ldr	sl, .L209+12
	str	r1, [sp, #20]
	b	.L104
.L94:
	cmp	r2, #1
	ble	.L92
.L191:
	ldr	r7, [r5, #4]!
	ldrb	r3, [r7, #0]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L103
	mov	r8, r2
.L104:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	sub	r2, r8, #1
	cmp	r3, #0
	beq	.L94
	sub	r8, r8, #2
	add	r6, r5, #4
.L102:
	cmp	r3, #99
	beq	.L96
	cmp	r3, #114
	beq	.L189
	ldr	r0, [r4, #0]
	mov	r2, r9
	ldr	r1, .L209+16
	bl	fprintf
	mov	r0, #4
	bl	exit
.L96:
	ldr	r0, [r6, #0]
	mov	r1, #1
	bl	open
	cmp	r0, #0
	str	r0, [sp, #20]
	mov	r5, r6
	blt	.L190
.L101:
	ldr	r0, [sp, #20]
	mov	r1, #0
	mov	r2, #2
	bl	lseek
.L186:
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	mov	r2, r8
	cmp	r3, #0
	sub	r8, r8, #1
	add	r6, r6, #4
	add	r7, r7, #1
	bne	.L102
	cmp	r2, #1
	bgt	.L191
.L92:
	ldr	r0, [r4, #0]
	mov	r2, r9
	ldr	r1, .L209+20
	bl	fprintf
	mov	r0, #4
	bl	exit
.L189:
	mov	r1, #0
	mov	r2, #10
	ldr	r0, [r6, #0]
	bl	strtol
	bl	__aeabi_i2f
	ldr	r1, .L209+24
	str	r0, [sl, #0]	@ float
	ldr	r2, .L209+12
	ldr	r0, [r6, #0]
	bl	sscanf
	ldr	r0, [sl, #0]	@ float
	mov	r1, #0
	bl	__aeabi_fcmple
	cmp	r0, #0
	mov	r5, r6
	beq	.L186
	ldr	ip, .L209+28
	ldr	r0, [r4, #0]
	ldr	r1, .L209+32
	mov	r2, r9
	mov	fp, #0
	stmia	sp, {fp-ip}
	bl	fprintf
	ldr	ip, .L209+36
	str	ip, [sl, #0]	@ float
	b	.L186
.L93:
	mov	r2, #0
	str	r2, [sp, #20]
.L103:
	mov	r0, r7
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	ldr	r7, .L209+40
	cmp	r0, #0
	mov	r3, r0
	str	r0, [r7, #0]
	ble	.L192
	mov	r2, r3
	ldr	r1, .L209+44
	ldr	r0, [r4, #0]
	ldr	r9, .L209+48
	bl	fprintf
	bl	getwork
	mov	r3, #12
	str	r3, [r9, #0]
	ldr	r5, [r4, #0]
	bl	getpid
	ldr	r1, .L209+52
	mov	r2, r0
	mov	r0, r5
	bl	fprintf
	ldr	r0, [r4, #0]
	bl	fflush
	ldr	r3, [r7, #0]
	cmp	r3, #12
	ble	.L105
.L169:
	ldr	r0, [r4, #0]
	bl	fflush
	ldr	r5, [r7, #0]
	cmp	r5, #23
	movgt	r5, #12
	suble	r5, r5, #12
	bl	fork
	cmn	r0, #1
	str	r0, [sp, #60]
	beq	.L193
	cmp	r0, #0
	ble	.L110
	mov	r2, r0
	ldr	r1, .L209+56
	ldr	r0, [r4, #0]
	bl	fprintf
	ldr	r2, [r7, #0]
	ldr	r3, [r9, #0]
	rsb	r5, r5, r2
	add	r3, r3, #12
	cmp	r5, #12
	str	r3, [r9, #0]
	str	r5, [r7, #0]
	bgt	.L169
.L105:
	mov	r3, #0
	str	r3, [r9, #0]
	b	.L162
.L110:
	ldr	r3, [r9, #0]
	ldr	r0, .L209+60
	mov	r2, r3, asr #31
	smull	lr, r1, r0, r3
	add	r6, sp, #36
	rsb	r2, r2, r1, asr #1
	mov	r0, r6
	ldr	r1, .L209+64
	bl	sprintf
	mov	r0, r6
	ldr	r1, .L209+68
	ldr	r2, [r4, #0]
	bl	freopen
	str	r5, [r7, #0]
.L162:
	mov	r0, #0
	bl	close
	ldr	r3, [r7, #0]
	cmp	r3, #0
	ble	.L112
	mov	r5, #0
	ldr	r6, .L209+72
	ldr	fp, .L209
	mov	sl, r5
	b	.L125
.L122:
	mov	r0, #10
	ldr	r1, [r4, #0]
	bl	fputc
	ldr	lr, .L209+76
	add	r5, r5, #1
	ldr	r2, [lr, #4]
	ldr	r3, [r7, #0]
	cmp	r5, r2
	add	sl, sl, #1
	movge	r5, #0
	cmp	r3, sl
	add	r6, r6, #32
	ble	.L112
.L125:
	ldr	r2, [r9, #0]
	ldr	r1, .L209+80
	add	r2, sl, r2
	mov	r3, r5
	ldr	r0, [r4, #0]
	bl	fprintf
	add	r0, sp, #52
	bl	pipe
	cmn	r0, #1
	beq	.L194
	ldr	r0, [fp, #0]
	bl	fflush
	bl	fork
	cmp	r0, #0
	str	r0, [r6, #16]
	beq	.L195
	cmn	r0, #1
	beq	.L196
	ldr	r0, [sp, #52]
	bl	close
	ldr	r1, .L209+84
	add	r8, r5, r5, asl #2
	add	r8, r1, r8, asl #2
	ldr	lr, [r8, #8]
	ldr	ip, [sp, #56]
	str	lr, [r6, #20]
	mov	r3, ip
	ldr	lr, [r8, #12]
	str	ip, [r6, #12]
	ldr	ip, [r8, #8]
	ldr	r0, [fp, #0]
	ldr	r1, .L209+88
	ldr	r2, [r6, #16]
	stmib	r6, {ip, lr}	@ phole stm
	str	r5, [r6, #28]
	str	r5, [r6, #24]
	bl	fprintf
	ldr	r3, [r8, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L122
	ldr	r0, .L209+92
	mov	r1, #1
	mov	r2, #3
	ldr	r3, [fp, #0]
	bl	fwrite
	ldr	r8, [r8, #16]
	ldrb	r0, [r8, #0]	@ zero_extendqisi2
	cmp	r0, #10
	beq	.L122
.L123:
	ldr	r1, [r4, #0]
	bl	fputc
	ldrb	r0, [r8, #1]!	@ zero_extendqisi2
	cmp	r0, #10
	bne	.L123
	b	.L122
.L190:
	ldr	r0, [r6, #0]
	mov	r1, #384
	bl	creat
	cmp	r0, #0
	str	r0, [sp, #20]
	bge	.L101
	ldr	r0, [r4, #0]
	mov	r2, r9
	ldr	r3, [r6, #0]
	ldr	r1, .L209+96
	bl	fprintf
	mov	r0, #2
	bl	exit
.L192:
	ldr	ip, [r5, #0]
	ldr	r0, [r4, #0]
	mov	r2, r9
	ldr	r1, .L209+100
	str	ip, [sp, #0]
	bl	fprintf
	mov	r0, #4
	bl	exit
.L194:
	ldr	r0, .L209+104
	bl	fatal
.L109:
	mov	r0, #0
	bl	alarm
	ldr	r1, .L209+108
	mov	r0, #14
	bl	__sysv_signal
	mov	r0, #1200
	bl	alarm
	ldr	fp, .L209+76
	ldr	r6, .L209+72
	add	r8, sp, #60
	mvn	sl, #0
.L182:
	mov	r0, r8
	bl	wait
	cmn	r0, #1
	mov	ip, r0
	beq	.L157
.L199:
	ldr	r1, [r7, #0]
	cmp	r1, #0
	ble	.L154
	ldr	r3, [r6, #16]
	cmp	r0, r3
	moveq	r5, #0
	beq	.L159
	ldr	r3, .L209+72
	mov	r5, #0
	b	.L149
.L153:
	ldr	r2, [r3, #48]
	add	r3, r3, #32
	cmp	ip, r2
	beq	.L159
.L149:
	add	r5, r5, #1
	cmp	r5, r1
	blt	.L153
.L154:
	mov	r2, ip
	ldr	r0, [r4, #0]
	ldr	r1, .L209+112
	bl	fprintf
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L164
	ands	r2, r3, #127
	bne	.L197
.L155:
	tst	r3, #65280
	bne	.L198
.L156:
	mov	r1, #4
	str	r1, [fp, #0]
.L164:
	ldr	r1, [r4, #0]
	mov	r0, #10
	bl	fputc
	mov	r0, r8
	bl	wait
	cmn	r0, #1
	mov	ip, r0
	bne	.L199
.L157:
	mov	r0, #0
	bl	alarm
	ldr	r0, .L209+116
	bl	wrapup
	mov	r0, #0
	bl	exit
.L159:
	ldr	r2, [r9, #0]
	add	r3, r6, r5, asl #5
	ldr	r3, [r3, #28]
	ldr	r0, [r4, #0]
	add	r2, r5, r2
	ldr	r1, .L209+120
	str	ip, [sp, #0]
	bl	fprintf
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L150
	ands	r2, r3, #127
	bne	.L200
.L151:
	tst	r3, #65280
	bne	.L201
.L152:
	mov	ip, #4
	str	ip, [fp, #0]
.L150:
	mov	r0, #10
	ldr	r1, [r4, #0]
	add	r5, r6, r5, asl #5
	bl	fputc
	str	sl, [r5, #16]
	b	.L182
.L201:
	mov	r3, r3, lsr #8
	and	r2, r3, #255
	ldr	r0, [r4, #0]
	ldr	r1, .L209+124
	bl	fprintf
	b	.L152
.L200:
	ldr	r3, .L209
	ldr	r1, .L209+128
	ldr	r0, [r3, #0]
	bl	fprintf
	ldr	r3, [sp, #60]
	b	.L151
.L198:
	mov	r3, r3, lsr #8
	and	r2, r3, #255
	ldr	r0, [r4, #0]
	ldr	r1, .L209+124
	bl	fprintf
	b	.L156
.L197:
	ldr	lr, .L209
	ldr	r1, .L209+128
	ldr	r0, [lr, #0]
	bl	fprintf
	ldr	r3, [sp, #60]
	b	.L155
.L112:
	ldr	r0, [r4, #0]
	bl	fflush
	mov	r0, #0
	bl	time
	bl	srand
	ldr	fp, [r7, #0]
	ldr	r1, .L209+132
	mov	r6, #0
	cmp	fp, #0
	str	r6, [r1, #0]	@ float
	ble	.L202
	ldr	sl, .L209+12
	ldr	r1, .L209+36
	ldr	r0, [sl, #0]	@ float
	bl	__aeabi_fmul
	ldr	r5, .L209+72
	mov	r1, r6
	mov	r2, #0
	mov	r8, r0
	add	r6, r5, fp, asl #5
	str	r2, [sp, #28]
	mov	r0, r1
	mov	fp, r2
	b	.L131
.L203:
	mov	r1, r0
.L131:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	addeq	fp, fp, #1
	moveq	r0, r1
	movne	r1, r8
	blne	__aeabi_fadd
.L129:
	add	r5, r5, #32
	cmp	r5, r6
	bne	.L203
	str	fp, [sp, #28]
	ldr	fp, .L209+132
	mov	r3, r0
	str	r0, [fp, #0]	@ float
.L127:
	str	r3, [sl, #0]	@ float
	ldr	r1, .L209+136
	mov	r0, #14
	bl	__sysv_signal
	ldr	r1, .L209+140
	mov	r0, #13
	bl	__sysv_signal
	mov	r0, #5
	bl	alarm
	ldr	sl, .L209+144
	mov	ip, #0
	str	ip, [sp, #16]
.L181:
	ldr	r3, [r7, #0]
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bge	.L109
	cmp	r3, #0
	ble	.L147
	ldr	r8, .L209+72
	mov	fp, #0
	b	.L144
.L133:
	ldr	r3, [r7, #0]
	add	fp, fp, #1
	cmp	r3, fp
	add	r8, r8, #32
	ble	.L147
.L144:
	ldr	r2, [r8, #0]
	ldr	r3, [r8, #8]
	str	r8, [sl, #0]
	cmp	r2, r3
	bge	.L133
	bl	rand
	ldr	lr, .L209+148
	mov	r3, r0, asr #31
	smull	r1, r2, lr, r0
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #5
	mov	r2, r3, asl #6
	sub	r3, r2, r3, asl #2
	rsb	r3, r3, r0
	add	r3, r3, #1
	cmp	r3, #0
	str	r3, [sp, #60]
	beq	.L133
	ldr	r2, [sl, #0]
	ldr	r1, [r2, #0]
	ldr	r0, [r2, #8]
	add	ip, r3, r1
	cmp	ip, r0
	ldr	r6, [r2, #4]
	rsbgt	r3, r1, r0
	strgt	r3, [sp, #60]
	ldr	r1, [sl, #0]
	add	r3, r6, r3
	str	r3, [r2, #4]
	ldr	ip, [r1, #0]
	ldr	r0, [sp, #60]
	ldr	r3, [r1, #4]
	add	r0, ip, r0
	cmp	r3, r6
	mov	r2, r1
	str	r0, [r1, #0]
	bls	.L135
	add	r5, r6, #1
	str	r8, [sp, #24]
.L142:
	ldrb	r1, [r5, #-1]	@ zero_extendqisi2
	cmp	r1, #10
	beq	.L136
	sub	r3, r3, #1
	cmp	r6, r3
	beq	.L137
.L188:
	mov	r1, r5
.L138:
	ldr	r2, [sl, #0]
	add	r6, r6, #1
	ldr	r3, [r2, #4]
	add	r5, r5, #1
	cmp	r1, r3
	bcc	.L142
	ldr	r8, [sp, #24]
.L135:
	ldr	r1, [r2, #0]
	ldr	r3, [r2, #8]
	cmp	r1, r3
	bge	.L204
.L143:
	ldr	r3, [sp, #60]
	ldr	ip, [sp, #16]
	add	fp, fp, #1
	add	ip, ip, r3
	ldr	r3, [r7, #0]
	str	ip, [sp, #16]
	cmp	r3, fp
	add	r8, r8, #32
	bgt	.L144
.L147:
	ldr	r0, [sp, #16]
	bl	__aeabi_i2f
	ldr	lr, .L209+132
	mov	r1, r0
	mov	r5, r0
	ldr	r0, [lr, #0]	@ float
	bl	__aeabi_fcmplt
	cmp	r0, #0
	beq	.L181
.L168:
	bl	pause
	ldr	r1, .L209+132
	ldr	r0, [r1, #0]	@ float
	mov	r1, r5
	bl	__aeabi_fcmplt
	cmp	r0, #0
	beq	.L181
	b	.L168
.L137:
	ldr	r1, [r2, #0]
	ldr	r3, [r2, #8]
	cmp	r1, r3
	blt	.L188
.L136:
	ldr	r1, [r2, #20]
	ldr	r0, [r2, #12]
	rsb	r8, r1, #1
	add	r8, r8, r6
	mov	r2, r8
	bl	write
	cmp	r8, r0
	bne	.L205
	ldr	r1, [sp, #20]
	cmp	r1, #0
	bne	.L206
.L141:
	ldr	r3, [sl, #0]
	mov	r1, r5
	str	r5, [r3, #20]
	b	.L138
.L206:
	ldr	r3, [sl, #0]
	mov	r0, r1
	ldr	r1, [r3, #20]
	rsb	r2, r1, #1
	add	r2, r2, r6
	bl	write
	b	.L141
.L204:
	ldr	r0, [r2, #12]
	ldr	r2, [sp, #28]
	add	r2, r2, #1
	str	r2, [sp, #28]
	bl	close
	b	.L143
.L205:
	ldr	r2, .L209+144
	ldr	lr, .L209+144
	ldr	r3, [r2, #0]
	mov	r2, #0
	ldr	r3, [r3, #20]
	mov	r5, r0
	strb	r2, [r3, r8]
	ldr	r3, [lr, #0]
	ldr	r2, [r9, #0]
	ldr	r0, [r3, #20]
	ldr	r1, .L209+152
	str	r0, [sp, #0]
	add	r2, fp, r2
	ldr	r3, [r3, #28]
	ldr	r0, [r4, #0]
	str	r8, [sp, #12]
	bl	fprintf
	ldr	ip, [sp, #12]
	mov	r3, r5
	mov	r2, ip
	ldr	r0, [r4, #0]
	ldr	r1, .L209+156
	bl	fprintf
	ldr	r3, .L209+160
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L140
	ldr	r0, .L209+164
	bl	fatal
	b	.L109
.L196:
	ldr	r0, .L209+168
	bl	fatal
	b	.L109
.L195:
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L207
.L115:
	ldr	r2, [r9, #0]
	add	r6, sp, #36
	add	r2, sl, r2
	ldr	r1, .L209+172
	mov	r0, r6
	bl	sprintf
	mov	r0, r6
	ldr	r1, .L209+68
	ldr	r2, [r4, #0]
	bl	freopen
	mov	r6, #3
.L116:
	mov	r0, r6
	add	r6, r6, #1
	bl	close
	cmp	r6, #24
	bne	.L116
	ldr	r8, .L209+84
	mov	r2, #20
	mla	r3, r2, r5, r8
	ldr	r6, [r3, #16]
	ldrb	r3, [r6, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L187
.L117:
	mov	r3, #20
	mul	r2, r3, r5
	add	r3, r8, r2
	ldr	r0, [r8, r2]
	ldr	r1, [r3, #4]
	bl	execv
	ldr	r0, .L209+176
	bl	fatal
	b	.L109
.L167:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
.L187:
	cmp	r3, #10
	bne	.L167
	mov	r3, #20
	mla	sl, r3, r5, r8
	mov	r3, #0
	strb	r3, [r6, #0]
	ldr	r3, .L209+180
	ldr	r0, [sl, #16]
	ldr	r2, [r3, #0]
	ldr	r1, .L209+68
	bl	freopen
	cmp	r0, #0
	beq	.L208
.L120:
	mov	r3, #10
	strb	r3, [r6, #0]
	b	.L117
.L140:
	ldr	r0, .L209+184
	bl	fatal
	b	.L109
.L207:
	bl	close
	ldr	r0, [sp, #52]
	bl	dup
	b	.L115
.L193:
	ldr	r0, .L209+188
	bl	fatal
	b	.L109
.L202:
	mov	r3, r6
	mov	r6, #0
	str	r6, [sp, #28]
	ldr	sl, .L209+12
	b	.L127
.L208:
	ldr	r2, [sl, #16]
	ldr	r0, [r4, #0]
	ldr	r1, .L209+192
	bl	fprintf
	ldr	r0, [r4, #0]
	bl	fflush
	b	.L120
.L210:
	.align	2
.L209:
	.word	stderr
	.word	.LC17
	.word	.LC18
	.word	.LANCHOR1
	.word	.LC22
	.word	.LC23
	.word	.LC19
	.word	1075052544
	.word	.LC20
	.word	1084227584
	.word	nusers
	.word	.LC25
	.word	firstuser
	.word	.LC26
	.word	.LC28
	.word	715827883
	.word	.LC29
	.word	.LC30
	.word	child
	.word	.LANCHOR0
	.word	.LC31
	.word	work
	.word	.LC37
	.word	.LC38
	.word	.LC21
	.word	.LC24
	.word	.LC32
	.word	grunt
	.word	.LC47
	.word	.LC46
	.word	.LC43
	.word	.LC45
	.word	.LC44
	.word	thres
	.word	onalarm
	.word	pipeerr
	.word	cp
	.word	-2004318071
	.word	.LC39
	.word	.LC40
	.word	sigpipe
	.word	.LC41
	.word	.LC36
	.word	.LC33
	.word	.LC35
	.word	stdout
	.word	.LC42
	.word	.LC27
	.word	.LC34
	.size	dummy, .-dummy
	.global	SCCSid
	.global	est_rate
	.global	nwork
	.global	exit_status
	.comm	bss,8192,4
	.comm	thres,4,4
	.comm	nusers,4,4
	.comm	firstuser,4,4
	.comm	sigpipe,4,4
	.comm	work,200,4
	.comm	child,384,4
	.comm	cp,4,4
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	est_rate, %object
	.size	est_rate, 4
est_rate:
	.word	1084227584
	.type	SCCSid, %object
	.size	SCCSid, 41
SCCSid:
	.ascii	"@(#) @(#)execl.c:3.3 -- 5/15/91 19:30:19\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Usage: %s duration\012\000"
.LC1:
	.ascii	"UB_BINDIR\000"
	.space	2
.LC2:
	.ascii	"%s/execl\000"
	.space	3
.LC3:
	.ascii	"%lu\000"
.LC4:
	.ascii	"COUNT|%lu|1|lps\012\000"
	.space	3
.LC5:
	.ascii	"0\000"
	.space	2
.LC6:
	.ascii	"Exec failed at iteration %lu\012\000"
	.space	2
.LC7:
	.ascii	"Reason\000"
	.space	1
.LC8:
	.ascii	"Reason?\000"
.LC9:
	.ascii	"pid %d killed off\012\000"
	.space	1
.LC10:
	.ascii	"%s\012\000"
.LC11:
	.ascii	"user %d job %d pid %d killed off\012\000"
	.space	2
.LC12:
	.ascii	"Timed out waiting for jobs to finish ...\000"
	.space	3
.LC13:
	.ascii	"Too many jobs specified, .. increase MAXWORK\012\000"
	.space	2
.LC14:
	.ascii	"\000"
	.space	3
.LC15:
	.ascii	"cannot open input file (%s) for job %d\012\000"
.LC16:
	.ascii	"C=\000"
	.space	1
.LC17:
	.ascii	"masterlog.00\000"
	.space	3
.LC18:
	.ascii	"a\000"
	.space	2
.LC19:
	.ascii	"%f\000"
	.space	1
.LC20:
	.ascii	"%s: bad rate, reset to %.2f chars/sec\012\000"
	.space	1
.LC21:
	.ascii	"%s: cannot open copy file '%s'\012\000"
.LC22:
	.ascii	"%s: bad flag '%c'\012\000"
	.space	1
.LC23:
	.ascii	"%s: missing nusers\012\000"
.LC24:
	.ascii	"%s: impossible nusers (%d<-%s)\012\000"
.LC25:
	.ascii	"%d Users\012\000"
	.space	2
.LC26:
	.ascii	"master pid %d\012\000"
	.space	1
.LC27:
	.ascii	"** clone fork failed **\012\000"
	.space	3
.LC28:
	.ascii	"master clone pid %d\012\000"
	.space	3
.LC29:
	.ascii	"masterlog.%02d\000"
	.space	1
.LC30:
	.ascii	"w\000"
	.space	2
.LC31:
	.ascii	"user %d job %d \000"
.LC32:
	.ascii	"** pipe failed **\012\000"
	.space	1
.LC33:
	.ascii	"userlog.%02d\000"
	.space	3
.LC34:
	.ascii	"makework: cannot open %s for std output\012\000"
	.space	3
.LC35:
	.ascii	"** exec failed **\012\000"
	.space	1
.LC36:
	.ascii	"** fork failed **\012\000"
	.space	1
.LC37:
	.ascii	"pid %d pipe fd %d\000"
	.space	2
.LC38:
	.ascii	" > \000"
.LC39:
	.ascii	"user %d job %d cmd %s \000"
	.space	1
.LC40:
	.ascii	"write(,,%d) returns %d\012\000"
.LC41:
	.ascii	"** SIGPIPE error **\012\000"
	.space	3
.LC42:
	.ascii	"** write error **\012\000"
	.space	1
.LC43:
	.ascii	"user %d job %d pid %d done\000"
	.space	1
.LC44:
	.ascii	" status %d\000"
	.space	1
.LC45:
	.ascii	" exit code %d\000"
	.space	2
.LC46:
	.ascii	"Finished waiting ...\000"
	.space	3
.LC47:
	.ascii	"master clone done, pid %d \000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	exit_status, %object
	.size	exit_status, 4
exit_status:
	.space	4
	.type	nwork, %object
	.size	nwork, 4
nwork:
	.space	4
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
