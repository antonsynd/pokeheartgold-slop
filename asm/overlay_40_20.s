	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D048
	.public ov40_0222D288
	.public ov40_0222D294
	.public ov40_0222D2A0
	.public ov40_0222D3E8
	.public ov40_0222D55C
	.public ov40_0222D5AC
	.public ov40_0222DAB0
	.public ov40_02230DCC
	.public ov40_02244DA8
	.public ov40_02244DC0
	.public ov40_02244DD8

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

	thumb_func_start ov40_0222D288
ov40_0222D288: ; 0x0222D288
	push {r3, lr}
	mov r3, #1
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, pc}
	thumb_func_end ov40_0222D288

	thumb_func_start ov40_0222D294
ov40_0222D294: ; 0x0222D294
	push {r3, lr}
	mov r3, #1
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	pop {r3, pc}
	thumb_func_end ov40_0222D294

	thumb_func_start ov40_0222D2A0
ov40_0222D2A0: ; 0x0222D2A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r6, r0, #0
	ldr r0, _0222D3DC ; =ov40_02244DA8
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, _0222D3E0 ; =0x000005FC
	str r0, [sp, #0x1c]
	add r0, r6, r1
	sub r1, #0xc8
	str r0, [sp, #0x14]
	add r0, r6, r1
	str r0, [sp, #0x10]
_0222D2C8:
	ldr r0, [sp, #0x14]
	ldr r1, _0222D3E4 ; =ov40_02244DC0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x34
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x2c
	add r0, r1, r0
	str r0, [sp, #8]
	add r7, sp, #0x3c
_0222D2E6:
	add r0, r7, #0
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	add r0, r7, #0
	mov r1, #0x6d
	bl sub_02013910
	ldr r1, [r4]
	mov r2, #0x6d
	str r0, [r1, #0x18]
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_02013688
	ldr r3, [r4]
	ldr r2, [r5]
	mov r1, #1
	add r3, #0x1c
	bl sub_02021AC8
	ldr r0, [r4]
	add r1, sp, #0x20
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x20
	bl ManagedSprite_GetPositionXY
	ldr r0, [r6, #0x50]
	str r7, [sp, #0x50]
	str r0, [sp, #0x4c]
	ldr r0, [r6, #0x1c]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldr r1, [r1]
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x58]
	ldr r0, [r4]
	add r1, sp, #0x20
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #0x5c]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	str r0, [sp, #0x60]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0x24
	str r0, [sp, #0x64]
	mov r0, #0
	ldrsh r0, [r1, r0]
	sub r0, #8
	str r0, [sp, #0x68]
	mov r0, #3
	str r0, [sp, #0x6c]
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	sub r0, r0, #1
	str r0, [sp, #0x70]
	ldr r0, [r5]
	str r0, [sp, #0x74]
	mov r0, #0x6d
	str r0, [sp, #0x78]
	ldr r1, [r4]
	add r0, sp, #0x4c
	ldr r1, [r1, #0x18]
	bl TextOBJ_Create
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0x14]
	bl sub_020138E0
	add r0, r7, #0
	bl RemoveWindow
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0222D2E6
	ldr r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #5
	bge _0222D3D6
	b _0222D2C8
_0222D3D6:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_0222D3DC: .word ov40_02244DA8
_0222D3E0: .word 0x000005FC
_0222D3E4: .word ov40_02244DC0
	thumb_func_end ov40_0222D2A0

	thumb_func_start ov40_0222D3E8
ov40_0222D3E8: ; 0x0222D3E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	add r5, r3, #0
	str r1, [sp, #0x10]
	ldr r0, [r4, #0x48]
	cmp r2, #8
	bne _0222D478
	ldr r1, [r5, #0x18]
	lsl r1, r1, #2
	add r3, r4, r1
	ldr r1, _0222D554 ; =0x0000088C
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _0222D410
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0222D504
_0222D410:
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r6, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #7
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0222D554 ; =0x0000088C
	ldr r0, [r1, r0]
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov40_02230DCC
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r3, r1, #0
	bl BufferString
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x14]
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	b _0222D504
_0222D478:
	cmp r2, #0x29
	bne _0222D4FC
	ldr r1, [r5, #0x18]
	lsl r1, r1, #2
	add r3, r4, r1
	ldr r1, _0222D554 ; =0x0000088C
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _0222D494
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0222D504
_0222D494:
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r6, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #7
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0222D554 ; =0x0000088C
	ldr r0, [r1, r0]
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov40_02230DCC
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r3, r1, #0
	bl BufferString
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	b _0222D504
_0222D4FC:
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
_0222D504:
	add r0, sp, #0x1c
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0x1c
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222D558 ; =0x000E0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	add r2, sp, #0x1c
	mov r3, #0x6d
	bl TextOBJ_CopyFromBGWindow
	add r0, r5, #0
	bl String_Delete
	add r0, sp, #0x1c
	bl RemoveWindow
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222D554: .word 0x0000088C
_0222D558: .word 0x000E0D00
	thumb_func_end ov40_0222D3E8

	thumb_func_start ov40_0222D55C
ov40_0222D55C: ; 0x0222D55C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	str r1, [sp]
	ldr r1, _0222D5A8 ; =0x000005FC
	add r7, r0, r1
	sub r1, #0xc8
	add r6, r0, r1
_0222D56C:
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r4, #0
	add r5, sp, #4
_0222D574:
	ldr r0, [r5]
	ldr r0, [r0, #0x18]
	bl sub_02013938
	ldr r0, [r5]
	ldr r0, [r0, #0x14]
	bl TextOBJ_Destroy
	ldr r0, [r5]
	add r0, #0x1c
	bl sub_02021B5C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0222D574
	ldr r0, [sp]
	add r7, #0x28
	add r0, r0, #1
	add r6, #0x28
	str r0, [sp]
	cmp r0, #5
	blt _0222D56C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0222D5A8: .word 0x000005FC
	thumb_func_end ov40_0222D55C

	thumb_func_start ov40_0222D5AC
ov40_0222D5AC: ; 0x0222D5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, _0222D668 ; =0x0000270F
	cmp r7, #2
	bne _0222D5BE
	add r6, r6, #1
_0222D5BE:
	add r0, sp, #0xc
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	add r0, sp, #0xc
	mov r1, #0x6d
	bl sub_02013910
	str r0, [r5, #0xc]
	add r0, sp, #0xc
	add r1, r7, #0
	mov r2, #0x6d
	bl sub_02013688
	add r3, r5, #0
	mov r1, #1
	add r2, r7, #0
	add r3, #0x10
	bl sub_02021AC8
	add r1, sp, #8
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #8
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0x1c]
	add r0, sp, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #8]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	add r1, sp, #8
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x30]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0x24
	str r0, [sp, #0x34]
	mov r0, #0
	ldrsh r1, [r1, r0]
	sub r1, #8
	str r0, [sp, #0x40]
	mov r0, #0x6d
	str r1, [sp, #0x38]
	mov r1, #3
	str r0, [sp, #0x48]
	str r7, [sp, #0x44]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0xc]
	add r0, sp, #0x1c
	bl TextOBJ_Create
	mov r1, #1
	str r0, [r5, #8]
	bl sub_020138E0
	add r0, sp, #0xc
	bl RemoveWindow
	ldr r0, [r5, #8]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0222D668: .word 0x0000270F
	thumb_func_end ov40_0222D5AC

