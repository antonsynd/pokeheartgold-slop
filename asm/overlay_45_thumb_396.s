#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EC90
	.extern _022577C0
	.extern ov45_0222FB5C

	.text

	.text
	thumb_func_start ov45_0222EC90
ov45_0222EC90: ; 0x0222EC90
	add r1, r0, #0
	ldr r0, _0222EC9C ; =_022577C0
	ldr r3, _0222ECA0 ; =ov45_0222FB5C
	ldr r0, [r0]
	mov r2, #0
	bx r3
	.balign 4, 0
_0222EC9C: .word _022577C0
_0222ECA0: .word ov45_0222FB5C
	thumb_func_end ov45_0222EC90

