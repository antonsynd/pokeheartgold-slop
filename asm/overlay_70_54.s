#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E58
	.public ov70_02239E7C
	.public ov70_02239F78
	.public ov70_0223A0C4
	.public ov70_0223A1A0
	.public ov70_0223A224

	.text

	thumb_func_start ov70_02239E7C
ov70_02239E7C: ; 0x02239E7C
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0223A0C4
	add r0, r4, #0
	bl ov70_0223A224
	add r0, r4, #0
	bl ov70_0223A1A0
	ldr r0, [r4, #4]
	bl ov70_02239F78
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov70_02238E58
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov70_02239E7C

