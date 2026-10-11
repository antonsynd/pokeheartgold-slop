	.include "asm/macros.inc"
	.include "overlay_80_02235438.inc"
	.include "global.inc"
	.public FrtCmd_132
	.extern ov80_0223558C

    .text

	.text
	thumb_func_start FrtCmd_132
FrtCmd_132: ; 0x0223544C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	add r5, r0, #0
	add r0, r7, #0
	bl FrontierScriptContext_ReadHalfWord
	add r6, r0, #0
	add r0, r7, #0
	bl FrontierScript_ReadVar
	str r0, [sp]
	add r0, r7, #0
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl Frontier_GetData
	cmp r6, #0x3b
	bgt _022354CC
	add r1, r6, #0
	sub r1, #0x21
	bmi _022354C6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02235490: ; jump table
	.short _022354FC - _02235490 - 2 ; case 0
	.short _02235504 - _02235490 - 2 ; case 1
	.short _0223550C - _02235490 - 2 ; case 2
	.short _02235514 - _02235490 - 2 ; case 3
	.short _0223553E - _02235490 - 2 ; case 4
	.short _02235546 - _02235490 - 2 ; case 5
	.short _0223554E - _02235490 - 2 ; case 6
	.short _02235524 - _02235490 - 2 ; case 7
	.short _0223552C - _02235490 - 2 ; case 8
	.short _0223557A - _02235490 - 2 ; case 9
	.short _0223551C - _02235490 - 2 ; case 10
	.short _02235536 - _02235490 - 2 ; case 11
	.short _0223557A - _02235490 - 2 ; case 12
	.short _022354D8 - _02235490 - 2 ; case 13
	.short _0223557A - _02235490 - 2 ; case 14
	.short _0223557A - _02235490 - 2 ; case 15
	.short _0223557A - _02235490 - 2 ; case 16
	.short _0223557A - _02235490 - 2 ; case 17
	.short _0223557A - _02235490 - 2 ; case 18
	.short _0223557A - _02235490 - 2 ; case 19
	.short _0223557A - _02235490 - 2 ; case 20
	.short _0223557A - _02235490 - 2 ; case 21
	.short _022354EE - _02235490 - 2 ; case 22
	.short _0223557A - _02235490 - 2 ; case 23
	.short _0223557A - _02235490 - 2 ; case 24
	.short _02235554 - _02235490 - 2 ; case 25
	.short _02235562 - _02235490 - 2 ; case 26
_022354C6:
	cmp r6, #2
	beq _022354D2
	b _0223557A
_022354CC:
	cmp r6, #0x64
	beq _0223556A
	b _0223557A
_022354D2:
	bl ResetSystem
	b _0223557E
_022354D8:
	bl FrontierFieldSystem_AwardTowerBattlePoints
	strh r0, [r4]
	ldr r0, [r5, #8]
	bl Save_GameStats_Get
	ldrh r2, [r4]
	mov r1, #0x45 ; GAME_STAT_BATTLE_POINTS
	bl GameStats_Add
	b _0223557E
_022354EE:
	ldr r1, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov80_0223558C
	strh r0, [r4]
	b _0223557E
_022354FC:
	bl FrontierFieldSystem_GetFrontierBattleNumber
	strh r0, [r4]
	b _0223557E
_02235504:
	bl ov80_022358C4
	strh r0, [r4]
	b _0223557E
_0223550C:
	bl FrontierFieldSystem_0204AC7C
	strh r0, [r4]
	b _0223557E
_02235514:
	bl ov80_022358E8
	strh r0, [r4]
	b _0223557E
_0223551C:
	bl FrontierFieldSystem_GetBattleTowerMode
	strh r0, [r4]
	b _0223557E
_02235524:
	ldr r1, [r5, #8]
	bl ov80_022357B4
	b _0223557E
_0223552C:
	ldr r1, [sp]
	bl ov80_02235898
	strh r0, [r4]
	b _0223557E
_02235536:
	ldr r1, [sp]
	bl ov80_022358B0
	b _0223557E
_0223553E:
	ldr r1, [r5, #8]
	bl FrontierFieldSystem_0204AD04
	b _0223557E
_02235546:
	ldr r1, [r5, #8]
	bl FrontierFieldSystem_0204AE20
	b _0223557E
_0223554E:
	bl FrontierFieldSystem_0204AF2C
	b _0223557E
_02235554:
	ldr r1, _02235584 ; =0x00000884
	mov r2, #0x46
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	b _0223557E
_02235562:
	ldr r1, _02235588 ; =0x000008D6
	mov r2, #1
	strb r2, [r0, r1]
	b _0223557E
_0223556A:
	cmp r0, #0
	bne _02235574
	mov r0, #1
	strh r0, [r4]
	b _0223557E
_02235574:
	mov r0, #0
	strh r0, [r4]
	b _0223557E
_0223557A:
	bl GF_AssertFail
_0223557E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235584: .word 0x00000884
_02235588: .word 0x000008D6
	thumb_func_end FrtCmd_132

