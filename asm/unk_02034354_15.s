	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_0203484C
	.extern _021D4130

	.text
	thumb_func_start sub_0203484C
sub_0203484C: ; 0x0203484C
	ldr r1, _0203486C ; =_021D4130
	ldr r3, [r1]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02034866
	mov r1, #0x68
	add r3, #0x4c
	mul r1, r0
	add r0, r3, r1
	bx lr
_02034866:
	mov r0, #0
	bx lr
	nop
_0203486C: .word _021D4130
	thumb_func_end sub_0203484C

