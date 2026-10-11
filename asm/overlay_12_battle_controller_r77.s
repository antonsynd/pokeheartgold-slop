	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitSetBattleResults
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitSetBattleResults
BattleController_EmitSetBattleResults: ; 0x02264288
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl BattleSystem_GetBattleType
	add r4, r0, #0
	mov r1, #0x41
	add r0, sp, #4
	strb r1, [r0]
	add r0, r5, #0
	bl BattleSystem_GetBattleOutcomeFlags
	str r0, [sp, #8]
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0, #2]
	mov r0, #4
	tst r0, r4
	beq _022642D6
	bl sub_0202FC48
	cmp r0, #1
	bne _022642D6
	ldr r0, _022642EC ; =0x0000240C
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _022642D6
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov12_0223BE68
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	bls _022642D6
	bl GF_AssertFail
_022642D6:
	mov r0, #0x24
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_022642EC: .word 0x0000240C
	thumb_func_end BattleController_EmitSetBattleResults

