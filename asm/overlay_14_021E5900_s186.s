#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E9660
	.extern ov14_021E9618

    .text

	.text
	thumb_func_start ov14_021E9660
ov14_021E9660: ; 0x021E9660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E9672
	cmp r1, #1
	beq _021E9682
	b _021E96A2
_021E9672:
	bl ov14_021E9618
	cmp r0, #0
	bne _021E96A2
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E96A2
_021E9682:
	add r0, r4, #0
	mov r1, #8
	bl ov14_021F44B4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xd
	bl sub_02019978
	cmp r0, #0
	bne _021E96A2
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E96A2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E9660

