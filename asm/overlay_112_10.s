#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5D5C
	.extern _021FF500
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5D5C
ov112_021E5D5C: ; 0x021E5D5C
	ldr r1, _021E5D64 ; =_021FF500
	strb r0, [r1]
	bx lr
	nop
_021E5D64: .word _021FF500
	thumb_func_end ov112_021E5D5C

