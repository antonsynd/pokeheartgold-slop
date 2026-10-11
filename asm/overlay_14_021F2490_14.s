#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F29C4

    .text

	thumb_func_start ov14_021F29C4
ov14_021F29C4: ; 0x021F29C4
	push {r4, r5, r6, lr}
	mov r6, #0xbf
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021F29CE:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F29D8
	bl ManagedSprite_TickFrame
_021F29D8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blo _021F29CE
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F29C4

