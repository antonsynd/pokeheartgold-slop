	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E70B8
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E70B8
ov00_021E70B8: ; 0x021E70B8
	ldr r1, _021E70C4 ; =_0221A680
	ldr r2, [r1]
	ldr r1, _021E70C8 ; =0x0000109C
	str r0, [r2, r1]
	bx lr
	nop
_021E70C4: .word _0221A680
_021E70C8: .word 0x0000109C
	thumb_func_end ov00_021E70B8

