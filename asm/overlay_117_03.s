	.include "asm/macros.inc"
	.include "overlay_117.inc"
	.include "global.inc"
	.public ov117_0225F4E4
	.extern ov117_0225F524
	.extern ov117_0225FAD4

	.text

	.text
	thumb_func_start ov117_0225F4E4
ov117_0225F4E4: ; 0x0225F4E4
	ldr r3, _0225F4EC ; =ov117_0225F524
	ldr r2, _0225F4F0 ; =ov117_0225FAD4
	bx r3
	nop
_0225F4EC: .word ov117_0225F524
_0225F4F0: .word ov117_0225FAD4
	thumb_func_end ov117_0225F4E4

