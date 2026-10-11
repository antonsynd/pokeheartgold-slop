	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034B00
	.extern _021D4130

	.text
	thumb_func_start sub_02034B00
sub_02034B00: ; 0x02034B00
	ldr r1, _02034B08 ; =_021D4130
	ldr r1, [r1]
	str r0, [r1]
	bx lr
	.balign 4, 0
_02034B08: .word _021D4130
	thumb_func_end sub_02034B00
