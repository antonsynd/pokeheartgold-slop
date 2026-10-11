	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_129

	.text

	thumb_func_start FrtCmd_129
FrtCmd_129: ; 0x0222D13C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVarPtr
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl Save_FrontierData_Get
	mov r1, #0
	add r2, r1, #0
	bl FrontierData_BattlePointAction
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_129

