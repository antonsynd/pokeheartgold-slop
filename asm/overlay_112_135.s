#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBB58
	.extern ov112_021EA864
	.extern ov112_021FF740
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBB58
ov112_021EBB58: ; 0x021EBB58
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _021EBB80 ; =ov112_021FF740
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #8]
	cmp r0, #0x23
	bne _021EBB74
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	pop {r4, pc}
_021EBB74:
	add r0, r4, #0
	bl ov112_021EA864
	mov r0, #2
	pop {r4, pc}
	nop
_021EBB80: .word ov112_021FF740
	thumb_func_end ov112_021EBB58

