	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7328
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E7328
ov00_021E7328: ; 0x021E7328
	ldr r0, _021E7334 ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E7338 ; =0x000010E6
	strb r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E7334: .word _0221A680
_021E7338: .word 0x000010E6
	thumb_func_end ov00_021E7328

