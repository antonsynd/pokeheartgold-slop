#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ECA88
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ECA88
ov112_021ECA88: ; 0x021ECA88
	push {r3, r4}
	ldr r2, _021ECAA4 ; =0x0001EC50
	add r1, r2, #4
	ldr r3, [r0, r1]
	ldr r4, [r0, r2]
	lsl r1, r3, #2
	add r1, r3, r1
	add r1, r4, r1
	add r0, r0, r1
	add r2, #8
	ldrsb r0, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_021ECAA4: .word 0x0001EC50
	thumb_func_end ov112_021ECA88

