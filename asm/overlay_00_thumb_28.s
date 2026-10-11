	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6994
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6994
ov00_021E6994: ; 0x021E6994
	ldr r0, _021E69A0 ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E69A4 ; =0x00001090
	str r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E69A0: .word _0221A680
_021E69A4: .word 0x00001090
	thumb_func_end ov00_021E6994

