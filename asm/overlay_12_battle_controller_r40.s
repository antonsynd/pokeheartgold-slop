	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPrintTrainerMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPrintTrainerMessage
BattleController_EmitPrintTrainerMessage: ; 0x02263828
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x1f
	add r1, sp, #4
	strb r3, [r1]
	strb r2, [r1, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r4, pc}
	thumb_func_end BattleController_EmitPrintTrainerMessage

