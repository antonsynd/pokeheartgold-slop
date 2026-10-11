	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CE0C
	.public ov43_0222D008

	.text

	thumb_func_start ov43_0222CE0C
ov43_0222CE0C: ; 0x0222CE0C
	ldr r3, _0222CE10 ; =ov43_0222D008
	bx r3
	.balign 4, 0
_0222CE10: .word ov43_0222D008
	thumb_func_end ov43_0222CE0C

