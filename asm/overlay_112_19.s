#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E6BDC
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E6BDC
ov112_021E6BDC: ; 0x021E6BDC
	ldr r0, _021E6BF4 ; =ov112_021FFB24
	ldr r1, [r0, #0x24]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x2c]
	str r1, [r0, #0x28]
	ldrh r1, [r0, #0x32]
	strh r1, [r0, #0x30]
	mov r1, #0
	strh r1, [r0, #0x36]
	strh r1, [r0, #0x3a]
	bx lr
	nop
_021E6BF4: .word ov112_021FFB24
	thumb_func_end ov112_021E6BDC

