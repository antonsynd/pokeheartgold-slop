	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EC9D8
	.extern ov103_021EEC30

	.text

	.text
	thumb_func_start ov103_021EC9D8
ov103_021EC9D8: ; 0x021EC9D8
	ldr r3, _021EC9E0 ; =GfGfx_SetBanks
	ldr r0, _021EC9E4 ; =ov103_021EEC30
	bx r3
	nop
_021EC9E0: .word GfGfx_SetBanks
_021EC9E4: .word ov103_021EEC30
	thumb_func_end ov103_021EC9D8

