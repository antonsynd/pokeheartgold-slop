#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230A58

	.text

	.text
	thumb_func_start ov45_02230A58
ov45_02230A58: ; 0x02230A58
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov45_02230A58

