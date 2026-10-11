#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E58
	.public ov70_0223F9D4
	.public ov70_0223FB34
	.public ov70_0223FC30
	.public ov70_0223FC58
	.public ov70_02241380

	.text

	thumb_func_start ov70_0223F9D4
ov70_0223F9D4: ; 0x0223F9D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223FA04 ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	beq _0223F9E8
	add r0, r4, #0
	bl ov70_02241380
_0223F9E8:
	add r0, r4, #0
	bl ov70_0223FC58
	add r0, r4, #0
	bl ov70_0223FC30
	ldr r0, [r4, #4]
	bl ov70_0223FB34
	add r0, r4, #0
	bl ov70_02238E58
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_0223FA04: .word 0x0400106C
	thumb_func_end ov70_0223F9D4

