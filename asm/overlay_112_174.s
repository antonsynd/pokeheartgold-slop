#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC520
	.extern ov112_021EA864
	.extern ov112_021FF7CC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC520
ov112_021EC520: ; 0x021EC520
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _021EC548 ; =ov112_021FF7CC
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #8]
	cmp r0, #0x43
	bne _021EC53C
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	pop {r4, pc}
_021EC53C:
	add r0, r4, #0
	bl ov112_021EA864
	mov r0, #2
	pop {r4, pc}
	nop
_021EC548: .word ov112_021FF7CC
	thumb_func_end ov112_021EC520

