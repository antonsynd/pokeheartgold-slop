	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E70E0
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E70E0
ov00_021E70E0: ; 0x021E70E0
	ldr r0, _021E70EC ; =_0221A680
	mov r2, #2
	ldr r1, [r0]
	ldr r0, _021E70F0 ; =0x000010E0
	strb r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E70EC: .word _0221A680
_021E70F0: .word 0x000010E0
	thumb_func_end ov00_021E70E0

