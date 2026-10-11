#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E58
	.public ov70_022390FC
	.public ov70_022392E0
	.public ov70_022394A8
	.public ov70_022395C4
	.public ov70_0223963C

	.text

	thumb_func_start ov70_022390FC
ov70_022390FC: ; 0x022390FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A914
	add r0, r4, #0
	bl ov70_022394A8
	add r0, r4, #0
	bl ov70_0223963C
	add r0, r4, #0
	bl ov70_022395C4
	ldr r0, [r4, #4]
	bl ov70_022392E0
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov70_02238E58
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_022390FC

