	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221DCC0
	.extern ov07_0221D55C

	.text

	.text
	thumb_func_start ov07_0221DCC0
ov07_0221DCC0: ; 0x0221DCC0
	ldr r1, [r0, #0x18]
	ldr r3, _0221DCD0 ; =ov07_0221D55C
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r0, #0x18]
	bx r3
	.balign 4, 0
_0221DCD0: .word ov07_0221D55C
	thumb_func_end ov07_0221DCC0

