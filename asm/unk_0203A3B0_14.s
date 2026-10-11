	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A9C8
	.extern _021D4154

	.text
	thumb_func_start sub_0203A9C8
sub_0203A9C8: ; 0x0203A9C8
	ldr r0, _0203A9D8 ; =_021D4154
	ldr r1, [r0]
	cmp r1, #0
	beq _0203A9D6
	mov r0, #1
	add r1, #0x22
	strb r0, [r1]
_0203A9D6:
	bx lr
	.balign 4, 0
_0203A9D8: .word _021D4154
	thumb_func_end sub_0203A9C8
