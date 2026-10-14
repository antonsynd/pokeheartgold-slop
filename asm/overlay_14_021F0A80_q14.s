#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F0F0C

    .text

	.text
	thumb_func_start ov14_021F0F0C
ov14_021F0F0C: ; 0x021F0F0C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x25
	add r5, r1, #0
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	strb r2, [r4, #0x1f]
	add r2, r4, #0
	add r2, #0x25
	ldrb r2, [r2]
	cmp r1, r2
	ldrb r1, [r4, #0x1f]
	bls _021F0F42
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov14_021E783C
	ldr r6, _021F0FFC ; =ov14_021E92AC
	b _021F0F5A
_021F0F42:
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov14_021E783C
	ldr r6, _021F1000 ; =ov14_021E9370
_021F0F5A:
	cmp r5, #4
	bhi _021F0FF0
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0F6A: ; jump table
	.short _021F0F74 - _021F0F6A - 2 ; case 0
	.short _021F0F90 - _021F0F6A - 2 ; case 1
	.short _021F0F9C - _021F0F6A - 2 ; case 2
	.short _021F0FA2 - _021F0F6A - 2 ; case 3
	.short _021F0FCA - _021F0F6A - 2 ; case 4
_021F0F74:
	add r0, r4, #0
	bl ov14_021F4848
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F0F8A
	mov r0, #0xc
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0F8A:
	mov r0, #0x24
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0F90:
	add r0, r4, #0
	bl ov14_021F4848
	mov r0, #0x3d
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0F9C:
	mov r0, #0x47
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0FA2:
	add r0, r4, #0
	bl ov14_021F4848
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0FC4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
_021F0FC4:
	mov r0, #0x29
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0FCA:
	add r0, r4, #0
	bl ov14_021F4848
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0FEC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
_021F0FEC:
	mov r0, #0x82
	str r0, [r4, #0x30]
_021F0FF0:
	ldr r2, [r4, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	bl ov14_021F0234
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F0FFC: .word ov14_021E92AC
_021F1000: .word ov14_021E9370
	thumb_func_end ov14_021F0F0C

