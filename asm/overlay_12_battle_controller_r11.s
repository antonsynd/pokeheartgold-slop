	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitTrainerEncounter
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitTrainerEncounter
BattleController_EmitTrainerEncounter: ; 0x02262974
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #8
	add r3, sp, #4
	strb r1, [r3]
	mov r1, #0x34
	mul r1, r2
	add r1, r0, r1
	add r1, #0xad
	ldrb r1, [r1]
	strh r1, [r3, #2]
	add r1, r0, r2
	add r1, #0xa8
	ldrb r1, [r1]
	strb r1, [r3, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r3, pc}
	thumb_func_end BattleController_EmitTrainerEncounter

