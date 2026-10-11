#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC414
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC414
ov112_021EC414: ; 0x021EC414
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EC430 ; =0x0001E530
	ldr r0, [r4, r0]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021EC42A
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
_021EC42A:
	mov r0, #0x21
	pop {r4, pc}
	nop
_021EC430: .word 0x0001E530
	thumb_func_end ov112_021EC414

