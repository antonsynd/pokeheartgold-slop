#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D7C0
	.extern ov45_02254BB4

	.text

	.text
	thumb_func_start ov45_0222D7C0
ov45_0222D7C0: ; 0x0222D7C0
	ldr r1, _0222D7C8 ; =ov45_02254BB4
	ldrb r0, [r1, r0]
	bx lr
	nop
_0222D7C8: .word ov45_02254BB4
	thumb_func_end ov45_0222D7C0

