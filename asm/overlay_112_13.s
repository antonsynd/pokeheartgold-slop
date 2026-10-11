#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5E18
	.extern ov112_021FFAA4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5E18
ov112_021E5E18: ; 0x021E5E18
	ldr r1, _021E5E24 ; =ov112_021FFAA4
	ldr r2, [r1, #0x14]
	cmp r2, #0
	bne _021E5E22
	str r0, [r1, #0x14]
_021E5E22:
	bx lr
	.balign 4, 0
_021E5E24: .word ov112_021FFAA4
	thumb_func_end ov112_021E5E18

