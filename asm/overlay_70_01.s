#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public _02246800
	.public ov70_02237F2C

	.text

	thumb_func_start ov70_02237F2C
ov70_02237F2C: ; 0x02237F2C
	ldr r0, _02237F34 ; =_02246800
	mov r1, #0
	str r1, [r0]
	bx lr
	.balign 4, 0
_02237F34: .word _02246800
	thumb_func_end ov70_02237F2C

