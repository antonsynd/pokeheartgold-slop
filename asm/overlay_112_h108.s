#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA6B8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA6B8
ov112_021EA6B8: ; 0x021EA6B8
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021EA6D4 ; =0x0001E530
	ldr r0, [r1, r0]
	lsl r1, r2, #0x10
	lsl r2, r3, #0x10
	mov r3, #1
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, pc}
	.balign 4, 0
_021EA6D4: .word 0x0001E530
	thumb_func_end ov112_021EA6B8

