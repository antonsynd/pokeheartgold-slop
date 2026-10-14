#include "config.h"
	.include "macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F898
	.extern ov45_0222FB24

	.text

	.text
	thumb_func_start ov45_0222F898
ov45_0222F898: ; 0x0222F898
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	mov r2, #0
	add r4, r0, #0
	add r6, r3, #0
	bl ov45_0222FB24
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _0222F8B4
	bl GF_AssertFail
_0222F8B4:
	ldr r2, [r4, #0x28]
	ldr r5, [r4, #0x24]
	add r4, r2, #0
	mul r4, r7
	cmp r2, r6
	bls _0222F8CA
	add r0, r5, r4
	mov r1, #0
	bl memset
	b _0222F8CC
_0222F8CA:
	add r6, r2, #0
_0222F8CC:
	ldr r1, [sp]
	add r0, r5, r4
	add r2, r6, #0
	bl memcpy
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov45_0222F898

