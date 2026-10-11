	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022208E8
	.extern ov13_0224DD80

	.text

	.text
	thumb_func_start ov13_022208E8
ov13_022208E8: ; 0x022208E8
	push {r3, lr}
	ldr r1, _022208F4 ; =ov13_0224DD80
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_022208F4: .word ov13_0224DD80
	thumb_func_end ov13_022208E8

