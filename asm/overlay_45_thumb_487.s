#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230974

	.text

	.text
	thumb_func_start ov45_02230974
ov45_02230974: ; 0x02230974
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov45_02230974

