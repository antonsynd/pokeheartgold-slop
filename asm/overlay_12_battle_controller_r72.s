	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitRunAwayMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitRunAwayMessage
BattleController_EmitRunAwayMessage: ; 0x0226408C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r5, r1, #0
	bl BattleSystem_GetBattleType
	str r0, [sp, #4]
	mov r1, #0x3c
	add r0, sp, #8
	strb r1, [r0]
	mov r4, #0
	strb r4, [r0, #1]
	strh r4, [r0, #2]
	add r0, r6, #0
	bl BattleSystem_GetMaxBattlers
	cmp r0, #0
	ble _022640D4
	add r7, sp, #8
_022640B2:
	ldr r0, _02264118 ; =0x000021A8
	ldr r0, [r5, r0]
	cmp r0, #0x10
	bne _022640C6
	add r0, r4, #0
	bl MaskOfFlagNo
	ldrb r1, [r7, #1]
	orr r0, r1
	strb r0, [r7, #1]
_022640C6:
	add r0, r6, #0
	add r5, #0x10
	add r4, r4, #1
	bl BattleSystem_GetMaxBattlers
	cmp r4, r0
	blt _022640B2
_022640D4:
	ldr r0, [sp, #4]
	mov r1, #4
	tst r0, r1
	beq _02264104
	bl sub_0202FC48
	cmp r0, #1
	bne _02264104
	ldr r0, _0226411C ; =0x0000240C
	ldr r1, [r6, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02264104
	add r0, r6, #0
	add r1, sp, #0xc
	bl ov12_0223BE68
	add r1, sp, #8
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	blo _02264104
	bl GF_AssertFail
_02264104:
	mov r0, #0x20
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #8
	bl ov12_02262240
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02264118: .word 0x000021A8
_0226411C: .word 0x0000240C
	thumb_func_end BattleController_EmitRunAwayMessage

