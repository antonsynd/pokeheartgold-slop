	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_130

	.text

	thumb_func_start FrtCmd_130
FrtCmd_130: ; 0x0222D168
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl Save_GameStats_Get
	mov r1, #0x45 ; GAME_STAT_BATTLE_POINTS
	add r2, r5, #0
	bl GameStats_Add
	ldr r0, [r4, #8]
	bl Save_FrontierData_Get
	add r1, r5, #0
	mov r2, #5
	bl FrontierData_BattlePointAction
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_130

