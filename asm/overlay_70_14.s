#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E20
	.public ov70_02246944

	.text

	thumb_func_start ov70_02238E20
ov70_02238E20: ; 0x02238E20
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02238E3C
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02238E40 ; =ov70_02246944
	add r1, r5, #0
	ldr r0, [r0]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
_02238E3C:
	pop {r3, r4, r5, pc}
	nop
_02238E40: .word ov70_02246944
	thumb_func_end ov70_02238E20

