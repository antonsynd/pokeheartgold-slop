#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_0223A324
	.public ov70_0223A874

	.text

	thumb_func_start ov70_0223A324
ov70_0223A324: ; 0x0223A324
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _0223A354
	ldr r0, _0223A378 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223A37C ; =0x000011FC
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	bl ov70_02238E50
	add r0, r4, #0
	bl ov70_0223A874
	b _0223A372
_0223A354:
	cmp r0, #2
	bne _0223A372
	ldr r0, _0223A378 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _0223A380 ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	str r1, [r4, #0x2c]
	bl ClearFrameAndWindow2
	add r0, r4, #0
	bl ov70_0223A874
_0223A372:
	mov r0, #3
	pop {r4, pc}
	nop
_0223A378: .word 0x000011C8
_0223A37C: .word 0x000011FC
_0223A380: .word 0x00000F18
	thumb_func_end ov70_0223A324

