	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057E50
	.extern _021D41C4
	.extern sub_02057C5C
	.extern sub_02057EEC

	.text
	thumb_func_start sub_02057E50
sub_02057E50: ; 0x02057E50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203993C
	bl sub_0203774C
	str r0, [sp]
	ldr r1, [sp]
	mov r0, #0
	cmp r1, #0
	ble _02057E8E
	ldr r1, _02057EE8 ; =_021D41C4
	ldr r2, [r1]
_02057E6A:
	add r1, r2, #0
	add r1, #0x24
	ldrb r1, [r1]
	cmp r1, #0
	beq _02057E7E
	add r1, r2, #0
	add r1, #0xcc
	ldrb r1, [r1]
	cmp r1, #1
	bne _02057E84
_02057E7E:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02057E84:
	ldr r1, [sp]
	add r0, r0, #1
	add r2, r2, #1
	cmp r0, r1
	blt _02057E6A
_02057E8E:
	ldr r0, [sp]
	mov r5, #0
	cmp r0, #0
	ble _02057EE2
	add r4, r5, #0
_02057E98:
	ldr r0, _02057EE8 ; =_021D41C4
	ldr r7, [r0]
	mov r0, #4
	add r7, #0x34
	add r6, r7, r4
	ldrsb r0, [r6, r0]
	bl sub_02057EEC
	str r0, [sp, #4]
	bl GetDeltaXByFacingDirection
	ldrh r1, [r7, r4]
	add r0, r1, r0
	strh r0, [r7, r4]
	ldr r0, [sp, #4]
	bl GetDeltaYByFacingDirection
	ldrh r1, [r6, #2]
	add r0, r1, r0
	strh r0, [r6, #2]
	mov r0, #2
	strb r0, [r6, #5]
	ldr r0, _02057EE8 ; =_021D41C4
	ldr r0, [r0]
	add r1, r0, r5
	add r1, #0xcc
	mov r0, #1
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_02057C5C
	ldr r0, [sp]
	add r5, r5, #1
	add r4, #8
	cmp r5, r0
	blt _02057E98
_02057EE2:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02057EE8: .word _021D41C4
	thumb_func_end sub_02057E50

