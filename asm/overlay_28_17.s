	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DA74
	.extern ov28_0225D92C
	.extern ov28_0225D9BC
	.extern ov28_0225DA1C
	.extern ov28_0225EA9A
	.extern ov28_0225EA9E
	.extern ov28_0225EAA2
	.extern ov28_0225EAA6

	.text

	.text
	thumb_func_start ov28_0225DA74
ov28_0225DA74: ; 0x0225DA74
	push {r4, r5, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #0xe
	mov r1, #8
	bl NARC_New
	add r4, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r0, #0x44
	str r0, [sp, #4]
	mov r0, #0x45
	str r0, [sp, #8]
	mov r0, #4
	ldr r1, _0225DB40 ; =0x000001F2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r1, #0
	str r1, [sp, #0x1c]
	sub r0, #0x92
	sub r1, #0xa2
	add r0, r5, r0
	add r1, r5, r1
	add r2, r4, #0
	mov r3, #0x46
	bl ov28_0225D92C
	add r0, r4, #0
	bl NARC_Delete
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	add r2, sp, #0x20
	mov r3, #1
	bl ov28_0225D9BC
	ldr r3, _0225DB44 ; =ov28_0225EA9A
	add r0, r5, #0
	mov r1, #0
	add r2, sp, #0x20
	bl ov28_0225DA1C
	ldr r3, _0225DB48 ; =ov28_0225EA9E
	add r0, r5, #0
	mov r1, #1
	add r2, sp, #0x20
	bl ov28_0225DA1C
	ldr r3, _0225DB4C ; =ov28_0225EAA2
	add r0, r5, #0
	mov r1, #2
	add r2, sp, #0x20
	bl ov28_0225DA1C
	ldr r3, _0225DB50 ; =ov28_0225EAA6
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0x20
	bl ov28_0225DA1C
	ldr r0, [r5, #0x18]
	bl FieldSystem_GetPlayerAvatar
	bl PlayerAvatar_CheckRunningShoesLock
	cmp r0, #0
	bne _0225DB22
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
	add sp, #0x44
	pop {r4, r5, pc}
_0225DB22:
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
	add sp, #0x44
	pop {r4, r5, pc}
	nop
_0225DB40: .word 0x000001F2
_0225DB44: .word ov28_0225EA9A
_0225DB48: .word ov28_0225EA9E
_0225DB4C: .word ov28_0225EAA2
_0225DB50: .word ov28_0225EAA6
	thumb_func_end ov28_0225DA74

