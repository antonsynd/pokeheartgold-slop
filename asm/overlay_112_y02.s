#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E594C
	.extern _021FF9E0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E594C
ov112_021E594C: ; 0x021E594C
	ldr r0, _021E5960 ; =_021FF9E0
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	bx lr
	.balign 4, 0
_021E5960: .word _021FF9E0
	thumb_func_end ov112_021E594C

