#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EC7C
	.extern _022577C0
	.extern ov45_0222FB24

	.text

	.text
	thumb_func_start ov45_0222EC7C
ov45_0222EC7C: ; 0x0222EC7C
	add r1, r0, #0
	ldr r0, _0222EC88 ; =_022577C0
	ldr r3, _0222EC8C ; =ov45_0222FB24
	ldr r0, [r0]
	mov r2, #1
	bx r3
	.balign 4, 0
_0222EC88: .word _022577C0
_0222EC8C: .word ov45_0222FB24
	thumb_func_end ov45_0222EC7C

