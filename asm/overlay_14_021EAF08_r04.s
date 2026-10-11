#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB1C0
	.extern ov14_021F7D9C

    .text

	.text
	thumb_func_start ov14_021EB1C0
ov14_021EB1C0: ; 0x021EB1C0
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _021EB1D6
	ldr r1, [r0, #0x30]
	lsl r2, r1, #2
	ldr r1, _021EB1DC ; =ov14_021F7D9C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
_021EB1D6:
	mov r0, #5
	pop {r3, pc}
	nop
_021EB1DC: .word ov14_021F7D9C
	thumb_func_end ov14_021EB1C0

