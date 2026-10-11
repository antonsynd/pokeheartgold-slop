#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230978
	.extern ov45_02230E28

	.text

	.text
	thumb_func_start ov45_02230978
ov45_02230978: ; 0x02230978
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	ldrb r2, [r0]
	mov r3, #0xc0
	lsr r1, r1, #0x18
	bic r2, r3
	orr r1, r2
	ldr r3, _02230990 ; =ov45_02230E28
	strb r1, [r0]
	bx r3
	nop
_02230990: .word ov45_02230E28
	thumb_func_end ov45_02230978

