#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F34C8
	.extern ov14_021F2A9C

    .text

	.text
	thumb_func_start ov14_021F34C8
ov14_021F34C8: ; 0x021F34C8
	add r3, r0, r1
	ldr r1, _021F34D4 ; =0x00004094
	ldrb r1, [r3, r1]
	ldr r3, _021F34D8 ; =ov14_021F2A9C
	bx r3
	nop
_021F34D4: .word 0x00004094
_021F34D8: .word ov14_021F2A9C
	thumb_func_end ov14_021F34C8

