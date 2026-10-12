#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E841C
	.extern _021EA940

	.text

	.text
	thumb_func_start ov73_021E841C
ov73_021E841C: ; 0x021E841C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _021E8438
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _021E843C ; =_021EA940
	add r1, r5, #0
	ldr r0, [r0, #4]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
_021E8438:
	pop {r3, r4, r5, pc}
	nop
_021E843C: .word _021EA940
	thumb_func_end ov73_021E841C

