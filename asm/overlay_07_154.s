	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221FAEC
	.extern ov07_02234B8C

	.text

	.text
	thumb_func_start ov07_0221FAEC
ov07_0221FAEC: ; 0x0221FAEC
	ldr r0, _0221FAF4 ; =ov07_02234B8C
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_0221FAF4: .word ov07_02234B8C
	thumb_func_end ov07_0221FAEC

