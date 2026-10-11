#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_022309E8

	.text

	.text
	thumb_func_start ov45_022309E8
ov45_022309E8: ; 0x022309E8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, sp, #0
	bl ov49_02258830
	ldr r0, [sp]
	str r0, [r4]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #4]
	cmp r0, #0
	beq _02230A22
	add r2, r0, #0
	add r2, #8
	beq _02230A16
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02230A16
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02230A18
_02230A16:
	mov r1, #0
_02230A18:
	cmp r1, #0
	beq _02230A22
	ldr r1, [r1]
	add r0, r0, r1
	b _02230A24
_02230A22:
	mov r0, #0
_02230A24:
	str r0, [r4, #8]
	ldr r0, [r4]
	bl NNS_G3dGetTex
	str r0, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl GF3dRender_BindModelSet
	ldr r0, [r4, #8]
	mov r1, #0x14
	bl NNS_G3dMdlSetMdlPolygonIDAll
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov45_022309E8

