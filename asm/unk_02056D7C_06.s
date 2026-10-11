	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_0205701C
	.extern _021D41C4
	.extern sub_02056FD0

	.text
	thumb_func_start sub_0205701C
sub_0205701C: ; 0x0205701C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02057048 ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetXCoord
	add r4, r0, #0
	ldr r0, _02057048 ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetZCoord
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02056FD0
	pop {r3, r4, r5, pc}
	nop
_02057048: .word _021D41C4
	thumb_func_end sub_0205701C

