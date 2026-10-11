#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB3A8
	.extern ov112_021EC460
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB3A8
ov112_021EB3A8: ; 0x021EB3A8
	push {r3, lr}
	mov r1, #0
	mov r2, #2
	mov r3, #0xc
	bl ov112_021EC460
	mov r0, #0x18
	pop {r3, pc}
	thumb_func_end ov112_021EB3A8

