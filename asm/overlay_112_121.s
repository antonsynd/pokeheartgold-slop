#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB8C4
	.public ov112_021EB8E8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB8C4
ov112_021EB8C4: ; 0x021EB8C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EB8E4 ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EB8DE
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
_021EB8DE:
	mov r0, #0x18
	pop {r4, pc}
	nop
_021EB8E4: .word 0x0001E524
	thumb_func_end ov112_021EB8C4

	thumb_func_start ov112_021EB8E8
ov112_021EB8E8: ; 0x021EB8E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EB904 ; =0x0001E530
	ldr r0, [r4, r0]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021EB8FE
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
_021EB8FE:
	mov r0, #0x19
	pop {r4, pc}
	nop
_021EB904: .word 0x0001E530
	thumb_func_end ov112_021EB8E8

