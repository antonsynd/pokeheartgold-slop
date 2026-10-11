	.include "asm/macros.inc"
	.include "overlay_117.inc"
	.include "global.inc"
	.public ov117_0225F4F4
	.extern ov117_0225F524
	.extern ov117_0225FADC

	.text

	.text
	thumb_func_start ov117_0225F4F4
ov117_0225F4F4: ; 0x0225F4F4
	ldr r3, _0225F4FC ; =ov117_0225F524
	ldr r2, _0225F500 ; =ov117_0225FADC
	bx r3
	nop
_0225F4FC: .word ov117_0225F524
_0225F500: .word ov117_0225FADC
	thumb_func_end ov117_0225F4F4

