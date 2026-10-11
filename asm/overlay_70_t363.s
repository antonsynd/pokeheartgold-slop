#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243DDC
	.extern ov70_022428C0

	.text

	.text
	thumb_func_start ov70_02243DDC
ov70_02243DDC: ; 0x02243DDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov70_022428C0
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02243DF6
	add r0, r0, #1
	cmp r4, r0
	beq _02243E6E
	b _02243E2C
_02243DF6:
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #0x21
	str r0, [r5, #0x50]
	sub r0, #0x23
	add r5, #0x45
	strb r0, [r5]
	b _02243E6E
_02243E2C:
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #0x21
	str r0, [r5, #0x50]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x34]
	add r5, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	strb r0, [r5]
_02243E6E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02243DDC

