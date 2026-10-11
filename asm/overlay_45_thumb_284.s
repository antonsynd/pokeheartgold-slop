#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D434
	.extern ov45_0222CDC4
	.extern ov45_02254B04

	.text

	.text
	thumb_func_start ov45_0222D434
ov45_0222D434: ; 0x0222D434
	ldr r3, [r1]
	str r2, [r3, #8]
	ldr r3, _0222D440 ; =ov45_0222CDC4
	ldr r2, _0222D444 ; =ov45_02254B04
	bx r3
	nop
_0222D440: .word ov45_0222CDC4
_0222D444: .word ov45_02254B04
	thumb_func_end ov45_0222D434

