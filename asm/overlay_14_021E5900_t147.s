#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E99A0
	.extern ov14_021E8620

    .text

	.text
	thumb_func_start ov14_021E99A0
ov14_021E99A0: ; 0x021E99A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E99B2
	cmp r0, #1
	beq _021E99D6
	b _021E99EC
_021E99B2:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl sub_02019978
	cmp r0, #0
	bne _021E99EC
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E99EC
_021E99D6:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	cmp r0, #0
	bne _021E99EC
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E99EC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E99A0

