	.include "asm/macros.inc"
	.include "unk_02058AEC.inc"
	.include "global.inc"
	.public sub_0205A430
	.extern _021D41CC

	.text
	thumb_func_start sub_0205A430
sub_0205A430: ; 0x0205A430
	add r3, #0x80
	ldr r1, [r3]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	bne _0205A444
	ldrb r0, [r2]
	str r0, [r1, #0x30]
	ldrb r1, [r2]
	ldr r0, _0205A448 ; =_021D41CC
	str r1, [r0, #8]
_0205A444:
	bx lr
	nop
_0205A448: .word _021D41CC
	thumb_func_end sub_0205A430
