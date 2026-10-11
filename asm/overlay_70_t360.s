#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243D28
	.extern ov70_022426F4

	.text

	.text
	thumb_func_start ov70_02243D28
ov70_02243D28: ; 0x02243D28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov70_022426F4
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02243D42
	add r0, r0, #1
	cmp r4, r0
	beq _02243D8A
	b _02243D68
_02243D42:
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #0x1e
	str r0, [r5, #0x50]
	sub r0, #0x20
	add r5, #0x44
	strb r0, [r5]
	b _02243D8A
_02243D68:
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #0x1e
	str r0, [r5, #0x50]
	add r5, #0x44
	strb r4, [r5]
_02243D8A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02243D28

