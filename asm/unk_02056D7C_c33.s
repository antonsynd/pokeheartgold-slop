	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057ADC
	.public sub_02057B14
	.extern _021D41C4
	.extern sub_02057A34
	.extern sub_02057A88

	.text
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

