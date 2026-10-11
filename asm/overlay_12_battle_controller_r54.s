	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleControl_EmitPartyStatusHeal
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleControl_EmitPartyStatusHeal
BattleControl_EmitPartyStatusHeal: ; 0x02263CE8
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r5, #0x2a
	add r4, sp, #4
	strb r5, [r4]
	strh r3, [r4, #2]
	mov r3, #0xc0
	mul r3, r2
	add r3, r1, r3
	ldr r1, _02263D10 ; =0x00002D67
	ldrb r1, [r3, r1]
	add r3, sp, #4
	strb r1, [r4, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	bl ov12_02262240
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02263D10: .word 0x00002D67
	thumb_func_end BattleControl_EmitPartyStatusHeal

