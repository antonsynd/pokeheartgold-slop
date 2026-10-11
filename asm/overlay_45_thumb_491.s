#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_022309C4

	.text

	.text
	thumb_func_start ov45_022309C4
ov45_022309C4: ; 0x022309C4
	cmp r0, #0
	bne _022309CA
	add r1, r1, #4
_022309CA:
	add r0, r1, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov45_022309C4

