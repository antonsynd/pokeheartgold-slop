#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230AC0

	.text

	.text
	thumb_func_start ov45_02230AC0
ov45_02230AC0: ; 0x02230AC0
	ldr r3, _02230AC8 ; =sub_020181EC
	add r0, #0xc
	bx r3
	nop
_02230AC8: .word sub_020181EC
	thumb_func_end ov45_02230AC0

