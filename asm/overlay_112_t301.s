#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EF67C
	.extern ov112_021FF924
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EF67C
ov112_021EF67C: ; 0x021EF67C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _021EF69C ; =ov112_021FF924
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #8]
	cmp r0, #0x25
	bne _021EF698
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	pop {r4, pc}
_021EF698:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021EF69C: .word ov112_021FF924
	thumb_func_end ov112_021EF67C

