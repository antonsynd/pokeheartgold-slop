#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC7B8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC7B8
ov112_021EC7B8: ; 0x021EC7B8
	push {r3, lr}
	ldr r1, _021EC7CC ; =0x0001EC76
	ldrh r0, [r0, r1]
	mov r1, #5
	sub r0, r0, #1
	bl _s32_div_f
	add r0, r0, #1
	pop {r3, pc}
	nop
_021EC7CC: .word 0x0001EC76
	thumb_func_end ov112_021EC7B8

