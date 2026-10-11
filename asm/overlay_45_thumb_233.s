#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CCE4
	.extern ov45_02254A84

	.text

	.text
	thumb_func_start ov45_0222CCE4
ov45_0222CCE4: ; 0x0222CCE4
	ldr r3, _0222CD00 ; =ov45_02254A84
	mov r2, #0
_0222CCE8:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222CCF2
	add r0, r2, #0
	bx lr
_0222CCF2:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _0222CCE8
	mov r0, #0x10
	bx lr
	nop
_0222CD00: .word ov45_02254A84
	thumb_func_end ov45_0222CCE4

