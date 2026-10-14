	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222A328
	.extern ov07_0221C448
	.extern ov07_02222268
	.extern ov07_022222F0
	.extern ov07_0223677E
	.extern ov07_02236780

	.text

	.text
	thumb_func_start ov07_0222A328
ov07_0222A328: ; 0x0222A328
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #7
	bls _0222A338
	b _0222A490
_0222A338:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222A344: ; jump table
	.short _0222A354 - _0222A344 - 2 ; case 0
	.short _0222A368 - _0222A344 - 2 ; case 1
	.short _0222A38A - _0222A344 - 2 ; case 2
	.short _0222A3B8 - _0222A344 - 2 ; case 3
	.short _0222A3E6 - _0222A344 - 2 ; case 4
	.short _0222A404 - _0222A344 - 2 ; case 5
	.short _0222A42C - _0222A344 - 2 ; case 6
	.short _0222A474 - _0222A344 - 2 ; case 7
_0222A354:
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0xa
	bhi _0222A374
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A368:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhs _0222A376
_0222A374:
	b _0222A49E
_0222A376:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A38A:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhi _0222A3AC
	ldr r0, [r4, #0x38]
	ldr r1, _0222A4A8 ; =0x3DCCCCCD
	bl _fadd
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	b _0222A49E
_0222A3AC:
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A3B8:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhi _0222A3DA
	ldr r0, [r4, #0x38]
	ldr r1, _0222A4A8 ; =0x3DCCCCCD
	bl _fsub
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	b _0222A49E
_0222A3DA:
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A3E6:
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0xa
	bhi _0222A49E
	ldr r0, [r4, #0x3c]
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A404:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0x1e
	bls _0222A41C
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A41C:
	ldr r0, [r4, #0x3c]
	ldr r0, [r0]
	cmp r0, #2
	bne _0222A49E
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A42C:
	bl LCRandom
	mov r1, #0xa
	bl _s32_div_f
	add r5, r1, #0
	add r2, sp, #8
	ldr r0, [r4, #0x10]
	add r1, sp, #8
	add r2, #2
	add r5, #0xa
	bl ManagedSprite_GetPositionXY
	ldrb r0, [r4, #0xf]
	add r3, sp, #8
	mov r1, #0
	lsl r2, r0, #2
	ldr r0, _0222A4AC ; =ov07_02236780
	ldrsh r0, [r0, r2]
	str r0, [sp]
	lsl r0, r5, #0x10
	ldr r5, _0222A4B0 ; =ov07_0223677E
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r5, #2
	ldrsh r1, [r3, r1]
	ldrsh r3, [r3, r5]
	add r0, #0x14
	bl ov07_02222268
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222A49E
_0222A474:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov07_022222F0
	cmp r0, #0
	bne _0222A49E
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0222A490:
	ldr r0, [r4, #0x3c]
	mov r1, #3
	str r1, [r0]
	ldr r0, [r4]
	add r1, r5, #0
	bl ov07_0221C448
_0222A49E:
	ldr r0, [r4, #0x10]
	bl ManagedSprite_TickFrame
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0222A4A8: .word 0x3DCCCCCD
_0222A4AC: .word ov07_02236780
_0222A4B0: .word ov07_0223677E
	thumb_func_end ov07_0222A328

