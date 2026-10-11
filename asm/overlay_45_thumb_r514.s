#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230A44

	.text

	.text
	thumb_func_start ov45_02230A44
ov45_02230A44: ; 0x02230A44
	ldr r3, _02230A48 ; =sub_02018068
	bx r3
	.balign 4, 0
_02230A48: .word sub_02018068
	thumb_func_end ov45_02230A44

