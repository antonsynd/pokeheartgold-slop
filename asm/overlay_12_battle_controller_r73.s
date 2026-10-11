	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitForefitMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitForefitMessage
BattleController_EmitForefitMessage: ; 0x02264120
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl BattleSystem_GetBattleType
	mov r2, #0x3d
	add r1, sp, #4
	strb r2, [r1]
	mov r2, #0
	strh r2, [r1, #2]
	mov r1, #4
	tst r0, r1
	beq _02264162
	bl sub_0202FC48
	cmp r0, #1
	bne _02264162
	ldr r0, _02264178 ; =0x0000240C
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02264162
	add r0, r4, #0
	add r1, sp, #8
	bl ov12_0223BE68
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	blo _02264162
	bl GF_AssertFail
_02264162:
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_02264178: .word 0x0000240C
	thumb_func_end BattleController_EmitForefitMessage

