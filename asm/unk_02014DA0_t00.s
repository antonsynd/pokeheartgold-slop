	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02014DA0
	.extern _021D10A8

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02014DA0
sub_02014DA0: ; 0x02014DA0
	mov r1, #0
	ldr r2, _02014DB0 ; =_021D10A8
	add r0, r1, #0
_02014DA6:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #0x10
	blt _02014DA6
	bx lr
	.balign 4, 0
_02014DB0: .word _021D10A8
	thumb_func_end sub_02014DA0

