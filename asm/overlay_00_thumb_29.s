	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E69A8
	.extern _0221A680
	.extern ov00_021E6994
	.extern ov00_021E77F4
	.extern ov00_021E7A1C

	.text

	.text
	thumb_func_start ov00_021E69A8
ov00_021E69A8: ; 0x021E69A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #1
	bl sub_0203993C
	bl sub_02034084
	add r5, r0, #0
	beq _021E69DC
	bl sub_02037454
	sub r4, r0, #1
	cmp r4, #1
	bge _021E69C6
	mov r4, #1
_021E69C6:
	ldr r1, _021E6A3C ; =_0221A680
	ldr r6, _021E6A40 ; =0x000010D4
	ldr r0, [r1]
	mov r3, #1
	strh r3, [r0, r6]
	ldr r2, [r1]
	sub r0, r6, #4
	str r3, [r2, r0]
	ldr r0, [r1]
	add r1, r6, #2
	strh r3, [r0, r1]
_021E69DC:
	ldr r0, _021E6A3C ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E6A44 ; =0x00001090
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _021E6A3A
	add r0, #0x14
	ldr r0, [r2, r0]
	cmp r0, #5
	bhi _021E6A18
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E69FC: ; jump table
	.short _021E6A18 - _021E69FC - 2 ; case 0
	.short _021E6A18 - _021E69FC - 2 ; case 1
	.short _021E6A08 - _021E69FC - 2 ; case 2
	.short _021E6A0C - _021E69FC - 2 ; case 3
	.short _021E6A10 - _021E69FC - 2 ; case 4
	.short _021E6A14 - _021E69FC - 2 ; case 5
_021E6A08:
	mov r1, #1
	b _021E6A22
_021E6A0C:
	mov r1, #2
	b _021E6A22
_021E6A10:
	mov r1, #3
	b _021E6A22
_021E6A14:
	mov r1, #4
	b _021E6A22
_021E6A18:
	cmp r5, #0
	bne _021E6A20
	mov r1, #4
	b _021E6A22
_021E6A20:
	mov r1, #3
_021E6A22:
	add r0, r7, #0
	add r2, r4, #0
	bl ov00_021E77F4
	ldr r0, _021E6A48 ; =ov00_021E6994
	bl ov00_021E7A1C
	ldr r0, _021E6A3C ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E6A44 ; =0x00001090
	str r2, [r1, r0]
_021E6A3A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6A3C: .word _0221A680
_021E6A40: .word 0x000010D4
_021E6A44: .word 0x00001090
_021E6A48: .word ov00_021E6994
	thumb_func_end ov00_021E69A8

