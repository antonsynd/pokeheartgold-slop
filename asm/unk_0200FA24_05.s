	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public SetMasterBrightnessNeutral
	.extern SetMasterBrightness

	.text
	thumb_func_start SetMasterBrightnessNeutral
SetMasterBrightnessNeutral: ; 0x0200FBE8
	ldr r3, _0200FBF0 ; =SetMasterBrightness
	mov r1, #0
	bx r3
	nop
_0200FBF0: .word SetMasterBrightness
	thumb_func_end SetMasterBrightnessNeutral

