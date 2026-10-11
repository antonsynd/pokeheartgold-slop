#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F6E4
	.public ov70_0223F7A4

	.text

	thumb_func_start ov70_0223F7A4
ov70_0223F7A4: ; 0x0223F7A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_0223F6E4
	mov r0, #0x2e
	lsl r0, r0, #6
	add r1, r5, #0
	ldrh r2, [r4, r0]
	add r1, #0xec
	strh r2, [r1]
	add r1, r0, #2
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xee
	strh r2, [r1]
	add r1, r0, #4
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xf0
	strh r2, [r1]
	add r1, r0, #6
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xf2
	strh r2, [r1]
	add r0, #8
	ldrh r0, [r4, r0]
	add r5, #0xf4
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_0223F7A4

