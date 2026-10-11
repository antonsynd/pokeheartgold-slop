#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230AA4

	.text

	.text
	thumb_func_start ov45_02230AA4
ov45_02230AA4: ; 0x02230AA4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02230AAE
	mov r0, #1
	bx lr
_02230AAE:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov45_02230AA4

