	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057D74
	.extern _0210FAB4
	.extern _0210FABC
	.extern _021D41C4
	.extern sub_02057B4C
	.extern sub_02057B9C

	.text
	thumb_func_start sub_02057D74
sub_02057D74: ; 0x02057D74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203993C
	bl sub_0203774C
	add r7, r0, #0
	cmp r7, #2
	bne _02057D8C
	ldr r0, _02057DFC ; =_0210FAB4
	str r0, [sp]
	b _02057D90
_02057D8C:
	ldr r0, _02057E00 ; =_0210FABC
	str r0, [sp]
_02057D90:
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	cmp r7, #0
	ble _02057DF8
_02057D9A:
	ldr r0, _02057E04 ; =_021D41C4
	add r6, sp, #4
	ldr r1, [r0]
	ldrb r0, [r6]
	add r0, r1, r0
	add r0, #0xe6
	ldrb r0, [r0]
	cmp r0, #0
	beq _02057DEA
	mov r4, #0
	cmp r7, #0
	ble _02057DEA
	ldr r5, [sp]
_02057DB4:
	ldrb r0, [r6]
	bl sub_02057B4C
	ldrh r1, [r5]
	cmp r1, r0
	bne _02057DE2
	ldrb r0, [r6]
	bl sub_02057B9C
	ldrh r1, [r5, #2]
	cmp r1, r0
	bne _02057DE2
	ldr r0, _02057E04 ; =_021D41C4
	ldr r1, [r0]
	ldrb r0, [r6]
	add r1, r1, r0
	add r1, #0xbc
	mov r0, #1
	strb r0, [r1]
	mov r0, #0x5f
	add r1, sp, #4
	bl sub_02037184
_02057DE2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r7
	blt _02057DB4
_02057DEA:
	add r0, sp, #4
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, r7
	blt _02057D9A
_02057DF8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02057DFC: .word _0210FAB4
_02057E00: .word _0210FABC
_02057E04: .word _021D41C4
	thumb_func_end sub_02057D74

