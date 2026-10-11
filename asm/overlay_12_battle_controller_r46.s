	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPrintFirstSendOutMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPrintFirstSendOutMessage
BattleController_EmitPrintFirstSendOutMessage: ; 0x02263950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	str r2, [sp, #4]
	mov r2, #0x23
	add r1, sp, #8
	add r6, r0, #0
	strb r2, [r1]
	mov r4, #0
	bl BattleSystem_GetMaxBattlers
	cmp r0, #0
	ble _02263982
	add r5, sp, #8
_0226396C:
	ldr r0, _02263998 ; =0x0000219C
	add r1, r7, r4
	ldrb r0, [r1, r0]
	add r4, r4, #1
	strb r0, [r5, #4]
	add r0, r6, #0
	add r5, r5, #1
	bl BattleSystem_GetMaxBattlers
	cmp r4, r0
	blt _0226396C
_02263982:
	mov r0, #8
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	add r3, sp, #8
	bl ov12_02262240
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263998: .word 0x0000219C
	thumb_func_end BattleController_EmitPrintFirstSendOutMessage

