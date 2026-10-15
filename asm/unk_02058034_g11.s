	.include "macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020582CC
	.extern _021D41C8

	.text
	thumb_func_start sub_020582CC
sub_020582CC: ; 0x020582CC
	push {r3, lr}
	ldr r1, _020582F0 ; =_021D41C8
	ldr r2, [r1]
	cmp r2, #0
	bne _020582DC
	bl SysTask_Destroy
	pop {r3, pc}
_020582DC:
	ldr r1, [r2, #0x30]
	cmp r1, #0
	beq _020582EC
	add r2, #0x3c
	ldrb r0, [r2]
	cmp r0, #0
	bne _020582EC
	blx r1
_020582EC:
	pop {r3, pc}
	nop
_020582F0: .word _021D41C8
	thumb_func_end sub_020582CC

