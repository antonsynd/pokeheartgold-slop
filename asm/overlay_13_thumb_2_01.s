	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022208F8
	.extern ov13_0224DD8C

	.text

	.text
	thumb_func_start ov13_022208F8
ov13_022208F8: ; 0x022208F8
	push {r3, lr}
	ldr r1, _02220904 ; =ov13_0224DD8C
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_02220904: .word ov13_0224DD8C
	thumb_func_end ov13_022208F8

