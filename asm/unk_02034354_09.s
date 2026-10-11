	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034714
	.extern _021D4130

	.text
	thumb_func_start sub_02034714
sub_02034714: ; 0x02034714
	ldr r1, _0203472C ; =_021D4130
	ldr r1, [r1]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02034728
	mov r0, #1
	bx lr
_02034728:
	mov r0, #0
	bx lr
	.balign 4, 0
_0203472C: .word _021D4130
	thumb_func_end sub_02034714

