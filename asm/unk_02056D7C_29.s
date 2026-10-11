	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057D50
	.extern _021D41C4

	.text
	thumb_func_start sub_02057D50
sub_02057D50: ; 0x02057D50
	ldrb r2, [r2]
	cmp r2, #3
	bne _02057D64
	ldr r1, _02057D70 ; =_021D41C4
	mov r2, #0
	ldr r1, [r1]
	add r0, r1, r0
	add r0, #0xbc
	strb r2, [r0]
	bx lr
_02057D64:
	ldr r1, _02057D70 ; =_021D41C4
	ldr r1, [r1]
	add r0, r1, r0
	add r0, #0xe6
	strb r2, [r0]
	bx lr
	.balign 4, 0
_02057D70: .word _021D41C4
	thumb_func_end sub_02057D50

