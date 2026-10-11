	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F008
	.public ov91_0225F010

	.text

	thumb_func_start ov91_0225F008
ov91_0225F008: ; 0x0225F008
	ldr r3, _0225F00C ; =ov91_0225F010
	bx r3
	.balign 4, 0
_0225F00C: .word ov91_0225F010
	thumb_func_end ov91_0225F008

