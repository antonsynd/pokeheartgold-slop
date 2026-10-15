	.include "macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DC2C
	.extern ov28_0225E1A4
	.extern ov28_0225E31C
	.extern ov28_0225E3BC
	.extern ov28_0225E43C
	.extern ov28_0225E578
	.extern ov28_0225E730
	.extern ov28_0225E7D4
	.extern ov28_0225E900
	.extern ov28_0225E938
	.extern ov28_0225E9E0
	.extern ov28_0225EA88

	.text

	.text
	thumb_func_start ov28_0225DC2C
ov28_0225DC2C: ; 0x0225DC2C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	add r1, r0, #0
	add r1, #0xd2
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _0225DC56
	bl FieldSystem_IsPlayerMovementAllowed
	cmp r0, #0
	beq _0225DC56
	ldr r2, [r4, #0x18]
	add r0, r2, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x80
	add r2, #0xd2
	bic r1, r0
	strb r1, [r2]
_0225DC56:
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225DC76
	ldr r0, _0225DD1C ; =ov28_0225EA88
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225DC76
	mov r0, #0xcf
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0225DC76:
	ldr r0, [r4, #0x18]
	bl FieldSystem_TaskIsRunning
	cmp r0, #1
	beq _0225DC98
	ldr r0, _0225DD1C ; =ov28_0225EA88
	bl TouchscreenHitbox_FindHitboxAtTouchHeld
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225DC98
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225DCD0
_0225DC98:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov28_0225E31C
	add r0, r4, #0
	mov r1, #0
	bl ov28_0225E578
	mov r2, #0x93
	lsl r2, r2, #2
	ldrh r1, [r4, r2]
	ldr r0, _0225DD20 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r4, r2]
	add r0, r2, #0
	mov r1, #0
	add r0, #0xec
	strh r1, [r4, r0]
	add r0, r2, #0
	add r0, #0xee
	strh r1, [r4, r0]
	add r2, #0xf0
	ldr r0, _0225DD24 ; =0x0000093D
	str r1, [r4, r2]
	bl StopSE
	b _0225DCF6
_0225DCD0:
	cmp r0, #1
	bne _0225DCF6
	add r0, r4, #0
	bl ov28_0225E7D4
	add r0, r4, #0
	bl ov28_0225E1A4
	add r0, r4, #0
	mov r1, #1
	bl ov28_0225E31C
	add r0, r4, #0
	mov r1, #1
	bl ov28_0225E578
	add r0, r4, #0
	bl ov28_0225E730
_0225DCF6:
	add r0, r4, #0
	bl ov28_0225E3BC
	add r0, r4, #0
	bl ov28_0225E43C
	add r0, r4, #0
	bl ov28_0225E900
	add r0, r4, #0
	bl ov28_0225E938
	add r0, r4, #0
	bl ov28_0225E9E0
	ldr r0, [r4, #0x24]
	bl SpriteList_RenderAndAnimateSprites
	pop {r4, pc}
	.balign 4, 0
_0225DD1C: .word ov28_0225EA88
_0225DD20: .word 0xFFFF7FFF
_0225DD24: .word 0x0000093D
	thumb_func_end ov28_0225DC2C

