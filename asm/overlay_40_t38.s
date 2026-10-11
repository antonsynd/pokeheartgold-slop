	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D048
	.extern ov40_02244DD8

	.text

	.text
	thumb_func_start ov40_0222D048
ov40_0222D048: ; 0x0222D048
	push {r4, lr}
	sub sp, #0x40
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x1c]
	beq _0222D064
	b _0222D278
_0222D064:
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	bls _0222D06C
	b _0222D246
_0222D06C:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222D078: ; jump table
	.short _0222D080 - _0222D078 - 2 ; case 0
	.short _0222D096 - _0222D078 - 2 ; case 1
	.short _0222D10C - _0222D078 - 2 ; case 2
	.short _0222D1B6 - _0222D078 - 2 ; case 3
_0222D080:
	ldr r1, [r4, #0x28]
	cmp r1, #3
	bne _0222D090
	add r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	b _0222D246
_0222D090:
	add r0, r1, #1
	str r0, [r4, #0x28]
	b _0222D246
_0222D096:
	ldr r1, [r4, #0x28]
	cmp r1, #4
	bne _0222D0A6
	add r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	b _0222D246
_0222D0A6:
	ldr r0, [r4]
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r1, [r4, #0x20]
	ldr r0, _0222D27C ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	mov r1, #0x18
	ldrsb r1, [r4, r1]
	ldr r2, [sp, #0x24]
	neg r1, r1
	mul r0, r1
	add r0, r2, r0
	mov r1, #0x5a
	str r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r1, r1, #2
	add r0, #0x20
	str r0, [r4, #0x20]
	bl _s32_div_f
	str r1, [r4, #0x20]
	ldr r0, [r4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl ManagedSprite_SetPositonFxXY
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	bl ManagedSprite_SetPositonFxXY
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0222D246
_0222D10C:
	ldr r3, _0222D280 ; =ov40_02244DD8
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, sp, #0
	ldr r0, [r4]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r1, [r4, #0x28]
	cmp r1, #0
	bne _0222D15A
	mov r0, #0x16
	ldrsh r2, [r4, r0]
	add r1, sp, #0
	mov r0, #4
	ldrsh r0, [r1, r0]
	sub r0, r2, r0
	strh r0, [r4, #0x14]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x24]
	bl _s32_div_f
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0222D194
_0222D15A:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	cmp r1, r0
	bne _0222D180
	mov r0, #0x16
	ldrsh r1, [r4, r0]
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrb r0, [r4, #0x19]
	lsl r1, r0, #2
	add r0, sp, #0x28
	ldr r0, [r0, r1]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	b _0222D194
_0222D180:
	add r1, sp, #0
	mov r0, #4
	ldrsh r2, [r1, r0]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	strh r0, [r1, #4]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
_0222D194:
	add r3, sp, #0
	mov r1, #4
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4]
	bl ManagedSprite_SetPositionXY
	add r3, sp, #0
	mov r1, #4
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl ManagedSprite_SetPositionXY
	b _0222D246
_0222D1B6:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0222D1CE
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0xc
	add r2, sp, #0x10
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
_0222D1CE:
	ldr r0, [r4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r1, [r4, #0x20]
	ldr r0, _0222D27C ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	mov r2, #0x18
	ldrsb r2, [r4, r2]
	ldr r1, [r4, #0xc]
	neg r3, r2
	lsl r2, r0, #1
	add r0, r0, r2
	mul r0, r3
	add r0, r1, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x19]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r0, [r4, #0x20]
	beq _0222D222
	sub r0, r0, #4
	b _0222D224
_0222D222:
	add r0, r0, #4
_0222D224:
	str r0, [r4, #0x20]
	mov r1, #0x5a
	ldr r0, [r4, #0x20]
	lsl r1, r1, #2
	bl _s32_div_f
	str r1, [r4, #0x20]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl ManagedSprite_SetPositonFxXY
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl ManagedSprite_SetPositonFxXY
_0222D246:
	ldr r0, [r4, #0x2c]
	cmp r0, #2
	blt _0222D278
	ldr r0, [r4, #0x10]
	ldr r1, _0222D284 ; =0x3DCCCCCD
	bl _fgr
	bls _0222D278
	ldr r0, [r4, #0x10]
	ldr r1, _0222D284 ; =0x3DCCCCCD
	bl _fsub
	str r0, [r4, #0x10]
	mov r2, #0xfe
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	lsl r2, r2, #0x16
	bl ManagedSprite_SetAffineScale
	mov r2, #0xfe
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	lsl r2, r2, #0x16
	bl ManagedSprite_SetAffineScale
_0222D278:
	add sp, #0x40
	pop {r4, pc}
	.balign 4, 0
_0222D27C: .word 0x0000FFFF
_0222D280: .word ov40_02244DD8
_0222D284: .word 0x3DCCCCCD
	thumb_func_end ov40_0222D048

