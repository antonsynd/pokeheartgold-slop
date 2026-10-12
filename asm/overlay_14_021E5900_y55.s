#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7940

    .text

	.text
	thumb_func_start ov14_021E7940
ov14_021E7940: ; 0x021E7940
	ldrb r3, [r2]
	cmp r0, r3
	blt _021E795C
	ldrb r3, [r2, #1]
	cmp r0, r3
	bgt _021E795C
	ldrb r0, [r2, #2]
	cmp r1, r0
	blt _021E795C
	ldrb r0, [r2, #3]
	cmp r1, r0
	bge _021E795C
	mov r0, #1
	bx lr
_021E795C:
	mov r0, #0
	bx lr
	thumb_func_end ov14_021E7940

