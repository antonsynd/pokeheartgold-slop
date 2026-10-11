	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222A58C
	.extern ov07_0221BFD0
	.extern ov07_0221C3F4
	.extern ov07_0221C4A8
	.extern ov07_0221F9E8
	.extern ov07_0222A328
	.extern ov07_0222A4B4
	.extern ov07_02231E08
	.extern ov07_022367CE

	.text

	.text
	thumb_func_start ov07_0222A58C
ov07_0222A58C: ; 0x0222A58C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp]
	add r4, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl ov07_0221BFD0
	ldr r1, _0222A6F4 ; =0x00000564
	bl Heap_Alloc
	add r6, r0, #0
	bne _0222A5AA
	bl GF_AssertFail
_0222A5AA:
	mov r0, #0
	strb r0, [r6, #1]
	strb r0, [r6]
	str r4, [r6, #0xc]
	ldr r0, [sp]
	str r5, [r6, #0x10]
	str r0, [r6, #8]
	ldr r1, [sp]
	add r0, sp, #0x1c
	bl ov07_0221F9E8
	mov r1, #0
	mvn r1, r1
	ldr r0, [r6, #8]
	add r2, r1, #0
	bl ov07_02231E08
	ldr r0, [r6, #8]
	mov r1, #0
	bl ov07_0221C4A8
	strb r0, [r6, #2]
	mov r0, #0xc
	strb r0, [r6, #2]
	str r7, [r6, #0x24]
	mov r4, #0
	ldrb r0, [r6, #2]
	str r4, [sp, #4]
	cmp r0, #0
	ble _0222A6E2
	ldr r0, _0222A6F8 ; =0x00000514
	add r5, r6, #0
	add r0, r6, r0
	str r0, [sp, #0x10]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	str r0, [sp, #0xc]
_0222A5F6:
	cmp r4, #0
	beq _0222A606
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	bl SpriteSystem_NewSprite
	str r0, [r5, #0x24]
_0222A606:
	add r1, r5, #0
	ldr r7, [r5, #0x24]
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
	bl LCRandom
	mov r1, #0xa
	bl _s32_div_f
	add r1, #0xa
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x22
	strb r1, [r0]
	bl LCRandom
	mov r1, #6
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r5, #0x4c]
	ldr r0, [r6, #8]
	ldr r1, _0222A6FC ; =ov07_022367CE
	str r0, [r5, #0x14]
	ldr r0, [r6, #0xc]
	str r0, [r5, #0x18]
	ldr r0, [r6, #0x10]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x50]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #8]
	bl LCRandom
	ldr r2, [sp, #8]
	mov r1, #6
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	ldr r2, [sp, #8]
	mov r0, #2
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x14]
	bl LCRandom
	ldr r2, [sp, #8]
	mov r1, #4
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	ldr r2, _0222A6FC ; =ov07_022367CE
	ldr r0, [sp, #0x18]
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ManagedSprite_SetPositionXY
	add r0, r7, #0
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r1, [r5, #0x4c]
	add r0, r7, #0
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	add r0, r7, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	ldr r1, _0222A700 ; =ov07_0222A328
	ldr r2, [sp, #0xc]
	ldr r3, _0222A704 ; =0x0000044B
	bl ov07_0221C3F4
	ldr r0, [sp, #4]
	mov r1, #6
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	add r0, #0x40
	str r0, [sp, #0xc]
	ldrb r0, [r6, #2]
	add r5, #0x40
	cmp r4, r0
	blt _0222A5F6
_0222A6E2:
	ldr r0, [sp]
	ldr r1, _0222A708 ; =ov07_0222A4B4
	ldr r3, _0222A70C ; =0x0000044D
	add r2, r6, #0
	bl ov07_0221C3F4
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A6F4: .word 0x00000564
_0222A6F8: .word 0x00000514
_0222A6FC: .word ov07_022367CE
_0222A700: .word ov07_0222A328
_0222A704: .word 0x0000044B
_0222A708: .word ov07_0222A4B4
_0222A70C: .word 0x0000044D
	thumb_func_end ov07_0222A58C

