	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223DE0
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02223DE0
ov13_02223DE0: ; 0x02223DE0
	ldr r0, _02223DE8 ; =ov13_0224DF30
	ldr r0, [r0, #0x2c]
	bx lr
	nop
_02223DE8: .word ov13_0224DF30
	thumb_func_end ov13_02223DE0

