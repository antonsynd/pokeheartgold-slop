	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034420
	.extern _021D4130

	.text
	thumb_func_start sub_02034420
sub_02034420: ; 0x02034420
	ldr r0, _02034430 ; =_021D4130
	ldr r0, [r0]
	cmp r0, #0
	beq _0203442C
	mov r0, #1
	bx lr
_0203442C:
	mov r0, #0
	bx lr
	.balign 4, 0
_02034430: .word _021D4130
	thumb_func_end sub_02034420

