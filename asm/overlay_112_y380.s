#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F13BC
	.extern ov112_021F135C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F13BC
ov112_021F13BC: ; 0x021F13BC
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov112_021F135C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov112_021F13BC

