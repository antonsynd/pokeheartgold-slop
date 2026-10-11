#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230DC4

	.text

	.text
	thumb_func_start ov45_02230DC4
ov45_02230DC4: ; 0x02230DC4
	cmp r0, #0xb
	bhi _02230DF0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230DD4: ; jump table
	.short _02230DF0 - _02230DD4 - 2 ; case 0
	.short _02230DF0 - _02230DD4 - 2 ; case 1
	.short _02230DEC - _02230DD4 - 2 ; case 2
	.short _02230DEC - _02230DD4 - 2 ; case 3
	.short _02230DF0 - _02230DD4 - 2 ; case 4
	.short _02230DEC - _02230DD4 - 2 ; case 5
	.short _02230DEC - _02230DD4 - 2 ; case 6
	.short _02230DF0 - _02230DD4 - 2 ; case 7
	.short _02230DF0 - _02230DD4 - 2 ; case 8
	.short _02230DF0 - _02230DD4 - 2 ; case 9
	.short _02230DEC - _02230DD4 - 2 ; case 10
	.short _02230DEC - _02230DD4 - 2 ; case 11
_02230DEC:
	mov r0, #1
	bx lr
_02230DF0:
	mov r0, #0
	bx lr
	thumb_func_end ov45_02230DC4

