#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F78C
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F78C
ov45_0222F78C: ; 0x0222F78C
	ldr r1, _0222F7A0 ; =_022577C0
	ldr r0, _0222F7A4 ; =0x00000133
	ldr r2, [r1]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1]
	sub r0, r0, #1
	strb r3, [r1, r0]
	bx lr
	nop
_0222F7A0: .word _022577C0
_0222F7A4: .word 0x00000133
	thumb_func_end ov45_0222F78C

