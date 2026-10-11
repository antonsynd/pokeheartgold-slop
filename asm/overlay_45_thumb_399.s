#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EDA8
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EDA8
ov45_0222EDA8: ; 0x0222EDA8
	ldr r0, _0222EDC0 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0222EDBA
	mov r0, #1
	bx lr
_0222EDBA:
	mov r0, #0
	bx lr
	nop
_0222EDC0: .word _022577C0
	thumb_func_end ov45_0222EDA8

