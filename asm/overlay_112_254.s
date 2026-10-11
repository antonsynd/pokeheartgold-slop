#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE688
	.extern ov112_021FF8D8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE688
ov112_021EE688: ; 0x021EE688
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _021EE6A8 ; =ov112_021FF8D8
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #8]
	cmp r0, #8
	bne _021EE6A4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	pop {r4, pc}
_021EE6A4:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021EE6A8: .word ov112_021FF8D8
	thumb_func_end ov112_021EE688

