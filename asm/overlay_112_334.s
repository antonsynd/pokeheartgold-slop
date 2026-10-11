#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0368
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0368
ov112_021F0368: ; 0x021F0368
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F0390 ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021F038A
	bl IsFanfarePlaying
	cmp r0, #0
	bne _021F038A
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
_021F038A:
	mov r0, #0x23
	pop {r4, pc}
	nop
_021F0390: .word 0x0001E524
	thumb_func_end ov112_021F0368

