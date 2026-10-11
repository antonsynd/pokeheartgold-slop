	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A594
	.public ov27_0225A61C
	.extern ov27_0225BD44
	.extern ov27_0225D108

	.text

	.text
	thumb_func_start ov27_0225A594
ov27_0225A594: ; 0x0225A594
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r0, r4, #0
	bl ov27_0225BD44
	cmp r0, #0
	beq _0225A5A8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0225A5A8:
	add r0, r4, #0
	bl FieldSystem_IsPlayerMovementAllowed
	cmp r0, #0
	bne _0225A5E6
	add r0, r4, #0
	bl FieldSystem_GetPlayerAvatar
	bl PlayerAvatar_GetMapObject
	add r7, r0, #0
	bl sub_0205F330
	add r6, r0, #0
	add r0, r7, #0
	bl MapObject_GetSpriteID
	sub r0, #0xbc
	cmp r0, #1
	bhi _0225A5DC
	cmp r6, #1
	bne _0225A5D8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0225A5D8:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0225A5DC:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _0225A61A
_0225A5E6:
	add r0, r4, #0
	bl ov01_021E7F54
	add r5, r0, #0
	cmp r5, #1
	bne _0225A618
	add r0, r4, #0
	add r1, sp, #0
	bl FieldSystem_GetFacingObject
	ldr r0, [sp]
	bl MapObject_GetScriptID
	bl ov01_021F6BD0
	cmp r0, #0
	bne _0225A616
	ldr r0, [sp]
	bl MapObject_GetSpriteID
	bl ov01_021F6BB0
	cmp r0, #0
	beq _0225A618
_0225A616:
	mov r5, #0
_0225A618:
	add r0, r5, #0
_0225A61A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov27_0225A594

	thumb_func_start ov27_0225A61C
ov27_0225A61C: ; 0x0225A61C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r6, _0225A664 ; =ov27_0225D108
	mov r3, #0
	ldrb r4, [r6, r4]
	str r3, [sp]
	mov r2, #0x3d
	lsl r4, r4, #2
	ldr r0, _0225A668 ; =0x000F0100
	str r3, [sp, #4]
	str r0, [sp, #8]
	lsl r2, r2, #4
	add r0, r5, r2
	str r3, [sp, #0xc]
	add r4, r5, r4
	add r2, #0xe0
	ldr r2, [r4, r2]
	mov r1, #4
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225A664: .word ov27_0225D108
_0225A668: .word 0x000F0100
	thumb_func_end ov27_0225A61C

