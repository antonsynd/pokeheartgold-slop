#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_0223F108
	.public ov70_0223F7A4

	.text

	thumb_func_start ov70_0223F108
ov70_0223F108: ; 0x0223F108
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _0223F13E
	ldr r0, _0223F15C ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r1, #7
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223F160 ; =0x000011FC
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	bl ov70_0223F7A4
	b _0223F158
_0223F13E:
	cmp r0, #2
	bne _0223F158
	ldr r0, _0223F15C ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r1, #5
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #2
	str r0, [r4, #0x2c]
_0223F158:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_0223F15C: .word 0x000011C8
_0223F160: .word 0x000011FC
	thumb_func_end ov70_0223F108

