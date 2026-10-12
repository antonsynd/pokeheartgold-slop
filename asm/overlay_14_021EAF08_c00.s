#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EAF08

    .text

	.text
	thumb_func_start ov14_021EAF08
ov14_021EAF08: ; 0x021EAF08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	bl ov14_021E80A8
	add r6, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021EAF20
	cmp r0, #1
	beq _021EAF70
	b _021EAF84
_021EAF20:
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EAF84
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #0xc]
	mov r3, #1
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0x21
	strb r2, [r0]
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021E7AD4
	ldr r2, [r5, #0x34]
	ldr r0, _021EAF88 ; =0x0000044A
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _021EAF6A
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FEC
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021F3488
_021EAF6A:
	mov r0, #1
	strh r0, [r4, #0x10]
	b _021EAF84
_021EAF70:
	add r0, r5, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EAF84
	cmp r6, #0
	bne _021EAF84
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_021EAF84:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EAF88: .word 0x0000044A
	thumb_func_end ov14_021EAF08

