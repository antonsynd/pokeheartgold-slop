#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230A5C

	.text

	.text
	thumb_func_start ov45_02230A5C
ov45_02230A5C: ; 0x02230A5C
	ldr r3, _02230A68 ; =sub_020181B0
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_02230A68: .word sub_020181B0
	thumb_func_end ov45_02230A5C

