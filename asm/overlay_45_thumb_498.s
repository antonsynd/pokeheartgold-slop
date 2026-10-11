#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230A6C
	.extern ov45_02230AA4

	.text

	.text
	thumb_func_start ov45_02230A6C
ov45_02230A6C: ; 0x02230A6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _02230A9A
	add r4, r6, #0
_02230A7A:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov45_02230AA4
	cmp r0, #0
	bne _02230A90
	mov r0, #0x90
	ldr r1, [r5, #0x10]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_02230A90:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _02230A7A
_02230A9A:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov45_02230A6C

