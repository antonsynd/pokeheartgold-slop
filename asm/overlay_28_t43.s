	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225E938
	.extern ov28_0225EA58
	.extern ov28_0225EA84

	.text

	.text
	thumb_func_start ov28_0225E938
ov28_0225E938: ; 0x0225E938
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetState
	cmp r0, #1
	beq _0225E952
	add r0, r5, #0
	bl ov28_0225EA58
	cmp r0, #1
	bne _0225E96C
_0225E952:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	pop {r4, r5, r6, pc}
_0225E96C:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _0225E9DC ; =ov28_0225EA84
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	bne _0225E9DA
	ldr r0, [r5, #0x18]
	bl FieldSystem_GetPlayerAvatar
	add r6, r0, #0
	bl PlayerAvatar_CheckRunningShoesLock
	add r4, r0, #0
	bne _0225E9B8
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl Sprite_SetAnimCtrlSeq
	b _0225E9D0
_0225E9B8:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xb
	bl Sprite_SetAnimCtrlSeq
_0225E9D0:
	mov r1, #1
	add r0, r6, #0
	eor r1, r4
	bl PlayerAvatar_SetRunningShoesLock
_0225E9DA:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225E9DC: .word ov28_0225EA84
	thumb_func_end ov28_0225E938

