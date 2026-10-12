#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02242574
	.extern ov70_02242508
	.extern ov70_022434C0
	.extern ov70_02243F00

	.text

	.text
	thumb_func_start ov70_02242574
ov70_02242574: ; 0x02242574
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r6, r1, #0
	mov r1, #4
	bl ov70_02242508
	sub r4, r0, #1
	beq _02242616
	cmp r6, #0
	bge _022425BE
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
	beq _022425B6
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _022425F0
_022425B6:
	add r0, r5, #0
	add r0, #0x5a
	strh r4, [r0]
	b _022425F0
_022425BE:
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
	bge _022425E8
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _022425F0
_022425E8:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_022425F0:
	mov r1, #0x5a
	ldrsh r1, [r5, r1]
	ldr r2, [r5, #0x5c]
	add r0, r5, #0
	bl ov70_022434C0
	ldr r0, [r5, #0x5c]
	mov r1, #4
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r5, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	add r2, #0x40
	bl ov70_02243F00
_02242616:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_02242574

