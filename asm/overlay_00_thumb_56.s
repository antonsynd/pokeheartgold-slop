	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7314
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E7314
ov00_021E7314: ; 0x021E7314
	ldr r0, _021E7320 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E7324 ; =0x000010E6
	ldrb r0, [r1, r0]
	bx lr
	nop
_021E7320: .word _0221A680
_021E7324: .word 0x000010E6
	thumb_func_end ov00_021E7314

