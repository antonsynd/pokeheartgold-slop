#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2A60

    .text

	.text
	thumb_func_start ov14_021F2A60
ov14_021F2A60: ; 0x021F2A60
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021F2A70 ; =ManagedSprite_SetPriority
	add r1, r2, #0
	bx r3
	.balign 4, 0
_021F2A70: .word ManagedSprite_SetPriority
	thumb_func_end ov14_021F2A60

