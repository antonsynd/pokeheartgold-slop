#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CDE4
	.extern ov45_02254E88

	.text

	.text
	thumb_func_start ov45_0222CDE4
ov45_0222CDE4: ; 0x0222CDE4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xd
	blo _0222CDF4
	bl GF_AssertFail
_0222CDF4:
	lsl r3, r4, #2
	add r1, r5, #4
	ldr r4, _0222CE08 ; =ov45_02254E88
	add r1, r1, r3
	ldr r3, [r4, r3]
	add r0, r5, #0
	add r2, r6, #0
	blx r3
	pop {r4, r5, r6, pc}
	nop
_0222CE08: .word ov45_02254E88
	thumb_func_end ov45_0222CDE4

