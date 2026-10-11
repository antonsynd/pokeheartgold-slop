	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221FAF8
	.extern _02234B80

	.text

	.text
	thumb_func_start ov07_0221FAF8
ov07_0221FAF8: ; 0x0221FAF8
	ldr r0, _0221FB00 ; =_02234B80
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_0221FB00: .word _02234B80
	thumb_func_end ov07_0221FAF8

