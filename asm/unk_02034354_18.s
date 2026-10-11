	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020348A8
	.extern _021D4130

	.text
	thumb_func_start sub_020348A8
sub_020348A8: ; 0x020348A8
	ldr r1, _020348C8 ; =_021D4130
	ldr r3, [r1]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _020348C4
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x6f
	ldrb r0, [r0]
	bx lr
_020348C4:
	mov r0, #0
	bx lr
	.balign 4, 0
_020348C8: .word _021D4130
	thumb_func_end sub_020348A8

