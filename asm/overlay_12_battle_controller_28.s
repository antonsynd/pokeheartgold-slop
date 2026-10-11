	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPrintAttackMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPrintAttackMessage
BattleController_EmitPrintAttackMessage: ; 0x022633B8
	push {r4, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x14
	add r3, sp, #4
	strb r1, [r3]
	ldr r1, [r2, #0x64]
	add r4, r2, r1
	ldr r1, _022633E8 ; =0x0000219C
	ldrb r1, [r4, r1]
	strb r1, [r3, #1]
	ldr r1, _022633EC ; =0x00003044
	ldr r1, [r2, r1]
	strh r1, [r3, #2]
	mov r1, #4
	str r1, [sp]
	ldr r2, [r2, #0x64]
	mov r1, #1
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r4, pc}
	nop
_022633E8: .word 0x0000219C
_022633EC: .word 0x00003044
	thumb_func_end BattleController_EmitPrintAttackMessage

