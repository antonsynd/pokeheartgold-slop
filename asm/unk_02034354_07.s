	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020346D4
	.extern _021D4130

	.text
	thumb_func_start sub_020346D4
sub_020346D4: ; 0x020346D4
	ldr r0, _020346E0 ; =_021D4130
	ldr r1, [r0]
	ldr r0, _020346E4 ; =0x000003A5
	ldrb r0, [r1, r0]
	bx lr
	nop
_020346E0: .word _021D4130
_020346E4: .word 0x000003A5
	thumb_func_end sub_020346D4

