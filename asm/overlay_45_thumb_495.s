#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230A4C

	.text

	.text
	thumb_func_start ov45_02230A4C
ov45_02230A4C: ; 0x02230A4C
	ldr r3, _02230A54 ; =NNS_G3dMdlSetMdlAlphaAll
	str r1, [r0, #0x10]
	ldr r0, [r0, #8]
	bx r3
	.balign 4, 0
_02230A54: .word NNS_G3dMdlSetMdlAlphaAll
	thumb_func_end ov45_02230A4C

