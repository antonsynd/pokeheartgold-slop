	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7130
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E7130
ov00_021E7130: ; 0x021E7130
	ldr r0, _021E713C ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E7140 ; =0x000010E0
	strb r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E713C: .word _0221A680
_021E7140: .word 0x000010E0
	thumb_func_end ov00_021E7130

