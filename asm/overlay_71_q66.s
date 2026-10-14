	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247DEC
	.extern ov71_02247704
	.extern ov71_022480C0
	.extern ov71_02248110
	.extern ov71_0224817C
	.extern ov71_022481C8
	.extern ov71_022481D8

	.text

	.text
	thumb_func_start ov71_02247DEC
ov71_02247DEC: ; 0x02247DEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _02247EC6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247E06: ; jump table
	.short _02247E10 - _02247E06 - 2 ; case 0
	.short _02247E2A - _02247E06 - 2 ; case 1
	.short _02247E50 - _02247E06 - 2 ; case 2
	.short _02247E7C - _02247E06 - 2 ; case 3
	.short _02247EAE - _02247E06 - 2 ; case 4
_02247E10:
	ldr r0, _02247ECC ; =0x000006A7
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xc
	bl ov71_022480C0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247E2A:
	bl ov71_02248110
	cmp r0, #0
	beq _02247EC6
	ldr r0, [r5, #0x10]
	bl Pokepic_Delete
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247E50:
	ldr r0, [r5, #0x40]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _02247EC6
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl ov71_02247704
	mov r1, #0x10
	add r0, r5, #0
	mov r2, #0
	add r3, r1, #0
	bl ov71_022480C0
	add r0, r5, #0
	bl ov71_0224817C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247E7C:
	bl ov71_022481D8
	cmp r0, #2
	bge _02247E8E
	add r0, r5, #0
	bl ov71_022481C8
	cmp r0, #1
	bne _02247EC6
_02247E8E:
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247EAE:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02247EC6
	add r0, r5, #0
	bl ov71_022481C8
	cmp r0, #0
	beq _02247EC6
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02247EC6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02247ECC: .word 0x000006A7
	thumb_func_end ov71_02247DEC

