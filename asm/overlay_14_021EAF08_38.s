#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021ED650

    .text

	thumb_func_start ov14_021ED650
ov14_021ED650: ; 0x021ED650
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x2c]
	mov r1, #9
	bl ov14_021F6AC0
	ldr r0, [r4, #0x2c]
	cmp r0, #5
	ldr r0, [r4, #0x34]
	bhi _021ED66E
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	b _021ED676
_021ED66E:
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021ED676:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x27
	bl ov14_021F6844
	mov r0, #0x3d
	pop {r4, pc}
	thumb_func_end ov14_021ED650

