#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F3608
	.extern ov112_021FF4D4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F3608
ov112_021F3608: ; 0x021F3608
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	bl Save_VarsFlags_Get
	ldr r5, _021F362C ; =ov112_021FF4D4
	add r7, r0, #0
	mov r4, #0
_021F3616:
	ldrh r1, [r5]
	add r0, r7, #0
	bl Save_VarsFlags_CheckFlagInArray
	strb r0, [r6, r4]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #0xa
	blt _021F3616
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F362C: .word ov112_021FF4D4
	thumb_func_end ov112_021F3608

