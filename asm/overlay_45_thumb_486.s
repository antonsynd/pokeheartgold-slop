#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230968

	.text

	.text
	thumb_func_start ov45_02230968
ov45_02230968: ; 0x02230968
	ldrb r2, [r0, #1]
	mov r1, #1
	bic r2, r1
	strb r2, [r0, #1]
	bx lr
	.balign 4, 0
	thumb_func_end ov45_02230968

