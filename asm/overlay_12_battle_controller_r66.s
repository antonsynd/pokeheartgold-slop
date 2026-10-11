	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitIncrementGameStat
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitIncrementGameStat
BattleController_EmitIncrementGameStat: ; 0x02263F0C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r5, #0x36
	add r1, sp, #4
	strb r5, [r1]
	strb r2, [r1, #1]
	strh r3, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end BattleController_EmitIncrementGameStat

