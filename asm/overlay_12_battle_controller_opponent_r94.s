#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225E1FC
	.extern ov12_02261EB8
	.extern ov12_02261ED4

	.text

	.text
	thumb_func_start ov12_0225E1FC
ov12_0225E1FC: ; 0x0225E1FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4]
	add r2, sp, #0
	bl ov12_0223BE0C
	cmp r0, #1
	bne _0225E216
	ldr r0, [r4]
	bl ov12_02261ED4
_0225E216:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225E226
	cmp r0, #4
	bhi _0225E226
	cmp r0, #2
	bne _0225E22C
_0225E226:
	ldr r0, [r4]
	bl ov12_02261EB8
_0225E22C:
	add r2, sp, #0
	ldrb r1, [r4, #9]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_02262F24
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0225E1FC

