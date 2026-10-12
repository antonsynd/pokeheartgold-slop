#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021EA180
	.extern ov14_021E9434
	.extern ov14_021E9F20

    .text

	.text
	thumb_func_start ov14_021EA180
ov14_021EA180: ; 0x021EA180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA192
	cmp r1, #1
	beq _021EA1AE
	b _021EA1EC
_021EA192:
	bl ov14_021E9F20
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_021E9434
	cmp r6, #0
	bne _021EA1EC
	cmp r0, #0
	bne _021EA1EC
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA1EC
_021EA1AE:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA1EC
	cmp r7, #0
	bne _021EA1EC
	cmp r0, #0
	bne _021EA1EC
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA1EC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021EA180

