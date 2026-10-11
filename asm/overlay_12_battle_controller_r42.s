	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitCopyStatus2Effect
	.extern ov12_02262240
	.extern ov12_022643C8

	.text

	.text
	thumb_func_start BattleController_EmitCopyStatus2Effect
BattleController_EmitCopyStatus2Effect: ; 0x02263878
	push {r3, r4, r5, lr}
	sub sp, #0x68
	add r4, r2, #0
	ldr r2, [sp, #0x78]
	add r5, r0, #0
	str r2, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	mov r3, #1
	bl ov12_022643C8
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov12_02262240
	add sp, #0x68
	pop {r3, r4, r5, pc}
	thumb_func_end BattleController_EmitCopyStatus2Effect

