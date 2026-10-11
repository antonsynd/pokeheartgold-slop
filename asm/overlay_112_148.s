#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBF4C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBF4C
ov112_021EBF4C: ; 0x021EBF4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EBF6C ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EBF66
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
_021EBF66:
	mov r0, #0xc
	pop {r4, pc}
	nop
_021EBF6C: .word 0x0001E524
	thumb_func_end ov112_021EBF4C

