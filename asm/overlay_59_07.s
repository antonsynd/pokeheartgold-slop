	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223811C
	.public ov59_0223A03C

	.text

	thumb_func_start ov59_0223811C
ov59_0223811C: ; 0x0223811C
	ldr r3, _02238120 ; =ov59_0223A03C
	bx r3
	.balign 4, 0
_02238120: .word ov59_0223A03C
	thumb_func_end ov59_0223811C

