	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CAE0
	.public ov91_0225D380

	.text

	thumb_func_start ov91_0225CAE0
ov91_0225CAE0: ; 0x0225CAE0
	ldr r3, _0225CAE8 ; =ov91_0225D380
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0225CAE8: .word ov91_0225D380
	thumb_func_end ov91_0225CAE0

