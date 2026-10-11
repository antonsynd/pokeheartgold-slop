#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EAC34
	.extern ov112_021FF6C4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EAC34
ov112_021EAC34: ; 0x021EAC34
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _021EAC54 ; =ov112_021FF6C4
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #8]
	cmp r0, #0x1b
	bne _021EAC50
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	pop {r4, pc}
_021EAC50:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021EAC54: .word ov112_021FF6C4
	thumb_func_end ov112_021EAC34

