#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EBDE0
	.public ov14_021EBDE8

    .text

	thumb_func_start ov14_021EBDE0
ov14_021EBDE0: ; 0x021EBDE0
	ldr r3, _021EBDE4 ; =ov14_021EBDE8
	bx r3
	.balign 4, 0
_021EBDE4: .word ov14_021EBDE8
	thumb_func_end ov14_021EBDE0

