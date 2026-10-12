#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022437C8
	.extern ov70_022429B8

	.text

	.text
	thumb_func_start ov70_022437C8
ov70_022437C8: ; 0x022437C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x64
	bl ov70_022429B8
	add r4, r0, #0
	cmp r4, #0xa
	beq _0224380E
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022437EA
	add r0, r0, #1
	cmp r4, r0
	beq _02243840
	b _02243832
_022437EA:
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #0x12
	str r0, [r5, #0x50]
	sub r0, #0x13
	strh r0, [r5, #0x3c]
	b _02243840
_0224380E:
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #0x12
	str r0, [r5, #0x50]
	sub r0, #0x14
	strh r0, [r5, #0x3c]
	b _02243840
_02243832:
	cmp r4, #8
	bls _0224383A
	bl GF_AssertFail
_0224383A:
	strh r4, [r5, #0x3c]
	mov r0, #0x12
	str r0, [r5, #0x4c]
_02243840:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_022437C8

