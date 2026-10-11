#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223ED58
	.extern ov70_02238D84
	.extern ov70_0223E8E8

	.text

	.text
	thumb_func_start ov70_0223ED58
ov70_0223ED58: ; 0x0223ED58
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223ED80
	ldr r0, _0223ED88 ; =0x00000F0F
	mov r1, #9
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0223E8E8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ov70_02238D84
_0223ED80:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223ED88: .word 0x00000F0F
	thumb_func_end ov70_0223ED58

