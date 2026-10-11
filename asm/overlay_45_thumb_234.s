#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CD04
	.extern ov45_02254A84

	.text

	.text
	thumb_func_start ov45_0222CD04
ov45_0222CD04: ; 0x0222CD04
	cmp r0, #0x10
	bhs _0222CD10
	lsl r1, r0, #2
	ldr r0, _0222CD14 ; =ov45_02254A84
	ldrh r0, [r0, r1]
	bx lr
_0222CD10:
	ldr r0, _0222CD18 ; =0x0000FFFF
	bx lr
	.balign 4, 0
_0222CD14: .word ov45_02254A84
_0222CD18: .word 0x0000FFFF
	thumb_func_end ov45_0222CD04

