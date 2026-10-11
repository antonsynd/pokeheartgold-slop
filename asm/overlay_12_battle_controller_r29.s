	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPrintMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPrintMessage
BattleController_EmitPrintMessage: ; 0x022633F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r3, r2, #0
	mov r1, #0x15
	strb r1, [r3]
	mov r1, #0x24
	str r1, [sp]
	ldr r2, [r4, #0x64]
	mov r1, #1
	bl ov12_02262240
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end BattleController_EmitPrintMessage

