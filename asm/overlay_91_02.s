	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CA90
	.public ov91_0225D2EC

	.text

	thumb_func_start ov91_0225CA90
ov91_0225CA90: ; 0x0225CA90
	ldr r3, _0225CA98 ; =ov91_0225D2EC
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0225CA98: .word ov91_0225D2EC
	thumb_func_end ov91_0225CA90

