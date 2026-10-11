#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5EB8
	.extern ov112_021FFAA4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5EB8
ov112_021E5EB8: ; 0x021E5EB8
	ldr r2, _021E5EC0 ; =ov112_021FFAA4
	str r0, [r2, #0x20]
	str r1, [r2, #0x24]
	bx lr
	.balign 4, 0
_021E5EC0: .word ov112_021FFAA4
	thumb_func_end ov112_021E5EB8

