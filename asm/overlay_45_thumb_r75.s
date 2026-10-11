#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222AB28
	.extern ov45_0222C95C

	.text

	.text
	thumb_func_start ov45_0222AB28
ov45_0222AB28: ; 0x0222AB28
	mov r2, #0xf3
	lsl r2, r2, #2
	ldr r3, _0222AB34 ; =ov45_0222C95C
	add r0, r0, r2
	bx r3
	nop
_0222AB34: .word ov45_0222C95C
	thumb_func_end ov45_0222AB28

