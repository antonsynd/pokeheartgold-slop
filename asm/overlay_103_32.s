	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECF68
	.public ov103_021ED7D8

	.text

	thumb_func_start ov103_021ED7D8
ov103_021ED7D8: ; 0x021ED7D8
	push {r3, lr}
	bl ov103_021ECF68
	mov r0, #0xe
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov103_021ED7D8

