	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034750
	.extern _021D4130

	.text
	thumb_func_start sub_02034750
sub_02034750: ; 0x02034750
	ldr r1, _02034768 ; =_021D4130
	ldr r1, [r1]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02034764
	mov r0, #1
	bx lr
_02034764:
	mov r0, #0
	bx lr
	.balign 4, 0
_02034768: .word _021D4130
	thumb_func_end sub_02034750

