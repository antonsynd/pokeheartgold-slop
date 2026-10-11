	.include "asm/macros.inc"
	.include "overlay_117.inc"
	.include "global.inc"
	.public ov117_0225F4D4
	.extern _0225FACC
	.extern ov117_0225F524

	.text

	.text
	thumb_func_start ov117_0225F4D4
ov117_0225F4D4: ; 0x0225F4D4
	ldr r3, _0225F4DC ; =ov117_0225F524
	ldr r2, _0225F4E0 ; =_0225FACC
	bx r3
	nop
_0225F4DC: .word ov117_0225F524
_0225F4E0: .word _0225FACC
	thumb_func_end ov117_0225F4D4

