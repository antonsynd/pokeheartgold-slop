	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7220
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E7220
ov00_021E7220: ; 0x021E7220
	ldr r1, _021E722C ; =_0221A680
	ldr r2, [r1]
	ldr r1, _021E7230 ; =0x000010E5
	strb r0, [r2, r1]
	bx lr
	nop
_021E722C: .word _0221A680
_021E7230: .word 0x000010E5
	thumb_func_end ov00_021E7220

