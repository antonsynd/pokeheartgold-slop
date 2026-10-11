	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015420
	.extern _021D10A8

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015420
sub_02015420: ; 0x02015420
	mov r0, #0
	ldr r3, _02015438 ; =_021D10A8
	add r2, r0, #0
_02015426:
	ldr r1, [r3]
	cmp r1, #0
	beq _0201542E
	add r0, r0, #1
_0201542E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _02015426
	bx lr
	.balign 4, 0
_02015438: .word _021D10A8
	thumb_func_end sub_02015420

