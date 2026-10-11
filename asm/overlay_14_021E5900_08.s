#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E5A60
	.extern ov14_021F7CE4

    .text

	.text
	thumb_func_start ov14_021E5A60
ov14_021E5A60: ; 0x021E5A60
	ldr r3, _021E5A68 ; =GfGfx_SetBanks
	ldr r0, _021E5A6C ; =ov14_021F7CE4
	bx r3
	nop
_021E5A68: .word GfGfx_SetBanks
_021E5A6C: .word ov14_021F7CE4
	thumb_func_end ov14_021E5A60

