	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_0203476C
	.extern _021D4130

	.text
	thumb_func_start sub_0203476C
sub_0203476C: ; 0x0203476C
	ldr r1, _0203477C ; =_021D4130
	mov r2, #2
	ldr r1, [r1]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	.balign 4, 0
_0203477C: .word _021D4130
	thumb_func_end sub_0203476C

