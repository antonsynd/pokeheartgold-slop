#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBA28
	.extern ov112_021FF730
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBA28
ov112_021EBA28: ; 0x021EBA28
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _021EBA4C ; =ov112_021FF730
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #8]
	cmp r0, #4
	bne _021EBA48
	mov r0, #0xb
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	pop {r4, pc}
_021EBA48:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021EBA4C: .word ov112_021FF730
	thumb_func_end ov112_021EBA28

