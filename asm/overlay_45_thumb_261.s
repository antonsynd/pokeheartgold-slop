#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D13C
	.extern ov45_0222CDC4
	.extern ov45_02254B64

	.text

	.text
	thumb_func_start ov45_0222D13C
ov45_0222D13C: ; 0x0222D13C
	ldr r3, _0222D144 ; =ov45_0222CDC4
	ldr r2, _0222D148 ; =ov45_02254B64
	bx r3
	nop
_0222D144: .word ov45_0222CDC4
_0222D148: .word ov45_02254B64
	thumb_func_end ov45_0222D13C

