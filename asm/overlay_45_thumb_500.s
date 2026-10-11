#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230AB4

	.text

	.text
	thumb_func_start ov45_02230AB4
ov45_02230AB4: ; 0x02230AB4
	ldr r3, _02230ABC ; =memset
	mov r1, #0
	mov r2, #0x90
	bx r3
	.balign 4, 0
_02230ABC: .word memset
	thumb_func_end ov45_02230AB4

