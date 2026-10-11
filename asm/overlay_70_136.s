#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_0223DD94

	.text

	thumb_func_start ov70_0223DD94
ov70_0223DD94: ; 0x0223DD94
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _0223DDB8
	ldr r0, _0223DDCC ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #2
	mov r1, #0
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	b _0223DDC8
_0223DDB8:
	cmp r0, #2
	bne _0223DDC8
	ldr r0, _0223DDCC ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #0
	str r0, [r4, #0x2c]
_0223DDC8:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_0223DDCC: .word 0x000011C8
	thumb_func_end ov70_0223DD94

