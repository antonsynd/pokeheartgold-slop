#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F2020

    .text

	.text
	thumb_func_start ov14_021F2020
ov14_021F2020: ; 0x021F2020
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	add r1, r0, #0
	str r1, [sp]
	lsl r1, r1, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0xa
	bl Bag_AddItem
	cmp r0, #1
	bne _021F20A4
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0x25
	bl ov14_021F673C
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, sp, #0
	bl ov14_021E6094
	add r0, r4, #0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021F2096
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r4, r3, r2
	ldr r3, _021F20BC ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r4, r3]
	bl ov14_021F2ED0
_021F2096:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E75F4
	b _021F20B2
_021F20A4:
	ldr r0, _021F20C0 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x25
	bl ov14_021F675C
_021F20B2:
	mov r0, #0xe
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
	nop
_021F20BC: .word 0x00004094
_021F20C0: .word 0x000005F3
	thumb_func_end ov14_021F2020

