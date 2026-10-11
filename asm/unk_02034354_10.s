	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034730
	.extern _021D4130

	.text
	thumb_func_start sub_02034730
sub_02034730: ; 0x02034730
	ldr r1, _0203474C ; =_021D4130
	mov r2, #1
	ldr r1, [r1]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _02034748
	cmp r0, #1
	beq _02034748
	mov r2, #0
_02034748:
	add r0, r2, #0
	bx lr
	.balign 4, 0
_0203474C: .word _021D4130
	thumb_func_end sub_02034730

