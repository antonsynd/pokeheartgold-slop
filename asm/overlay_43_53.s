	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B93C
	.public ov43_0222BAB8

	.text

	thumb_func_start ov43_0222B93C
ov43_0222B93C: ; 0x0222B93C
	ldr r3, _0222B940 ; =ov43_0222BAB8
	bx r3
	.balign 4, 0
_0222B940: .word ov43_0222BAB8
	thumb_func_end ov43_0222B93C

