	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5CBC
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E5CBC
ov00_021E5CBC: ; 0x021E5CBC
	ldr r1, _021E5CC8 ; =_0221A680
	ldr r2, [r1]
	ldr r1, _021E5CCC ; =0x00000FBC
	str r0, [r2, r1]
	bx lr
	nop
_021E5CC8: .word _0221A680
_021E5CCC: .word 0x00000FBC
	thumb_func_end ov00_021E5CBC

