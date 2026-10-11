	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public ov64_021E5B00
	.extern ov64_021E6FAC

	.text

	.text
	thumb_func_start ov64_021E5B00
ov64_021E5B00: ; 0x021E5B00
	ldr r3, _021E5B08 ; =GfGfx_SetBanks
	ldr r0, _021E5B0C ; =ov64_021E6FAC
	bx r3
	nop
_021E5B08: .word GfGfx_SetBanks
_021E5B0C: .word ov64_021E6FAC
	thumb_func_end ov64_021E5B00

