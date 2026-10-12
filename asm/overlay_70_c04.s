#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237F58
	.extern _02246800

	.text

	.text
	thumb_func_start ov70_02237F58
ov70_02237F58: ; 0x02237F58
	ldr r0, _02237F60 ; =_02246800
	ldr r0, [r0, #4]
	bx lr
	nop
_02237F60: .word _02246800
	thumb_func_end ov70_02237F58

