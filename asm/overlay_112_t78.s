#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA51C
	.extern ov112_021FECE4
	.extern ov112_021FECE5
	.extern ov112_021FECE6
	.extern ov112_021FECE7
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA51C
ov112_021EA51C: ; 0x021EA51C
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	ldr r1, _021EA55C ; =ov112_021FECE4
	ldr r2, _021EA560 ; =ov112_021FECE5
	add r5, r0, #0
	ldr r0, _021EA564 ; =0x0001E530
	mov r3, #1
	ldrb r1, [r1, r4]
	ldrb r2, [r2, r4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r1, _021EA568 ; =ov112_021FECE6
	ldr r0, _021EA564 ; =0x0001E530
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetAnim
	ldr r1, _021EA56C ; =ov112_021FECE7
	ldr r0, _021EA564 ; =0x0001E530
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPaletteOverride
	ldr r0, _021EA564 ; =0x0001E530
	mov r1, #1
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	nop
_021EA55C: .word ov112_021FECE4
_021EA560: .word ov112_021FECE5
_021EA564: .word 0x0001E530
_021EA568: .word ov112_021FECE6
_021EA56C: .word ov112_021FECE7
	thumb_func_end ov112_021EA51C

