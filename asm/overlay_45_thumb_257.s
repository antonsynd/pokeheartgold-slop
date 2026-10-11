#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D0C8
	.extern ov45_0222CDC4
	.extern ov45_02254B74

	.text

	.text
	thumb_func_start ov45_0222D0C8
ov45_0222D0C8: ; 0x0222D0C8
	ldr r3, _0222D0D0 ; =ov45_0222CDC4
	ldr r2, _0222D0D4 ; =ov45_02254B74
	bx r3
	nop
_0222D0D0: .word ov45_0222CDC4
_0222D0D4: .word ov45_02254B74
	thumb_func_end ov45_0222D0C8

