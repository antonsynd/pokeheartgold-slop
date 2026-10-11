	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034524
	.extern _021D4130

	.text
	thumb_func_start sub_02034524
sub_02034524: ; 0x02034524
	ldr r0, _02034538 ; =_021D4130
	ldr r2, [r0]
	cmp r2, #0
	beq _02034534
	mov r0, #0xe9
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r2, r0]
_02034534:
	bx lr
	nop
_02034538: .word _021D4130
	thumb_func_end sub_02034524

