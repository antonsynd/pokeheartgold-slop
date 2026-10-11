	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02258D54
	.public ov48_02258F0C
	.public ov48_0225909C
	.public ov48_02259130
	.public ov48_02259188
	.public ov48_022591D8
	.public ov48_022592E0
	.public ov48_0225932C
	.public ov48_022593B4
	.public ov48_022593F4
	.public ov48_022598CC
	.public ov48_022598DC
	.public ov48_02259AD0
	.public ov48_02259B10
	.public ov48_02259B3C
	.public ov48_02259B68
	.public ov48_02259B84
	.public ov48_02259BA0
	.public ov48_02259BBC
	.public ov48_02259DA0
	.public ov48_0225A20C
	.public ov48_0225A244
	.public ov48_0225B13C

	.text

	thumb_func_start ov48_0225909C
ov48_0225909C: ; 0x0225909C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0225911C ; =0x0000C3E0
	add r0, r5, r0
	bl ov48_02259DA0
	ldr r0, _0225911C ; =0x0000C3E0
	ldr r1, [r5, r0]
	mov r0, #2
	tst r1, r0
	beq _022590C0
	ldr r0, _02259120 ; =0x000005DD
	bl PlaySE
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_022590C0:
	ldr r2, _02259124 ; =gSystem
	lsl r0, r0, #9
	ldr r1, [r2, #0x48]
	tst r0, r1
	beq _0225910C
	add r0, r5, #0
	add r1, sp, #0
	bl ov48_02259188
	cmp r0, #1
	bne _02259116
	ldr r0, _02259128 ; =0x0000C40C
	add r1, sp, #0
	add r0, r5, r0
	bl ov48_0225A244
	cmp r0, #0
	bne _02259116
	ldr r0, _02259128 ; =0x0000C40C
	add r1, sp, #0
	add r0, r5, r0
	bl ov48_0225A20C
	cmp r0, #0
	beq _02259116
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov48_022593B4
	ldr r0, _0225912C ; =0x000005D6
	bl PlaySE
	b _02259116
_0225910C:
	ldr r2, [r2, #0x44]
	add r0, r5, #0
	bl ov48_02258D54
	add r4, r0, #0
_02259116:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0225911C: .word 0x0000C3E0
_02259120: .word 0x000005DD
_02259124: .word gSystem
_02259128: .word 0x0000C40C
_0225912C: .word 0x000005D6
	thumb_func_end ov48_0225909C

	thumb_func_start ov48_02259130
ov48_02259130: ; 0x02259130
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov48_022593B4
	cmp r0, #0
	bne _02259184
	ldr r0, [r4]
	bl ov48_0225B13C
	add r6, r0, #0
	cmp r6, #0x32
	beq _02259184
	lsl r1, r6, #0x18
	ldr r0, [r4]
	lsr r1, r1, #0x18
	bl ov45_0222D6B0
	add r7, r0, #0
	lsl r1, r6, #0x18
	ldr r0, [r4]
	lsr r1, r1, #0x18
	bl ov45_0222D6D4
	add r2, r0, #0
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov48_022593B4
	cmp r0, #1
	beq _02259184
	bl GF_AssertFail
_02259184:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov48_02259130

	thumb_func_start ov48_02259188
ov48_02259188: ; 0x02259188
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov48_022591D8
	add r6, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov48_02259BBC
	cmp r6, r0
	blo _022591A6
	mov r0, #0
	pop {r4, r5, r6, pc}
_022591A6:
	add r2, r5, #0
	add r2, #0x1c
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r6, #0
	bl ov48_0225932C
	str r0, [r4]
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov48_02259B84
	str r0, [r4, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov48_02259BA0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov48_02259188

	thumb_func_start ov48_022591D8
ov48_022591D8: ; 0x022591D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov48_02259BBC
	str r0, [sp, #0xc]
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, sp, #0x28
	bl ov48_022598CC
	ldr r1, [sp, #0x28]
	add r0, r1, #0
	sub r0, #0x80
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, #0x80
	str r0, [sp, #4]
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r0, #0
	sub r1, #0x80
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	add r1, r0, #0
	add r1, #0x80
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #0x18]
	sub r2, r1, r6
	bpl _02259224
	neg r2, r2
_02259224:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	ble _0225925E
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	str r6, [sp, #0x18]
	cmp r6, #0
	ble _02259240
	lsl r0, r1, #8
	sub r0, r6, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	b _02259248
_02259240:
	lsl r0, r1, #8
	add r0, r6, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
_02259248:
	ldr r0, [sp, #0x18]
	sub r6, #0x80
	add r0, #0x80
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x80
	str r0, [sp, #0x10]
	b _02259264
_0225925E:
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	str r0, [sp, #0x10]
_02259264:
	ldr r0, [sp, #0xc]
	mov r7, #1
	lsl r7, r7, #8
	mov r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _022592DA
_02259272:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, sp, #0x1c
	add r2, r4, #0
	bl ov48_02259B3C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov48_02259B68
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #4]
	cmp r1, r2
	ble _022592D2
	ldr r2, [sp]
	cmp r1, r2
	bge _022592D2
	ldr r1, [sp, #0x20]
	cmp r1, r6
	ble _022592A6
	ldr r2, [sp, #0x18]
	cmp r1, r2
	blt _022592B2
_022592A6:
	ldr r2, [sp, #0x14]
	cmp r1, r2
	ble _022592D2
	ldr r2, [sp, #0x10]
	cmp r1, r2
	bge _022592D2
_022592B2:
	cmp r0, #3
	beq _022592D2
	add r0, sp, #0x28
	bl ov48_02258F0C
	add r0, sp, #0x1c
	bl ov48_02258F0C
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl ov48_022592E0
	cmp r0, r7
	bhs _022592D2
	add r7, r0, #0
	str r4, [sp, #8]
_022592D2:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _02259272
_022592DA:
	ldr r0, [sp, #8]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov48_022591D8

	thumb_func_start ov48_022592E0
ov48_022592E0: ; 0x022592E0
	push {r3, r4, r5, lr}
	ldr r3, [r0]
	ldr r2, [r1]
	sub r4, r3, r2
	bpl _022592EC
	neg r4, r4
_022592EC:
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	sub r5, r2, r0
	bpl _022592F6
	neg r5, r5
_022592F6:
	mov r0, #0xb4
	bl GF_DegreeToSinCosIdxNoWrap
	cmp r4, r0
	ble _02259304
	ldr r0, _02259328 ; =0x0000FFFF
	sub r4, r0, r4
_02259304:
	mov r0, #0xb4
	bl GF_DegreeToSinCosIdxNoWrap
	cmp r5, r0
	ble _02259312
	ldr r0, _02259328 ; =0x0000FFFF
	sub r5, r0, r5
_02259312:
	add r1, r4, #0
	add r0, r5, #0
	mul r1, r4
	mul r0, r5
	add r0, r1, r0
	lsl r0, r0, #0xc
	bl FX_Sqrt
	asr r0, r0, #0xc
	pop {r3, r4, r5, pc}
	nop
_02259328: .word 0x0000FFFF
	thumb_func_end ov48_022592E0

	thumb_func_start ov48_0225932C
ov48_0225932C: ; 0x0225932C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0x30
	ldrb r0, [r0, #8]
	add r7, r1, #0
	mov r1, #0xdb
	sub r4, r0, #4
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #3
	bl ov48_02259B10
	add r6, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov48_02259BBC
	cmp r6, r0
	blo _0225935E
	bl GF_AssertFail
_0225935E:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, sp, #0xc
	add r2, r6, #0
	bl ov48_02259B3C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, sp, #0
	add r2, r7, #0
	bl ov48_02259B3C
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x18
	mul r0, r1
	ldr r1, _022593B0 ; =0x0000FFFF
	bl _s32_div_f
	add r4, r4, r0
	bpl _02259394
	add r4, #0x18
_02259394:
	cmp r4, #0x18
	blt _022593A2
	add r0, r4, #0
	mov r1, #0x18
	bl _s32_div_f
	add r4, r1, #0
_022593A2:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_022593B0: .word 0x0000FFFF
	thumb_func_end ov48_0225932C

	thumb_func_start ov48_022593B4
ov48_022593B4: ; 0x022593B4
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	add r3, sp, #0xc
	bl ov48_02259AD0
	cmp r0, #3
	beq _022593EC
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, sp, #0
	bl ov48_022598CC
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov48_022598DC
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_022593EC:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov48_022593B4

	thumb_func_start ov48_022593F4
ov48_022593F4: ; 0x022593F4
	push {r4, r5, r6, r7}
	ldr r4, [r0, #4]
	mov r2, #2
	bic r4, r2
	mov r3, #1
	bic r4, r3
	ldr r3, _02259460 ; =gGameLanguage
	str r4, [r0, #4]
	ldrb r3, [r3]
	cmp r3, #1
	ldr r3, [r0, #4]
	bne _02259414
	mov r2, #2
	orr r2, r3
	str r2, [r0, #4]
	b _02259418
_02259414:
	bic r3, r2
	str r3, [r0, #4]
_02259418:
	ldr r2, [r0, #4]
	lsl r3, r2, #0x1e
	lsr r3, r3, #0x1f
	cmp r3, #1
	bne _02259452
	mov r3, #0
	add r4, r3, #0
	mov r5, #1
	mov r6, #1
_0225942A:
	ldr r2, [r1]
	add r7, r2, r4
	ldrb r7, [r7, #3]
	lsl r7, r7, #0x18
	lsr r7, r7, #0x1c
	cmp r7, #1
	bne _02259446
	ldrh r2, [r2, r4]
	cmp r2, #0x67
	beq _02259446
	ldr r2, [r0, #4]
	bic r2, r5
	orr r2, r6
	str r2, [r0, #4]
_02259446:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #0x32
	blt _0225942A
	pop {r4, r5, r6, r7}
	bx lr
_02259452:
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_02259460: .word gGameLanguage
	thumb_func_end ov48_022593F4

