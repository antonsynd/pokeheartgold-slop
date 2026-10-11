	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitDrawYesNoBox
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitDrawYesNoBox
BattleController_EmitDrawYesNoBox: ; 0x0226337C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	add r4, r3, #0
	bl BattleBuffer_Clear
	mov r1, #0x13
	add r0, sp, #4
	strb r1, [r0]
	ldr r1, [sp, #0x20]
	strh r4, [r0, #2]
	strb r1, [r0, #1]
	ldr r0, [sp, #0x24]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp]
	add r0, r6, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end BattleController_EmitDrawYesNoBox

