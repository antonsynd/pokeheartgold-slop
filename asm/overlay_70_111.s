#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_0223C8DC
	.public ov70_02241234

	.text

	thumb_func_start ov70_0223C8DC
ov70_0223C8DC: ; 0x0223C8DC
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _0223C90E
	ldr r0, _0223C924 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	add r0, r4, #0
	bl ov70_02241234
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223C91E
_0223C90E:
	cmp r0, #2
	bne _0223C91E
	ldr r0, _0223C924 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #0
	str r0, [r4, #0x2c]
_0223C91E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223C924: .word 0x000011C8
	thumb_func_end ov70_0223C8DC

