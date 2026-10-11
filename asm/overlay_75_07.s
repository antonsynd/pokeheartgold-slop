	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02246BF0
	.extern _02249BE0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02246BF0
ov75_02246BF0: ; 0x02246BF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _02246C14 ; =_02249BE0
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r4, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
	add r0, r6, #0
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02246C14: .word _02249BE0
	thumb_func_end ov75_02246BF0

