#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE594
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE594
ov112_021EE594: ; 0x021EE594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EE5B4 ; =0x0001E530
	ldr r0, [r4, r0]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021EE5B0
	add r0, r4, #0
	bl ov112_021EA570
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
_021EE5B0:
	mov r0, #0x41
	pop {r4, pc}
	.balign 4, 0
_021EE5B4: .word 0x0001E530
	thumb_func_end ov112_021EE594

