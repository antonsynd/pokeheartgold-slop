#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_0223DE28
	.public ov70_0223DE6C

	.text

	thumb_func_start ov70_0223DE28
ov70_0223DE28: ; 0x0223DE28
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _0223DE44
	ldr r0, _0223DE64 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	add r0, r4, #0
	bl ov70_0223DE6C
	b _0223DE5E
_0223DE44:
	cmp r0, #2
	bne _0223DE5E
	ldr r0, _0223DE64 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _0223DE68 ; =0x00001158
	mov r1, #0
	add r0, r4, r0
	bl ClearFrameAndWindow2
	mov r0, #1
	str r0, [r4, #0x2c]
_0223DE5E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223DE64: .word 0x000011C8
_0223DE68: .word 0x00001158
	thumb_func_end ov70_0223DE28

