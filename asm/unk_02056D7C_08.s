	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_020570C8
	.extern _021D41C4
	.extern sub_0205701C

	.text
	thumb_func_start sub_020570C8
sub_020570C8: ; 0x020570C8
	push {r3, r4, r5, lr}
	ldr r0, _02057128 ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetMoveState
	add r4, r0, #0
	ldr r0, _02057128 ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetPlayerMoveState
	add r5, r0, #0
	cmp r4, #0
	bne _02057112
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	beq _02057112
	ldr r0, _02057128 ; =_021D41C4
	ldr r0, [r0]
	add r0, #0xeb
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057112
	mov r0, #1
	bl sub_0205701C
	ldr r0, _02057128 ; =_021D41C4
	mov r1, #1
	ldr r0, [r0]
	add r0, #0xeb
	strb r1, [r0]
_02057112:
	cmp r4, #1
	bne _02057124
	cmp r5, #1
	bne _02057124
	ldr r0, _02057128 ; =_021D41C4
	mov r1, #0
	ldr r0, [r0]
	add r0, #0xeb
	strb r1, [r0]
_02057124:
	pop {r3, r4, r5, pc}
	nop
_02057128: .word _021D41C4
	thumb_func_end sub_020570C8

