	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020588DC
	.extern _021D41C8

	.text
	thumb_func_start sub_020588DC
sub_020588DC: ; 0x020588DC
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _020588E8
	bl GF_AssertFail
_020588E8:
	ldr r0, _020588F4 ; =_021D41C8
	ldr r1, [r0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_020588F4: .word _021D41C8
	thumb_func_end sub_020588DC

