	.include "asm/macros.inc"
	.include "overlay_117.inc"
	.include "global.inc"
	.public ov117_0225F504
	.extern ov117_0225F524
	.extern ov117_0225FAE4

	.text

	.text
	thumb_func_start ov117_0225F504
ov117_0225F504: ; 0x0225F504
	ldr r3, _0225F50C ; =ov117_0225F524
	ldr r2, _0225F510 ; =ov117_0225FAE4
	bx r3
	nop
_0225F50C: .word ov117_0225F524
_0225F510: .word ov117_0225FAE4
	thumb_func_end ov117_0225F504

