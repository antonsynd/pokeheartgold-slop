#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_022233B8
	.extern ov08_022233DC
	.extern ov08_02225B90

	.text

	.text
	thumb_func_start ov08_022233B8
ov08_022233B8: ; 0x022233B8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _022233D4 ; =ov08_02225B90
	add r1, #0x1c
	bl AddWindow
	ldr r1, _022233D8 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov08_022233DC
	pop {r4, pc}
	.balign 4, 0
_022233D4: .word ov08_02225B90
_022233D8: .word 0x0000114C
	thumb_func_end ov08_022233B8

