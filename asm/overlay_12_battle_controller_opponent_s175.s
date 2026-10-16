#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02260C58

	.text

	.text
	thumb_func_start ov12_02260C58
ov12_02260C58: ; 0x02260C58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r7, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _02260C6E
	mov r4, #0
	b _02260C70
_02260C6E:
	mov r4, #1
_02260C70:
	ldr r0, [r5]
	add r1, r4, #0
	bl ov12_0223A908
	ldrb r1, [r5, #7]
	add r6, r0, #0
	cmp r1, #0
	beq _02260C86
	cmp r1, #1
	beq _02260CA2
	b _02260CC2
_02260C86:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _02260C90
	mov r1, #0
	b _02260C92
_02260C90:
	mov r1, #1
_02260C92:
	add r0, r6, #0
	add r2, r1, #0
	bl PartyGauge_StartHideTask
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02260CA2:
	bl PartyGauge_IsHideTaskFinished
	cmp r0, #1
	bne _02260CD8
	add r0, r6, #0
	bl PartyGauge_DeleteAndFreeResources
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl ov12_0223A914
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02260CC2:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl BattleController_EmitClearCommand
	add r0, r5, #0
	bl Heap_Free
	add r0, r7, #0
	bl SysTask_Destroy
_02260CD8:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_02260C58

