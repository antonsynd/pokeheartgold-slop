	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057F28
	.extern _021D41C4
	.extern sub_0205701C

	.text
	thumb_func_start sub_02057F28
sub_02057F28: ; 0x02057F28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02057F54 ; =_021D41C4
	add r1, r4, #0
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_SetFacingDirection
	bl sub_0203769C
	ldr r1, _02057F54 ; =_021D41C4
	lsl r0, r0, #3
	ldr r1, [r1]
	add r0, r1, r0
	add r0, #0x78
	strb r4, [r0]
	mov r0, #0
	bl sub_0205701C
	pop {r4, pc}
	nop
_02057F54: .word _021D41C4
	thumb_func_end sub_02057F28

