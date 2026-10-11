#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241DB4
	.public ov70_02243CC8

	.text

	thumb_func_start ov70_02243CC8
ov70_02243CC8: ; 0x02243CC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	bl ov70_02241DB4
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02243CDE
	mov r1, #1
	bl Sprite_SetDrawFlag
_02243CDE:
	ldr r0, [r4, #0x34]
	bl ListMenuItems_Delete
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02243CC8

