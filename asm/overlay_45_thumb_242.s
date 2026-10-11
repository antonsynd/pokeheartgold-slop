#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CE0C
	.extern _02254E20

	.text

	.text
	thumb_func_start ov45_0222CE0C
ov45_0222CE0C: ; 0x0222CE0C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xd
	blo _0222CE1A
	bl GF_AssertFail
_0222CE1A:
	ldr r1, _0222CE28 ; =_02254E20
	lsl r2, r5, #2
	add r0, r4, #4
	ldr r1, [r1, r2]
	add r0, r0, r2
	blx r1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222CE28: .word _02254E20
	thumb_func_end ov45_0222CE0C

