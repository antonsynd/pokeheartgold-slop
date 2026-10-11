#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F4410

    .text

	.text
	thumb_func_start ov14_021F4410
ov14_021F4410: ; 0x021F4410
	ldr r1, _021F4420 ; =0x00000414
	ldr r3, _021F4424 ; =sub_020136B4
	ldr r0, [r0, r1]
	mov r1, #0x2f
	mvn r1, r1
	add r2, r1, #0
	add r2, #0x28
	bx r3
	.balign 4, 0
_021F4420: .word 0x00000414
_021F4424: .word sub_020136B4
	thumb_func_end ov14_021F4410

