	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E70CC
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E70CC
ov00_021E70CC: ; 0x021E70CC
	ldr r1, _021E70D8 ; =_0221A680
	ldr r2, [r1]
	ldr r1, _021E70DC ; =0x000010D6
	strh r0, [r2, r1]
	bx lr
	nop
_021E70D8: .word _0221A680
_021E70DC: .word 0x000010D6
	thumb_func_end ov00_021E70CC

