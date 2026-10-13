#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E95C8
	.extern ov14_021E9434

    .text

	.text
	thumb_func_start ov14_021E95C8
ov14_021E95C8: ; 0x021E95C8
	push {r4, lr}
	ldr r4, [r0, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E95D8
	cmp r1, #1
	beq _021E95E8
	b _021E95FE
_021E95D8:
	bl ov14_021E9434
	cmp r0, #0
	bne _021E95FE
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E95FE
_021E95E8:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_02019978
	cmp r0, #0
	bne _021E95FE
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, pc}
_021E95FE:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E95C8

