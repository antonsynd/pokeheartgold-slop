	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B098
	.public ov43_0222B1D8

	.text

	thumb_func_start ov43_0222B098
ov43_0222B098: ; 0x0222B098
	ldr r3, _0222B09C ; =ov43_0222B1D8
	bx r3
	.balign 4, 0
_0222B09C: .word ov43_0222B1D8
	thumb_func_end ov43_0222B098

