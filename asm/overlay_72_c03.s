	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237B74
	.extern _0223B820

	.text

	.text
	thumb_func_start ov72_02237B74
ov72_02237B74: ; 0x02237B74
	ldr r0, _02237B7C ; =_0223B820
	ldr r0, [r0, #4]
	bx lr
	nop
_02237B7C: .word _0223B820
	thumb_func_end ov72_02237B74

