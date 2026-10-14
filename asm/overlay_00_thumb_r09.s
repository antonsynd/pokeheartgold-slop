	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5E54
	.extern _0221A680
	.extern ov00_021E5E34
	.extern ov00_021E6690
	.extern ov00_021E6850
	.extern ov00_021E69A8

	.text

	.text
	thumb_func_start ov00_021E5E54
ov00_021E5E54: ; 0x021E5E54
	push {r4, lr}
	ldr r2, _021E5F70 ; =_0221A680
	ldr r1, _021E5F74 ; =0x00001070
	ldr r3, [r2]
	ldr r4, [r3, r1]
	cmp r4, #0x10
	bls _021E5E64
	b _021E5F68
_021E5E64:
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021E5E70: ; jump table
	.short _021E5F68 - _021E5E70 - 2 ; case 0
	.short _021E5F68 - _021E5E70 - 2 ; case 1
	.short _021E5F68 - _021E5E70 - 2 ; case 2
	.short _021E5F68 - _021E5E70 - 2 ; case 3
	.short _021E5F68 - _021E5E70 - 2 ; case 4
	.short _021E5E92 - _021E5E70 - 2 ; case 5
	.short _021E5EC4 - _021E5E70 - 2 ; case 6
	.short _021E5EDC - _021E5E70 - 2 ; case 7
	.short _021E5F68 - _021E5E70 - 2 ; case 8
	.short _021E5F18 - _021E5E70 - 2 ; case 9
	.short _021E5EC4 - _021E5E70 - 2 ; case 10
	.short _021E5F32 - _021E5E70 - 2 ; case 11
	.short _021E5F4C - _021E5E70 - 2 ; case 12
	.short _021E5F68 - _021E5E70 - 2 ; case 13
	.short _021E5F68 - _021E5E70 - 2 ; case 14
	.short _021E5F68 - _021E5E70 - 2 ; case 15
	.short _021E5F52 - _021E5E70 - 2 ; case 16
_021E5E92:
	cmp r0, #0
	beq _021E5E9A
	mov r0, #6
	str r0, [r3, r1]
_021E5E9A:
	ldr r0, _021E5F70 ; =_0221A680
	ldr r2, _021E5F78 ; =0x00001074
	ldr r0, [r0]
	ldr r1, [r0, r2]
	cmp r1, #2
	bne _021E5F68
	add r1, r2, #0
	add r1, #0x20
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _021E5F68
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x30
	ldrb r1, [r3, r1]
	cmp r1, #6
	beq _021E5F68
	mov r3, #0xa
	sub r1, r2, #4
	str r3, [r0, r1]
	b _021E5F68
_021E5EC4:
	add r0, r1, #4
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _021E5ED2
	bl ov00_021F1284
	b _021E5F68
_021E5ED2:
	bl ov00_021EE278
	bl ov00_021E5E34
	b _021E5F68
_021E5EDC:
	bl sub_0203993C
	bl sub_02034084
	cmp r0, #0
	bne _021E5EF4
	ldr r0, _021E5F70 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5F7C ; =0x00001084
	ldr r0, [r1, r0]
	bl ov00_021E69A8
_021E5EF4:
	ldr r0, _021E5F70 ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E5F80 ; =0x0000109C
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021E5F04
	mov r1, #1
	b _021E5F06
_021E5F04:
	mov r1, #0
_021E5F06:
	add r0, #0x38
	strh r1, [r2, r0]
	ldr r0, _021E5F70 ; =_0221A680
	mov r2, #8
	ldr r1, [r0]
	ldr r0, _021E5F74 ; =0x00001070
	str r2, [r1, r0]
	mov r0, #0x14
	pop {r4, pc}
_021E5F18:
	mov r0, #4
	str r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2]
	mov r4, #0
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2]
	sub r3, r4, #1
	add r1, #0x28
	str r3, [r0, r1]
	mov r0, #0x15
	pop {r4, pc}
_021E5F32:
	mov r0, #4
	str r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2]
	mov r4, #0
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2]
	sub r3, r4, #1
	add r1, #0x28
	str r3, [r0, r1]
	mov r0, #0x16
	pop {r4, pc}
_021E5F4C:
	bl ov00_021E6690
	pop {r4, pc}
_021E5F52:
	add r1, #0x20
	ldr r0, [r3, r1]
	cmp r0, #0
	bne _021E5F68
	bl ov00_021EE278
	ldr r0, _021E5F70 ; =_0221A680
	mov r2, #0x11
	ldr r1, [r0]
	ldr r0, _021E5F74 ; =0x00001070
	str r2, [r1, r0]
_021E5F68:
	bl ov00_021E6850
	pop {r4, pc}
	nop
_021E5F70: .word _0221A680
_021E5F74: .word 0x00001070
_021E5F78: .word 0x00001074
_021E5F7C: .word 0x00001084
_021E5F80: .word 0x0000109C
	thumb_func_end ov00_021E5E54

