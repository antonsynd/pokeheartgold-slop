#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230994

	.text

	.text
	thumb_func_start ov45_02230994
ov45_02230994: ; 0x02230994
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end ov45_02230994

