#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223AB00
	.extern ov70_02238E58
	.extern ov70_0223ABD8
	.extern ov70_0223ACE4
	.extern ov70_0223AE40
	.extern ov70_0223AF30

	.text

	.text
	thumb_func_start ov70_0223AB00
ov70_0223AB00: ; 0x0223AB00
	push {r4, lr}
	ldr r1, _0223AB38 ; =0x00001208
	add r4, r0, #0
	mov r2, #0
	str r2, [r4, r1]
	bl ov70_0223ACE4
	add r0, r4, #0
	bl ov70_0223AF30
	add r0, r4, #0
	bl ov70_0223AE40
	ldr r0, [r4, #4]
	bl ov70_0223ABD8
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov70_02238E58
	mov r0, #1
	pop {r4, pc}
	nop
_0223AB38: .word 0x00001208
	thumb_func_end ov70_0223AB00

