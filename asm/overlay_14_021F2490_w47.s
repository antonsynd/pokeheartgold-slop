#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2BE8

    .text

	.text
	thumb_func_start ov14_021F2BE8
ov14_021F2BE8: ; 0x021F2BE8
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0xbf
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021F2C00
	bl Sprite_DeleteAndFreeResources
	mov r0, #0
	str r0, [r4, r5]
_021F2C00:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2BE8

