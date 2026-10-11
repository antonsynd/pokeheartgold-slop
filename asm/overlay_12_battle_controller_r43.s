	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPrintReturnMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPrintReturnMessage
BattleController_EmitPrintReturnMessage: ; 0x022638A8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	mov r2, #0x20
	add r0, sp, #4
	strb r2, [r0]
	strb r3, [r0, #1]
	ldr r0, _022638E4 ; =0x00003122
	ldrsh r2, [r1, r0]
	ldr r0, _022638E8 ; =0x00002E4C
	ldr r0, [r1, r0]
	sub r1, r2, r0
	mov r0, #0x64
	mul r0, r1
	add r1, r2, #0
	bl _s32_div_f
	add r1, sp, #4
	strh r0, [r1, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022638E4: .word 0x00003122
_022638E8: .word 0x00002E4C
	thumb_func_end BattleController_EmitPrintReturnMessage

