	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPrintSendOutMessage
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPrintSendOutMessage
BattleController_EmitPrintSendOutMessage: ; 0x022638EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0x21
	add r0, sp, #4
	strb r1, [r0]
	ldr r2, _02263934 ; =0x00002E4C
	strb r3, [r0, #1]
	ldr r1, [r6, r2]
	cmp r1, #0
	bne _0226390E
	mov r1, #0xfa
	lsl r1, r1, #2
	strh r1, [r0, #2]
	b _02263920
_0226390E:
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r1
	add r1, r2, #4
	ldr r1, [r6, r1]
	bl _u32_div_f
	add r1, sp, #4
	strh r0, [r1, #2]
_02263920:
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02263934: .word 0x00002E4C
	thumb_func_end BattleController_EmitPrintSendOutMessage

