	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6CA4
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6CA4
ov00_021E6CA4: ; 0x021E6CA4
	ldr r1, _021E6CB4 ; =_0221A680
	ldr r2, [r1]
	cmp r2, #0
	beq _021E6CB2
	mov r1, #0x3f
	lsl r1, r1, #6
	str r0, [r2, r1]
_021E6CB2:
	bx lr
	.balign 4, 0
_021E6CB4: .word _0221A680
	thumb_func_end ov00_021E6CA4

