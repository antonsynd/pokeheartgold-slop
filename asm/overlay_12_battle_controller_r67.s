	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitShowWaitMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitShowWaitMessage
BattleController_EmitShowWaitMessage: ; 0x02263F30
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl BattleSystem_GetBattleType
	mov r2, #0x37
	add r1, sp, #4
	strb r2, [r1]
	mov r2, #0
	strh r2, [r1, #2]
	mov r1, #4
	tst r0, r1
	beq _02263F84
	bl sub_0202FC48
	cmp r0, #1
	bne _02263F84
	ldr r0, _02263F88 ; =0x0000240C
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02263F84
	add r0, r5, #0
	add r1, sp, #8
	bl ov12_0223BE68
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	blo _02263F74
	bl GF_AssertFail
_02263F74:
	mov r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
_02263F84:
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_02263F88: .word 0x0000240C
	thumb_func_end BattleController_EmitShowWaitMessage

