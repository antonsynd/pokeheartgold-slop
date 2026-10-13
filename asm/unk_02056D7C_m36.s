	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057B9C
	.public sub_02057BEC
	.public sub_02057C24
	.extern _021D41C4
	.extern sub_02057A0C
	.extern sub_02057B4C

	.text
	thumb_func_start sub_02057B9C
sub_02057B9C: ; 0x02057B9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02057BE4 ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	bne _02057BAC
	ldr r0, _02057BE8 ; =0x0000FFFF
	pop {r4, pc}
_02057BAC:
	bl sub_0203769C
	cmp r4, r0
	bne _02057BC0
	ldr r0, _02057BE4 ; =_021D41C4
	ldr r1, [r0]
	lsl r0, r4, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x36]
	pop {r4, pc}
_02057BC0:
	bl sub_02057A0C
	cmp r0, #0
	beq _02057BD6
	ldr r0, _02057BE4 ; =_021D41C4
	ldr r1, [r0]
	add r0, r1, r4
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057BDA
_02057BD6:
	ldr r0, _02057BE8 ; =0x0000FFFF
	pop {r4, pc}
_02057BDA:
	lsl r0, r4, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x36]
	pop {r4, pc}
	nop
_02057BE4: .word _021D41C4
_02057BE8: .word 0x0000FFFF
	thumb_func_end sub_02057B9C

	thumb_func_start sub_02057BEC
sub_02057BEC: ; 0x02057BEC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057B4C
	ldr r1, _02057C1C ; =0x0000FFFF
	cmp r0, r1
	bne _02057BFE
	add r0, r1, #0
	pop {r4, pc}
_02057BFE:
	ldr r0, _02057C20 ; =_021D41C4
	lsl r4, r4, #3
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0x38
	ldrsb r0, [r1, r0]
	bl GetDeltaXByFacingDirection
	ldr r1, _02057C20 ; =_021D41C4
	ldr r1, [r1]
	add r1, r1, r4
	ldrh r1, [r1, #0x34]
	add r0, r1, r0
	pop {r4, pc}
	nop
_02057C1C: .word 0x0000FFFF
_02057C20: .word _021D41C4
	thumb_func_end sub_02057BEC

	thumb_func_start sub_02057C24
sub_02057C24: ; 0x02057C24
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057B9C
	ldr r1, _02057C54 ; =0x0000FFFF
	cmp r0, r1
	bne _02057C36
	add r0, r1, #0
	pop {r4, pc}
_02057C36:
	ldr r0, _02057C58 ; =_021D41C4
	lsl r4, r4, #3
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0x38
	ldrsb r0, [r1, r0]
	bl GetDeltaYByFacingDirection
	ldr r1, _02057C58 ; =_021D41C4
	ldr r1, [r1]
	add r1, r1, r4
	ldrh r1, [r1, #0x36]
	add r0, r1, r0
	pop {r4, pc}
	nop
_02057C54: .word 0x0000FFFF
_02057C58: .word _021D41C4
	thumb_func_end sub_02057C24

