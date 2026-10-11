	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022387A0
	.public ov72_0223B92C

	.text

	thumb_func_start ov72_022387A0
ov72_022387A0: ; 0x022387A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _022387BC
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _022387C0 ; =ov72_0223B92C
	add r1, r5, #0
	ldr r0, [r0]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
_022387BC:
	pop {r3, r4, r5, pc}
	nop
_022387C0: .word ov72_0223B92C
	thumb_func_end ov72_022387A0

