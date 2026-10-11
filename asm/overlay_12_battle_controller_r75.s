	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitPlayMoveSE
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitPlayMoveSE
BattleController_EmitPlayMoveSE: ; 0x02264228
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r3, #0x3f
	add r4, sp, #4
	strb r3, [r4]
	ldr r3, _02264264 ; =0x0000216C
	ldr r5, [r1, r3]
	mov r1, #2
	add r3, r5, #0
	tst r3, r1
	beq _02264242
	strb r1, [r4, #1]
	b _02264252
_02264242:
	mov r1, #4
	tst r1, r5
	beq _0226424E
	mov r1, #1
	strb r1, [r4, #1]
	b _02264252
_0226424E:
	mov r1, #0
	strb r1, [r4, #1]
_02264252:
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov12_02262240
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02264264: .word 0x0000216C
	thumb_func_end BattleController_EmitPlayMoveSE

