	.include "macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238408
	.extern ov72_022383DC
	.extern ov72_0223B338
	.extern ov72_0223B364

	.text

	.text
	thumb_func_start ov72_02238408
ov72_02238408: ; 0x02238408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _02238638 ; =0x00000D24
	str r1, [sp, #0x10]
	ldr r0, [r6, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r6, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r6, r0]
	add r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r6, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl CreateSpriteResourcesHeader
	mov r1, #1
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, _02238638 ; =0x00000D24
	str r0, [sp, #0x10]
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r6, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, r3
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #2
	str r1, [sp]
	sub r0, r1, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, _02238638 ; =0x00000D24
	str r0, [sp, #0x10]
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r6, r2]
	add r3, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, r3
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r2, _0223863C ; =0x00000D64
	add r0, sp, #0x2c
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #2
	bl ov72_022383DC
	ldr r4, _02238640 ; =ov72_0223B364
	mov r7, #0
	add r5, r6, #0
_022384D4:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #2]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, _02238644 ; =0x00000DF4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02238644 ; =0x00000DF4
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02238644 ; =0x00000DF4
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #3
	blt _022384D4
	ldr r2, _02238648 ; =0x00000D88
	add r0, sp, #0x2c
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #2
	bl ov72_022383DC
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r0, _0223864C ; =0x00151000
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0xe
	lsl r1, r1, #8
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0xe
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xe
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r0, _02238650 ; =0x00129000
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, _02238654 ; =0x00000E04
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02238654 ; =0x00000E04
	mov r1, #0
	ldr r0, [r6, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02238654 ; =0x00000E04
	mov r1, #0
	ldr r0, [r6, r0]
	bl Sprite_SetDrawFlag
	ldr r4, _02238658 ; =ov72_0223B338
	mov r7, #0
	add r5, r6, #0
_02238592:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #2]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, _0223865C ; =0x00000E08
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0223865C ; =0x00000E08
	mov r1, #3
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223865C ; =0x00000E08
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetPriority
	ldr r0, _0223865C ; =0x00000E08
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #3
	blt _02238592
	ldr r2, _02238660 ; =0x00000DAC
	add r0, sp, #0x2c
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #2
	bl ov72_022383DC
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x34]
	ldr r0, _0223864C ; =0x00151000
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, _02238664 ; =0x00000E14
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02238664 ; =0x00000E14
	mov r1, #1
	ldr r0, [r6, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02238664 ; =0x00000E14
	mov r1, #0
	ldr r0, [r6, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	bl sub_0203A880
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02238638: .word 0x00000D24
_0223863C: .word 0x00000D64
_02238640: .word ov72_0223B364
_02238644: .word 0x00000DF4
_02238648: .word 0x00000D88
_0223864C: .word 0x00151000
_02238650: .word 0x00129000
_02238654: .word 0x00000E04
_02238658: .word ov72_0223B338
_0223865C: .word 0x00000E08
_02238660: .word 0x00000DAC
_02238664: .word 0x00000E14
	thumb_func_end ov72_02238408

