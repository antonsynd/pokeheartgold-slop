#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CF40
	.extern ov45_0222AD2C
	.extern ov45_0222AD3C
	.extern ov45_0222CDC4
	.extern ov45_02254B94

	.text

	.text
	thumb_func_start ov45_0222CF40
ov45_0222CF40: ; 0x0222CF40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, [r6]
	ldr r0, [r5, #0x3c]
	bl ov45_0222AD2C
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl ov45_0222AD3C
	str r0, [r4, #8]
	ldr r2, _0222CF64 ; =ov45_02254B94
	add r0, r5, #0
	add r1, r6, #0
	bl ov45_0222CDC4
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222CF64: .word ov45_02254B94
	thumb_func_end ov45_0222CF40

