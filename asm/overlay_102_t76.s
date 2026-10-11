	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E98B8
	.extern ov102_021E94A4

	.text

	.text
	thumb_func_start ov102_021E98B8
ov102_021E98B8: ; 0x021E98B8
	ldr r3, _021E98C0 ; =ov102_021E94A4
	add r0, r1, #0
	bx r3
	nop
_021E98C0: .word ov102_021E94A4
	thumb_func_end ov102_021E98B8

