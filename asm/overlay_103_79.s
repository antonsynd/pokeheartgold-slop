	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EEAB8
	.public ov103_021EEAC8

	.text

	thumb_func_start ov103_021EEAB8
ov103_021EEAB8: ; 0x021EEAB8
	ldr r3, _021EEABC ; =ov103_021EEAC8
	bx r3
	.balign 4, 0
_021EEABC: .word ov103_021EEAC8
	thumb_func_end ov103_021EEAB8

