#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D3C4
	.extern ov45_0222CDC4
	.extern ov45_02254B14

	.text

	.text
	thumb_func_start ov45_0222D3C4
ov45_0222D3C4: ; 0x0222D3C4
	ldr r2, [r1]
	mov r3, #1
	strb r3, [r2, #4]
	ldr r3, _0222D3D0 ; =ov45_0222CDC4
	ldr r2, _0222D3D4 ; =ov45_02254B14
	bx r3
	.balign 4, 0
_0222D3D0: .word ov45_0222CDC4
_0222D3D4: .word ov45_02254B14
	thumb_func_end ov45_0222D3C4

