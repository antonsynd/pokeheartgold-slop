	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7A1C
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E7A1C
ov00_021E7A1C: ; 0x021E7A1C
	ldr r1, _021E7A28 ; =_0221A684
	ldr r2, [r1, #4]
	ldr r1, _021E7A2C ; =0x0000198C
	str r0, [r2, r1]
	bx lr
	nop
_021E7A28: .word _0221A684
_021E7A2C: .word 0x0000198C
	thumb_func_end ov00_021E7A1C

