#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7484
	.extern ov112_021E5EC4
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7484
ov112_021E7484: ; 0x021E7484
	ldr r1, _021E74A0 ; =ov112_021FFB24
	mov r2, #0x2a
	strb r2, [r1, #0x1c]
	cmp r0, #0
	beq _021E7492
	strb r2, [r1, #0x1d]
	b _021E7496
_021E7492:
	mov r0, #0x2c
	strb r0, [r1, #0x1d]
_021E7496:
	ldr r3, _021E74A4 ; =ov112_021E5EC4
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x28
	bx r3
	.balign 4, 0
_021E74A0: .word ov112_021FFB24
_021E74A4: .word ov112_021E5EC4
	thumb_func_end ov112_021E7484

