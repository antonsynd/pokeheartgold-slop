	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02056E60
	.extern _021D41C4
	.extern sub_02056EF4
	.extern sub_0205701C

	.text
	thumb_func_start sub_02056E60
sub_02056E60: ; 0x02056E60
	push {r3, lr}
	ldr r0, _02056E9C ; =_021D41C4
	ldr r2, [r0]
	cmp r2, #0
	beq _02056E9A
	mov r1, #1
	add r2, #0xec
	strb r1, [r2]
	ldr r0, [r0]
	mov r1, #0
	add r0, #0xee
	strb r1, [r0]
	bl sub_02056EF4
	mov r0, #1
	bl sub_0205701C
	ldr r0, _02056E9C ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetXCoord
	ldr r0, _02056E9C ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetZCoord
_02056E9A:
	pop {r3, pc}
	.balign 4, 0
_02056E9C: .word _021D41C4
	thumb_func_end sub_02056E60

