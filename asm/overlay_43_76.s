	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D228
	.public ov43_0222D610

	.text

	thumb_func_start ov43_0222D228
ov43_0222D228: ; 0x0222D228
	ldr r3, _0222D22C ; =ov43_0222D610
	bx r3
	.balign 4, 0
_0222D22C: .word ov43_0222D610
	thumb_func_end ov43_0222D228

