#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E71C8
	.extern ov14_021F7BC0

    .text

	.text
	thumb_func_start ov14_021E71C8
ov14_021E71C8: ; 0x021E71C8
	ldr r3, _021E71E4 ; =ov14_021F7BC0
	mov r2, #0
_021E71CC:
	ldrh r1, [r3]
	cmp r0, r1
	bne _021E71D6
	add r0, r2, #0
	bx lr
_021E71D6:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blo _021E71CC
	mov r0, #0
	mvn r0, r0
	bx lr
	.balign 4, 0
_021E71E4: .word ov14_021F7BC0
	thumb_func_end ov14_021E71C8

