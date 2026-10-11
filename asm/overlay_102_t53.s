	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8FB4
	.extern ov102_021E7A0C

	.text

	.text
	thumb_func_start ov102_021E8FB4
ov102_021E8FB4: ; 0x021E8FB4
	ldr r3, _021E8FBC ; =ov102_021E7A0C
	add r0, #0x64
	bx r3
	nop
_021E8FBC: .word ov102_021E7A0C
	thumb_func_end ov102_021E8FB4

