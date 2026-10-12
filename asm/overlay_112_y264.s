#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE514
	.extern ov112_021EC460
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE514
ov112_021EE514: ; 0x021EE514
	push {r3, lr}
	mov r1, #2
	mov r2, #0x1b
	mov r3, #0x39
	bl ov112_021EC460
	mov r0, #0x40
	pop {r3, pc}
	thumb_func_end ov112_021EE514

