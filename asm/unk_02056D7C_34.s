	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057F58
	.extern _021D41C4

	.text
	thumb_func_start sub_02057F58
sub_02057F58: ; 0x02057F58
	push {r3, lr}
	bl sub_0203E2F4
	ldr r0, _02057F6C ; =_021D41C4
	mov r1, #0
	ldr r0, [r0]
	add r0, #0xed
	strb r1, [r0]
	pop {r3, pc}
	nop
_02057F6C: .word _021D41C4
	thumb_func_end sub_02057F58

