	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222F9C0
	.public ov40_0222FA24

	.text

	thumb_func_start ov40_0222FA24
ov40_0222FA24: ; 0x0222FA24
	ldr r3, _0222FA28 ; =ov40_0222F9C0
	bx r3
	.balign 4, 0
_0222FA28: .word ov40_0222F9C0
	thumb_func_end ov40_0222FA24

