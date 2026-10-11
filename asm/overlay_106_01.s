#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E594C
	.extern ov106_021E5DFC

	.text

	.text
	thumb_func_start ov106_021E594C
ov106_021E594C: ; 0x021E594C
	ldr r3, _021E5950 ; =ov106_021E5DFC
	bx r3
	.balign 4, 0
_021E5950: .word ov106_021E5DFC
	thumb_func_end ov106_021E594C

