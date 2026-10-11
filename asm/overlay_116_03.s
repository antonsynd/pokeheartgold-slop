	.include "asm/macros.inc"
	.include "overlay_116.inc"
	.include "global.inc"
	.public ov116_0225F364
	.extern _0225F384
	.extern ov116_0225F1BC

	.text

	.text
	thumb_func_start ov116_0225F364
ov116_0225F364: ; 0x0225F364
	ldr r3, _0225F36C ; =ov116_0225F1BC
	ldr r2, _0225F370 ; =_0225F384
	bx r3
	nop
_0225F36C: .word ov116_0225F1BC
_0225F370: .word _0225F384
	thumb_func_end ov116_0225F364

