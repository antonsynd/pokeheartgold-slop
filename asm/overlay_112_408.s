#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F3630
	.extern ov112_021FF4D4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F3630
ov112_021F3630: ; 0x021F3630
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	bl Save_VarsFlags_Get
	ldr r5, _021F3660 ; =ov112_021FF4D4
	add r6, r0, #0
	mov r4, #0
_021F363E:
	ldrb r0, [r7, r4]
	cmp r0, #0
	beq _021F364E
	ldrh r1, [r5]
	add r0, r6, #0
	bl Save_VarsFlags_SetFlagInArray
	b _021F3656
_021F364E:
	ldrh r1, [r5]
	add r0, r6, #0
	bl Save_VarsFlags_ClearFlagInArray
_021F3656:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #0xa
	blt _021F363E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3660: .word ov112_021FF4D4
	thumb_func_end ov112_021F3630

