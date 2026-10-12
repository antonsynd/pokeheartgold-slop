	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225E810
	.extern ov28_0225EB7C

	.text

	.text
	thumb_func_start ov28_0225E810
ov28_0225E810: ; 0x0225E810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r1, r0, #0
	add r1, #0xd2
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0225E828
	mov r4, #4
	b _0225E890
_0225E828:
	bl FieldSystem_IsPlayerMovementAllowed
	cmp r0, #0
	ldr r0, [r5, #0x18]
	bne _0225E860
	bl FieldSystem_GetPlayerAvatar
	bl PlayerAvatar_GetMapObject
	add r4, r0, #0
	bl MapObject_GetSpriteID
	sub r0, #0xbc
	cmp r0, #1
	bhi _0225E858
	add r0, r4, #0
	bl sub_0205F330
	cmp r0, #1
	bne _0225E854
	mov r4, #3
	b _0225E890
_0225E854:
	mov r4, #4
	b _0225E890
_0225E858:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	b _0225E890
_0225E860:
	bl ov01_021E7F54
	add r4, r0, #0
	cmp r4, #1
	bne _0225E890
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	bl FieldSystem_GetFacingObject
	ldr r0, [sp]
	bl MapObject_GetScriptID
	bl ov01_021F6BD0
	cmp r0, #1
	beq _0225E88E
	ldr r0, [sp]
	bl MapObject_GetSpriteID
	bl ov01_021F6BB0
	cmp r0, #1
	bne _0225E890
_0225E88E:
	mov r4, #0
_0225E890:
	mov r1, #0xcd
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r4, r0
	beq _0225E8B0
	mov r0, #0x6d
	lsl r0, r0, #2
	str r4, [r5, r1]
	add r2, r5, r0
	ldr r1, [r5, r1]
	ldr r0, _0225E8B4 ; =ov28_0225EB7C
	ldrb r0, [r0, r1]
	lsl r0, r0, #4
	add r0, r2, r0
	bl ScheduleWindowCopyToVram
_0225E8B0:
	pop {r3, r4, r5, pc}
	nop
_0225E8B4: .word ov28_0225EB7C
	thumb_func_end ov28_0225E810

