#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239E68
	.extern ov70_022464A8

	.text

	.text
	thumb_func_start ov70_02239E68
ov70_02239E68: ; 0x02239E68
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _02239E78 ; =ov70_022464A8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_02239E78: .word ov70_022464A8
	thumb_func_end ov70_02239E68

