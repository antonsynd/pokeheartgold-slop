	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022228BC
	.extern ov13_0224DD8C

	.text

	.text
	thumb_func_start ov13_022228BC
ov13_022228BC: ; 0x022228BC
	push {r3, lr}
	add r0, r1, #0
	ldr r1, _022228C8 ; =ov13_0224DD8C
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_022228C8: .word ov13_0224DD8C
	thumb_func_end ov13_022228BC

