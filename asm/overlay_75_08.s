	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02246C18
	.extern _02249BE0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02246C18
ov75_02246C18: ; 0x02246C18
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02246C34
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02246C38 ; =_02249BE0
	add r1, r5, #0
	ldr r0, [r0]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
_02246C34:
	pop {r3, r4, r5, pc}
	nop
_02246C38: .word _02249BE0
	thumb_func_end ov75_02246C18

