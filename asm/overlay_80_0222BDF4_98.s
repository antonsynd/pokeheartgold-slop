	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_064

	.text

	thumb_func_start FrtCmd_064
FrtCmd_064: ; 0x0222DD3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	ldr r0, [r0, #8]
	bl Save_PlayerData_GetProfile
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _0222DD60
	mov r0, #0
	b _0222DD62
_0222DD60:
	mov r0, #0x61
_0222DD62:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FrtCmd_064

