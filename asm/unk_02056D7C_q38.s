	.include "macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057B9C
	.extern _021D41C4
	.extern sub_02057A0C

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

