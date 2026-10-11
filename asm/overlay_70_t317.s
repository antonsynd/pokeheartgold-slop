#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241330
	.extern ov70_022410F0
	.extern ov70_02245D0A
	.extern ov70_02245D0C

	.text

	.text
	thumb_func_start ov70_02241330
ov70_02241330: ; 0x02241330
	push {r4, lr}
	lsl r4, r1, #2
	ldr r1, _0224134C ; =0x00000F0C
	ldr r3, _02241350 ; =ov70_02245D0C
	ldr r0, [r0, r1]
	ldr r1, _02241354 ; =ov70_02245D0A
	ldrh r3, [r3, r4]
	ldrh r1, [r1, r4]
	add r3, #0x20
	add r2, r2, r3
	bl ov70_022410F0
	pop {r4, pc}
	nop
_0224134C: .word 0x00000F0C
_02241350: .word ov70_02245D0C
_02241354: .word ov70_02245D0A
	thumb_func_end ov70_02241330

