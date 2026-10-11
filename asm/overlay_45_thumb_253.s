#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D028
	.extern ov45_0222A214
	.extern ov45_0222A22C
	.extern ov45_0222CDC4
	.extern ov45_02254B84

	.text

	.text
	thumb_func_start ov45_0222D028
ov45_0222D028: ; 0x0222D028
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, [r6]
	ldr r0, [r5, #0x3c]
	bl ov45_0222A214
	str r0, [r4]
	ldr r0, [r5, #0x3c]
	bl ov45_0222A22C
	ldr r0, [r0]
	ldr r2, _0222D050 ; =ov45_02254B84
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl ov45_0222CDC4
	pop {r4, r5, r6, pc}
	nop
_0222D050: .word ov45_02254B84
	thumb_func_end ov45_0222D028

