	.include "asm/macros.inc"
	.include "overlay_117.inc"
	.include "global.inc"
	.public ov117_0225F514
	.extern ov117_0225F524
	.extern ov117_0225FAEC

	.text

	.text
	thumb_func_start ov117_0225F514
ov117_0225F514: ; 0x0225F514
	ldr r3, _0225F51C ; =ov117_0225F524
	ldr r2, _0225F520 ; =ov117_0225FAEC
	bx r3
	nop
_0225F51C: .word ov117_0225F524
_0225F520: .word ov117_0225FAEC
	thumb_func_end ov117_0225F514

