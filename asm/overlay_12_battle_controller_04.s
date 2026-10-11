	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPlayEncounterAnimation
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPlayEncounterAnimation
BattleController_EmitPlayEncounterAnimation: ; 0x022622C8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	str r1, [sp, #4]
	bl BattleSystem_GetRandTemp
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end BattleController_EmitPlayEncounterAnimation

