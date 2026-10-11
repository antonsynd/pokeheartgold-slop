	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitInitStartBallGauge
	.extern ov12_02262240
	.extern ov12_022645F8

	.text

	.text
	thumb_func_start BattleController_EmitInitStartBallGauge
BattleController_EmitInitStartBallGauge: ; 0x02263E34
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x30
	bl ov12_022645F8
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end BattleController_EmitInitStartBallGauge

