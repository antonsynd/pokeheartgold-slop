	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPlaySE
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPlaySE
BattleController_EmitPlaySE: ; 0x022636FC
	push {r4, lr}
	sub sp, #8
	mov r4, #0x1b
	add r1, sp, #4
	strb r4, [r1]
	strh r2, [r1, #2]
	mov r1, #4
	str r1, [sp]
	add r2, r3, #0
	mov r1, #1
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end BattleController_EmitPlaySE

