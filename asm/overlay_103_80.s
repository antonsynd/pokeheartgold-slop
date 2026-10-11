	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EEAC0
	.public ov103_021EEAC8

	.text

	thumb_func_start ov103_021EEAC0
ov103_021EEAC0: ; 0x021EEAC0
	ldr r3, _021EEAC4 ; =ov103_021EEAC8
	bx r3
	.balign 4, 0
_021EEAC4: .word ov103_021EEAC8
	thumb_func_end ov103_021EEAC0

