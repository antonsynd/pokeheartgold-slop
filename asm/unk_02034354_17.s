	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034884
	.extern _021D4130

	.text
	thumb_func_start sub_02034884
sub_02034884: ; 0x02034884
	ldr r1, _020348A4 ; =_021D4130
	ldr r3, [r1]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0203489E
	mov r1, #0x68
	add r3, #0x58
	mul r1, r0
	add r0, r3, r1
	bx lr
_0203489E:
	mov r0, #0
	bx lr
	nop
_020348A4: .word _021D4130
	thumb_func_end sub_02034884

