	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_SetMoveAnimation
	.extern ov12_02262240
	.extern ov12_022643C8

	.text

	.text
	thumb_func_start BattleController_SetMoveAnimation
BattleController_SetMoveAnimation: ; 0x0226340C
	push {r4, r5, r6, lr}
	sub sp, #0x68
	mov r3, #0
	add r4, r1, #0
	str r3, [sp]
	ldr r6, [r4, #0x64]
	add r5, r0, #0
	str r6, [sp, #4]
	ldr r6, [r4, #0x6c]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	bl ov12_022643C8
	mov r0, #0x58
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	mov r1, #1
	add r3, sp, #0x10
	bl ov12_02262240
	add sp, #0x68
	pop {r4, r5, r6, pc}
	thumb_func_end BattleController_SetMoveAnimation

