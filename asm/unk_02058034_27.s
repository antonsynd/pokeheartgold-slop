	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058740
	.extern _021D41C8
	.extern sub_02058608
	.extern sub_020586EC

	.text
	thumb_func_start sub_02058740
sub_02058740: ; 0x02058740
	ldr r0, _02058760 ; =_021D41C8
	ldr r0, [r0]
	cmp r0, #0
	beq _0205875A
	ldr r1, [r0, #0x30]
	ldr r0, _02058764 ; =sub_020586EC
	cmp r1, r0
	beq _02058756
	ldr r0, _02058768 ; =sub_02058608
	cmp r1, r0
	bne _0205875A
_02058756:
	mov r0, #1
	bx lr
_0205875A:
	mov r0, #0
	bx lr
	nop
_02058760: .word _021D41C8
_02058764: .word sub_020586EC
_02058768: .word sub_02058608
	thumb_func_end sub_02058740

