	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"fstime.c"
	.text
	.align	2
	.global	stop_count
	.type	stop_count, %function
stop_count:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	mov	r2, #1
	str	r2, [r3, #0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	stop_count, .-stop_count
	.align	2
	.global	clean_up
	.type	clean_up, %function
clean_up:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L7
	bl	unlink
	ldr	r0, .L7+4
	bl	unlink
	ldmfd	sp!, {r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LC0
	.word	.LC1
	.size	clean_up, .-clean_up
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.align	2
	.type	getFloatTime, %function
getFloatTime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	mov	r1, #0
	mov	r0, sp
	bl	gettimeofday
	ldr	r0, [sp, #4]
	bl	__aeabi_i2d
	ldr	r2, .L11
	ldr	r3, .L11+4
	bl	__aeabi_dmul
	mov	r4, r0
	ldr	r0, [sp, #0]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	-1598689907
	.word	1051772663
	.size	getFloatTime, .-getFloatTime
	.global	__aeabi_uidiv
	.global	__aeabi_dsub
	.global	__aeabi_ui2d
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	c_test
	.type	c_test, %function
c_test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #20
	mov	r7, r0
	bl	sync
	mov	r0, #2
	bl	sleep
	bl	sync
	mov	r0, #1
	bl	sleep
	bl	__errno_location
	mov	r5, #0
	ldr	r6, .L31
	str	r5, [r0, #0]
	ldr	r8, .L31+4
	mov	r2, r5
	mov	r1, r5
	mov	sl, r0
	ldr	r0, [r6, #0]
	bl	lseek
	ldr	r1, .L31+8
	mov	r0, #14
	str	r5, [r8, #0]
	bl	__sysv_signal
	mov	r0, r7
	bl	alarm
	bl	getFloatTime
	ldr	r4, .L31+12
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	r9, .L31+16
	ldr	r3, [r8, #0]
	mov	fp, r4
.L24:
	cmp	r3, #0
	ldr	r1, .L31+20
	bne	.L26
	ldr	r2, [r4, #0]
	ldr	r0, [r6, #0]
	bl	read
	ldr	r3, [r4, #0]
	ldr	r7, .L31+12
	cmp	r0, r3
	beq	.L15
.L29:
	ldr	r3, [sl, #0]
	mov	r1, #0
	cmp	r3, #4
	beq	.L18
	cmp	r3, #22
	beq	.L17
	cmp	r3, r1
	bne	.L25
.L17:
	mov	r2, r1
	ldr	r0, [r6, #0]
	bl	lseek
	mov	r1, #0
	mov	r2, r1
	ldr	r0, [r9, #0]
	bl	lseek
	ldr	r3, [r8, #0]
	ldr	r1, .L31+20
	cmp	r3, #0
	bne	.L26
	ldr	r2, [r4, #0]
	ldr	r0, [r6, #0]
	bl	read
	ldr	r3, [r4, #0]
	ldr	r7, .L31+12
	cmp	r0, r3
	bne	.L29
.L15:
	mov	r2, r0
	ldr	r1, .L31+20
	ldr	r0, [r9, #0]
	bl	write
	ldr	r2, [fp, #0]
	cmp	r0, r2
	beq	.L20
	mov	r3, r0
	mov	r0, r2
	ldr	r2, [sl, #0]
	cmp	r2, #4
	bne	.L30
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	rsb	r0, r3, r0
	add	r1, r2, r1
	mul	r0, r2, r0
	add	r6, r3, #128
	bl	__aeabi_uidiv
	mov	r3, #1
	add	r0, r6, r0
	str	r3, [r8, #0]
	add	r5, r5, r0, lsr #8
	b	.L26
.L18:
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #8]
	mul	r0, r3, r0
	add	r1, r3, r1
	bl	__aeabi_uidiv
	mov	r3, #1
	add	r0, r0, #128
	str	r3, [r8, #0]
	add	r5, r5, r0, lsr #8
.L26:
	bl	getFloatTime
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r0, r5
	mov	r8, r1
	bl	__aeabi_ui2d
	ldr	r3, .L31+24
	mov	sl, r0
	ldr	r0, [r3, #0]
	mov	fp, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r6, .L31+28
	mov	ip, r0
	mov	r3, r8
	mov	r1, r5
	mov	r2, r7
	ldr	r0, .L31+32
	str	ip, [sp, #0]
	str	ip, [r4, #12]
	bl	printf
	ldr	r2, [r4, #12]
	ldr	r1, .L31+36
	ldr	r0, [r6, #0]
	bl	fprintf
	ldr	r0, [r6, #0]
	mov	r2, r7
	mov	r3, r8
	ldr	r1, .L31+40
	bl	fprintf
	mov	r0, #0
.L19:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L25:
	ldr	r0, .L31+44
	bl	perror
	mvn	r0, #0
	b	.L19
.L20:
	ldr	r3, .L31+48
	ldr	r2, [r3, #0]
	ldr	r3, [r8, #0]
	add	r5, r5, r2
	b	.L24
.L30:
	ldr	r0, .L31+52
	bl	perror
	mvn	r0, #0
	b	.L19
.L32:
	.align	2
.L31:
	.word	f
	.word	.LANCHOR0
	.word	stop_count
	.word	.LANCHOR1
	.word	g
	.word	buf
	.word	count_per_k
	.word	stderr
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC2
	.word	count_per_buf
	.word	.LC3
	.size	c_test, .-c_test
	.align	2
	.global	r_test
	.type	r_test, %function
r_test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #20
	mov	r4, r0
	bl	sync
	mov	r0, #2
	bl	sleep
	bl	sync
	mov	r0, #2
	bl	sleep
	bl	__errno_location
	mov	r5, #0
	ldr	r7, .L47
	str	r5, [r0, #0]
	ldr	r8, .L47+4
	mov	r2, r5
	mov	r1, r5
	mov	sl, r0
	ldr	r0, [r7, #0]
	bl	lseek
	ldr	r1, .L47+8
	mov	r0, #14
	str	r5, [r8, #0]
	bl	__sysv_signal
	mov	r0, r4
	bl	alarm
	bl	getFloatTime
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	r4, .L47+12
	ldr	r9, .L47+16
	ldr	r3, [r8, #0]
.L42:
	cmp	r3, #0
	ldr	r1, .L47+20
	bne	.L44
	ldr	r2, [r4, #0]
	ldr	r0, [r7, #0]
	bl	read
	ldr	r3, [r4, #0]
	mov	r6, r0
	cmp	r0, r3
	beq	.L35
.L46:
	ldr	r3, [sl, #0]
	mov	r1, #0
	cmp	r3, #4
	beq	.L38
	cmp	r3, #22
	beq	.L37
	cmp	r3, r1
	bne	.L43
.L37:
	mov	r2, r1
	ldr	r0, [r7, #0]
	bl	lseek
	ldr	r3, [r8, #0]
	add	r6, r6, #128
	cmp	r3, #0
	add	r5, r5, r6, lsr #8
	ldr	r1, .L47+20
	bne	.L44
	ldr	r2, [r4, #0]
	ldr	r0, [r7, #0]
	bl	read
	ldr	r3, [r4, #0]
	mov	r6, r0
	cmp	r0, r3
	bne	.L46
.L35:
	ldr	r2, [r9, #0]
	ldr	r3, [r8, #0]
	add	r5, r5, r2
	b	.L42
.L38:
	add	r6, r0, #128
	mov	r3, #1
	str	r3, [r8, #0]
	add	r5, r5, r6, lsr #8
.L44:
	bl	getFloatTime
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r0, r5
	mov	r8, r1
	bl	__aeabi_ui2d
	ldr	r3, .L47+24
	mov	sl, r0
	ldr	r0, [r3, #0]
	mov	fp, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r6, .L47+28
	mov	ip, r0
	str	ip, [sp, #0]
	mov	r3, r8
	str	ip, [r4, #8]
	mov	r1, r5
	mov	r2, r7
	ldr	r0, .L47+32
	bl	printf
	ldr	r2, [r4, #8]
	ldr	r1, .L47+36
	ldr	r0, [r6, #0]
	bl	fprintf
	ldr	r0, [r6, #0]
	mov	r2, r7
	mov	r3, r8
	ldr	r1, .L47+40
	bl	fprintf
	mov	r0, #0
.L39:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L43:
	ldr	r0, .L47+44
	bl	perror
	mvn	r0, #0
	b	.L39
.L48:
	.align	2
.L47:
	.word	f
	.word	.LANCHOR0
	.word	stop_count
	.word	.LANCHOR1
	.word	count_per_buf
	.word	buf
	.word	count_per_k
	.word	stderr
	.word	.LC8
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	r_test, .-r_test
	.align	2
	.global	w_test
	.type	w_test, %function
w_test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #28
	mov	r4, r0
	ldr	r8, .L67
	bl	sync
	mov	r0, #2
	bl	sleep
	mov	r6, #0
	bl	sync
	mov	r0, #2
	bl	sleep
	ldr	r1, .L67+4
	mov	r0, #14
	str	r6, [r8, #0]
	bl	__sysv_signal
	mov	r0, r4
	bl	alarm
	bl	getFloatTime
	ldr	r5, [r8, #0]
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	cmp	r5, r6
	bne	.L64
	ldr	r4, .L67+8
	ldr	r7, .L67+12
	ldr	r9, .L67+16
	mov	fp, r4
	mov	sl, #1
.L57:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	ble	.L59
	ldr	r2, [fp, #0]
	mov	r6, #0
	b	.L56
.L66:
	str	r2, [sp, #12]
	str	r0, [sp, #8]
	bl	__errno_location
	ldr	r1, [r0, #0]
	ldr	r3, [sp, #8]
	cmp	r1, #4
	add	r3, r3, #128
	ldr	r2, [sp, #12]
	bne	.L65
	add	r5, r5, r3, lsr #8
	ldr	r3, [r4, #16]
	add	r6, r6, #1
	cmp	r3, r6
	str	sl, [r8, #0]
	ble	.L59
.L56:
	ldr	r1, .L67+20
	ldr	r0, [r7, #0]
	bl	write
	ldr	r2, [r4, #0]
	cmp	r0, r2
	bne	.L66
	ldr	r3, [r9, #0]
	add	r6, r6, #1
	add	r5, r5, r3
	ldr	r3, [r4, #16]
	cmp	r3, r6
	bgt	.L56
.L59:
	mov	r1, #0
	ldr	r0, [r7, #0]
	mov	r2, r1
	bl	lseek
	ldr	r3, [r8, #0]
	cmp	r3, #0
	beq	.L57
	mov	r0, r5
	bl	__aeabi_ui2d
	mov	sl, r0
	mov	fp, r1
.L58:
	bl	getFloatTime
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	bl	__aeabi_dsub
	ldr	r3, .L67+24
	mov	r7, r0
	ldr	r0, [r3, #0]
	mov	r8, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r6, .L67+28
	mov	ip, r0
	str	ip, [sp, #0]
	mov	r3, r8
	str	ip, [r4, #4]
	mov	r1, r5
	mov	r2, r7
	ldr	r0, .L67+32
	bl	printf
	ldr	r2, [r4, #4]
	ldr	r1, .L67+36
	ldr	r0, [r6, #0]
	bl	fprintf
	ldr	r0, [r6, #0]
	mov	r2, r7
	mov	r3, r8
	ldr	r1, .L67+40
	bl	fprintf
	mov	r0, #0
	b	.L54
.L65:
	ldr	r0, .L67+44
	bl	perror
	mvn	r0, #0
.L54:
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L64:
	ldr	r4, .L67+8
	mov	r5, r6
	mov	sl, #0
	mov	fp, #0
	b	.L58
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
	.word	stop_count
	.word	.LANCHOR1
	.word	f
	.word	count_per_buf
	.word	buf
	.word	count_per_k
	.word	stderr
	.word	.LC10
	.word	.LC5
	.word	.LC6
	.word	.LC9
	.size	w_test, .-w_test
	.global	__aeabi_idiv
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r7, r0
	mov	r5, r1
	movle	r9, #99
	movle	sl, #10
	ble	.L71
	ldr	r3, [r1, #4]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	cmp	r2, #45
	bne	.L72
	ldr	r8, .L108
	mov	r4, #1
	mov	r6, #99
	mov	sl, #10
.L73:
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	sub	r3, r9, #98
	cmp	r3, #21
	ldrls	pc, [pc, r3, asl #2]
	b	.L72
.L80:
	.word	.L75
	.word	.L76
	.word	.L77
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L78
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L76
	.word	.L72
	.word	.L79
	.word	.L72
	.word	.L72
	.word	.L76
.L77:
	add	r4, r4, #1
	ldr	r0, [r5, r4, asl #2]
	bl	chdir
	cmp	r0, #0
	blt	.L103
	mov	r9, r6
.L76:
	add	r4, r4, #1
	cmp	r7, r4
	ble	.L71
	ldr	r3, [r5, r4, asl #2]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	cmp	r2, #45
	moveq	r6, r9
	beq	.L73
.L72:
	ldr	r3, .L108+4
	ldr	r0, .L108+8
	ldr	r3, [r3, #0]
	mov	r1, #1
	mov	r2, #73
	bl	fwrite
	mov	r0, #2
	bl	exit
.L75:
	add	r4, r4, #1
	ldr	r0, [r5, r4, asl #2]
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	mov	r9, r6
	str	r0, [r8, #0]
	b	.L76
.L79:
	add	r4, r4, #1
	ldr	r0, [r5, r4, asl #2]
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	mov	r9, r6
	mov	sl, r0
	b	.L76
.L78:
	add	r4, r4, #1
	ldr	r0, [r5, r4, asl #2]
	mov	r1, #0
	mov	r2, #10
	bl	strtol
	mov	r9, r6
	str	r0, [r8, #20]
	b	.L76
.L71:
	ldr	r4, .L108
	ldr	r5, [r4, #0]
	sub	r3, r5, #256
	cmp	r3, #7936
	bhi	.L104
	ldr	r0, [r4, #20]
	sub	r3, r0, #1
	cmp	r3, #1048576
	bcs	.L105
	sub	r3, sl, #1
	cmp	r3, #3600
	bcs	.L106
	mov	r1, r5
	mov	r0, r0, asl #10
	bl	__aeabi_idiv
	ldr	r3, .L108+12
	mov	r2, #4
	str	r2, [r3, #0]
	ldr	r3, .L108+16
	mov	r5, r5, asr #8
	str	r0, [r4, #16]
	str	r5, [r3, #0]
	ldr	r0, .L108+20
	mov	r1, #384
	bl	creat
	ldr	r5, .L108+24
	cmn	r0, #1
	str	r0, [r5, #0]
	beq	.L102
	bl	close
	ldr	r0, .L108+28
	mov	r1, #384
	bl	creat
	ldr	r6, .L108+32
	cmn	r0, #1
	str	r0, [r6, #0]
	beq	.L102
	bl	close
	ldr	r0, .L108+20
	mov	r1, #2
	bl	open
	cmn	r0, #1
	str	r0, [r5, #0]
	beq	.L89
	ldr	r0, .L108+28
	mov	r1, #2
	bl	open
	cmn	r0, #1
	str	r0, [r6, #0]
	beq	.L89
	ldr	r2, [r4, #0]
	cmp	r2, #0
	ble	.L91
	ldr	r1, .L108+36
	mov	r3, #0
.L92:
	strb	r3, [r1, r3]
	add	r3, r3, #1
	cmp	r3, r2
	bne	.L92
.L91:
	mov	r0, #9
	ldr	r1, .L108+40
	bl	__sysv_signal
	cmp	r9, #114
	beq	.L95
	cmp	r9, #119
	beq	.L96
	cmp	r9, #99
	beq	.L107
	ldr	r3, .L108+4
	mov	r2, r9
	ldr	r0, [r3, #0]
	ldr	r1, .L108+44
	bl	fprintf
	mov	r0, #6
	bl	exit
.L106:
	ldr	r3, .L108+4
	ldr	r1, .L108+48
	ldr	r0, [r3, #0]
	mov	r2, #1
	mov	r3, #3600
	bl	fprintf
	mov	r0, #3
	bl	exit
.L104:
	ldr	r3, .L108+4
	ldr	r1, .L108+52
	ldr	r0, [r3, #0]
	mov	r2, #256
	mov	r3, #1048576
	bl	fprintf
	mov	r0, #3
	bl	exit
.L105:
	ldr	r3, .L108+4
	ldr	r1, .L108+56
	ldr	r0, [r3, #0]
	mov	r2, #1
	mov	r3, #1048576
	bl	fprintf
	mov	r0, #3
	bl	exit
.L103:
	ldr	r0, .L108+60
	bl	perror
	mov	r0, #1
	bl	exit
.L102:
	ldr	r0, .L108+64
	bl	perror
	mov	r0, #1
	bl	exit
.L89:
	ldr	r0, .L108+68
	bl	perror
	mov	r0, #1
	bl	exit
.L107:
	mov	r0, #2
	bl	w_test
	mov	r0, #2
	bl	r_test
	mov	r0, sl
	bl	c_test
	mov	r4, r0
.L97:
	cmp	r4, #0
	beq	.L98
	bl	clean_up
	mov	r0, #1
	bl	exit
.L98:
	bl	clean_up
	mov	r0, r4
	bl	exit
.L96:
	mov	r0, sl
	bl	w_test
	mov	r4, r0
	b	.L97
.L95:
	mov	r0, #2
	bl	w_test
	mov	r0, sl
	bl	r_test
	mov	r4, r0
	b	.L97
.L109:
	.align	2
.L108:
	.word	.LANCHOR1
	.word	stderr
	.word	.LC12
	.word	count_per_k
	.word	count_per_buf
	.word	.LC0
	.word	f
	.word	.LC1
	.word	g
	.word	buf
	.word	clean_up
	.word	.LC18
	.word	.LC15
	.word	.LC13
	.word	.LC14
	.word	.LC11
	.word	.LC16
	.word	.LC17
	.size	main, .-main
	.global	SCCSid
	.global	read_score
	.global	write_score
	.global	copy_score
	.global	bufsize
	.global	max_blocks
	.global	max_buffs
	.global	sigalarm
	.comm	count_per_k,4,4
	.comm	count_per_buf,4,4
	.comm	buf,8192,4
	.comm	f,4,4
	.comm	g,4,4
	.comm	i,4,4
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	bufsize, %object
	.size	bufsize, 4
bufsize:
	.word	1024
	.type	write_score, %object
	.size	write_score, 4
write_score:
	.word	1
	.type	read_score, %object
	.size	read_score, 4
read_score:
	.word	1
	.type	copy_score, %object
	.size	copy_score, 4
copy_score:
	.word	1
	.type	max_buffs, %object
	.size	max_buffs, 4
max_buffs:
	.word	2000
	.type	max_blocks, %object
	.size	max_blocks, 4
max_blocks:
	.word	2000
	.type	SCCSid, %object
	.size	SCCSid, 42
SCCSid:
	.ascii	"@(#) @(#)fstime.c:3.5 -- 5/15/91 19:30:19\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"dummy0\000"
	.space	1
.LC1:
	.ascii	"dummy1\000"
	.space	1
.LC2:
	.ascii	"fstime: copy read\000"
	.space	2
.LC3:
	.ascii	"fstime: copy write\000"
	.space	1
.LC4:
	.ascii	"Copy done: %ld in %.4f, score %ld\012\000"
	.space	1
.LC5:
	.ascii	"COUNT|%ld|0|KBps\012\000"
	.space	2
.LC6:
	.ascii	"TIME|%.1f\012\000"
	.space	1
.LC7:
	.ascii	"fstime: read\000"
	.space	3
.LC8:
	.ascii	"Read done: %ld in %.4f, score %ld\012\000"
	.space	1
.LC9:
	.ascii	"fstime: write\000"
	.space	2
.LC10:
	.ascii	"Write done: %ld in %.4f, score %ld\012\000"
.LC11:
	.ascii	"fstime: chdir\000"
	.space	2
.LC12:
	.ascii	"Usage: fstime [-c|-r|-w] [-b <bufsize>] [-m <max_bl"
	.ascii	"ocks>] [-t <seconds>]\012\000"
	.space	2
.LC13:
	.ascii	"fstime: buffer size must be in range %d-%d\012\000"
.LC14:
	.ascii	"fstime: max blocks must be in range %d-%d\012\000"
	.space	1
.LC15:
	.ascii	"fstime: time must be in range %d-%d seconds\012\000"
	.space	3
.LC16:
	.ascii	"fstime: creat\000"
	.space	2
.LC17:
	.ascii	"fstime: open\000"
	.space	3
.LC18:
	.ascii	"fstime: unknown test '%c'\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	sigalarm, %object
	.size	sigalarm, 4
sigalarm:
	.space	4
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
