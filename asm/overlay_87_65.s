	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E8058
	.extern ov87_021E83A8

	.text

	.text
	thumb_func_start ov87_021E8058
ov87_021E8058: ; 0x021E8058
	ldr r3, _021E8064 ; =Sprite_SetScaleAndAffineType
	ldr r0, [r0, #0xc]
	ldr r1, _021E8068 ; =ov87_021E83A8
	mov r2, #1
	bx r3
	nop
_021E8064: .word Sprite_SetScaleAndAffineType
_021E8068: .word ov87_021E83A8
	thumb_func_end ov87_021E8058

