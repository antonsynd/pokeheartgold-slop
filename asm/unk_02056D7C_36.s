	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057F80
	.extern _021D41C4
	.extern sub_02057F70

	.text
	thumb_func_start sub_02057F80
sub_02057F80: ; 0x02057F80
	push {r3, lr}
	ldr r0, _02057FA0 ; =_021D41C4
	ldr r0, [r0]
	add r0, #0xef
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057F9C
	bl sub_02057F70
	ldr r0, _02057FA0 ; =_021D41C4
	mov r1, #1
	ldr r0, [r0]
	add r0, #0xef
	strb r1, [r0]
_02057F9C:
	pop {r3, pc}
	nop
_02057FA0: .word _021D41C4
	thumb_func_end sub_02057F80

