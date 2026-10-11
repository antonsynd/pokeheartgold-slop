	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057A34
	.public sub_02057A88
	.public sub_02057ADC
	.public sub_02057B14
	.public sub_02057B4C
	.public sub_02057B9C
	.public sub_02057BEC
	.public sub_02057C24
	.extern _021D41C4
	.extern sub_02057A0C

	.text
	thumb_func_start sub_02057A34
sub_02057A34: ; 0x02057A34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02057A80 ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	bne _02057A44
	ldr r0, _02057A84 ; =0x0000FFFF
	pop {r4, pc}
_02057A44:
	bl sub_0203769C
	cmp r4, r0
	bne _02057A5A
	ldr r0, _02057A80 ; =_021D41C4
	ldr r1, [r0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x74
	ldrh r0, [r0]
	pop {r4, pc}
_02057A5A:
	bl sub_02057A0C
	cmp r0, #0
	beq _02057A70
	ldr r0, _02057A80 ; =_021D41C4
	ldr r1, [r0]
	add r0, r1, r4
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057A74
_02057A70:
	ldr r0, _02057A84 ; =0x0000FFFF
	pop {r4, pc}
_02057A74:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x74
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02057A80: .word _021D41C4
_02057A84: .word 0x0000FFFF
	thumb_func_end sub_02057A34

	thumb_func_start sub_02057A88
sub_02057A88: ; 0x02057A88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02057AD4 ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	bne _02057A98
	ldr r0, _02057AD8 ; =0x0000FFFF
	pop {r4, pc}
_02057A98:
	bl sub_0203769C
	cmp r4, r0
	bne _02057AAE
	ldr r0, _02057AD4 ; =_021D41C4
	ldr r1, [r0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x76
	ldrh r0, [r0]
	pop {r4, pc}
_02057AAE:
	bl sub_02057A0C
	cmp r0, #0
	beq _02057AC4
	ldr r0, _02057AD4 ; =_021D41C4
	ldr r1, [r0]
	add r0, r1, r4
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057AC8
_02057AC4:
	ldr r0, _02057AD8 ; =0x0000FFFF
	pop {r4, pc}
_02057AC8:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x76
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02057AD4: .word _021D41C4
_02057AD8: .word 0x0000FFFF
	thumb_func_end sub_02057A88

	thumb_func_start sub_02057ADC
sub_02057ADC: ; 0x02057ADC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057A34
	ldr r1, _02057B0C ; =0x0000FFFF
	cmp r0, r1
	bne _02057AEE
	add r0, r1, #0
	pop {r4, pc}
_02057AEE:
	ldr r0, _02057B10 ; =_021D41C4
	lsl r4, r4, #3
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0x78
	ldrsb r0, [r1, r0]
	bl GetDeltaXByFacingDirection
	ldr r1, _02057B10 ; =_021D41C4
	ldr r1, [r1]
	add r1, r1, r4
	add r1, #0x74
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	.balign 4, 0
_02057B0C: .word 0x0000FFFF
_02057B10: .word _021D41C4
	thumb_func_end sub_02057ADC

	thumb_func_start sub_02057B14
sub_02057B14: ; 0x02057B14
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057A88
	ldr r1, _02057B44 ; =0x0000FFFF
	cmp r0, r1
	bne _02057B26
	add r0, r1, #0
	pop {r4, pc}
_02057B26:
	ldr r0, _02057B48 ; =_021D41C4
	lsl r4, r4, #3
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0x78
	ldrsb r0, [r1, r0]
	bl GetDeltaYByFacingDirection
	ldr r1, _02057B48 ; =_021D41C4
	ldr r1, [r1]
	add r1, r1, r4
	add r1, #0x76
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	.balign 4, 0
_02057B44: .word 0x0000FFFF
_02057B48: .word _021D41C4
	thumb_func_end sub_02057B14

	thumb_func_start sub_02057B4C
sub_02057B4C: ; 0x02057B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02057B94 ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	bne _02057B5C
	ldr r0, _02057B98 ; =0x0000FFFF
	pop {r4, pc}
_02057B5C:
	bl sub_0203769C
	cmp r4, r0
	bne _02057B70
	ldr r0, _02057B94 ; =_021D41C4
	ldr r1, [r0]
	lsl r0, r4, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	pop {r4, pc}
_02057B70:
	bl sub_02057A0C
	cmp r0, #0
	beq _02057B86
	ldr r0, _02057B94 ; =_021D41C4
	ldr r1, [r0]
	add r0, r1, r4
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057B8A
_02057B86:
	ldr r0, _02057B98 ; =0x0000FFFF
	pop {r4, pc}
_02057B8A:
	lsl r0, r4, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	pop {r4, pc}
	nop
_02057B94: .word _021D41C4
_02057B98: .word 0x0000FFFF
	thumb_func_end sub_02057B4C

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

