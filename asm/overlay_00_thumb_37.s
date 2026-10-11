	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6D68
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6D68
ov00_021E6D68: ; 0x021E6D68
	ldr r1, _021E6D74 ; =_0221A680
	ldr r1, [r1]
	add r1, r1, r0
	ldr r0, _021E6D78 ; =0x00001044
	ldrb r0, [r1, r0]
	bx lr
	.balign 4, 0
_021E6D74: .word _0221A680
_021E6D78: .word 0x00001044
	thumb_func_end ov00_021E6D68

