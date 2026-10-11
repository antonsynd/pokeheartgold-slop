#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D4CC
	.extern ov45_0222CDC4
	.extern ov45_02254B44

	.text

	.text
	thumb_func_start ov45_0222D4CC
ov45_0222D4CC: ; 0x0222D4CC
	ldr r3, _0222D4D4 ; =ov45_0222CDC4
	ldr r2, _0222D4D8 ; =ov45_02254B44
	bx r3
	nop
_0222D4D4: .word ov45_0222CDC4
_0222D4D8: .word ov45_02254B44
	thumb_func_end ov45_0222D4CC

