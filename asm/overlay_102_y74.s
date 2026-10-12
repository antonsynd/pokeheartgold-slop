	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9044
	.extern ov102_021E87A8

	.text

	.text
	thumb_func_start ov102_021E9044
ov102_021E9044: ; 0x021E9044
	ldr r3, _021E904C ; =ov102_021E87A8
	add r0, #0x54
	bx r3
	nop
_021E904C: .word ov102_021E87A8
	thumb_func_end ov102_021E9044

