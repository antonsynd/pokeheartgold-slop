#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02242BBC
	.extern ov70_02242508
	.extern ov70_0224352C
	.extern ov70_02243F00

	.text

	.text
	thumb_func_start ov70_02242BBC
ov70_02242BBC: ; 0x02242BBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r6, r1, #0
	mov r1, #5
	bl ov70_02242508
	sub r4, r0, #1
	beq _02242C5E
	cmp r6, #0
	bge _02242C06
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x14]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _02242BFE
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242C38
_02242BFE:
	add r0, r5, #0
	add r0, #0x5a
	strh r4, [r0]
	b _02242C38
_02242C06:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x10]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bge _02242C30
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242C38
_02242C30:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_02242C38:
	mov r1, #0x5a
	ldrsh r1, [r5, r1]
	ldr r2, [r5, #0x5c]
	add r0, r5, #0
	bl ov70_0224352C
	ldr r0, [r5, #0x5c]
	mov r1, #5
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r5, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	add r2, #0x50
	bl ov70_02243F00
_02242C5E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_02242BBC

