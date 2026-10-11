	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitHealthbarUpdate
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitHealthbarUpdate
BattleController_EmitHealthbarUpdate: ; 0x02263488
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r2, [sp, #8]
	add r1, r2, #0
	add r3, r5, r2
	ldr r2, _0226354C ; =0x0000219C
	str r0, [sp, #4]
	ldrb r2, [r3, r2]
	bl BattleSystem_GetPartyMon
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	mov r0, #0x18
	add r3, sp, #0xc
	strb r0, [r3]
	ldr r0, [sp, #8]
	mov r1, #0xc0
	add r4, r0, #0
	mul r4, r1
	ldr r0, _02263550 ; =0x00002D74
	add r1, r5, r4
	ldrb r2, [r1, r0]
	strb r2, [r3, #1]
	add r2, r0, #0
	add r2, #0x18
	ldr r2, [r1, r2]
	strh r2, [r3, #2]
	add r2, r0, #0
	add r2, #0x1c
	ldr r2, [r1, r2]
	sub r0, #0x34
	strh r2, [r3, #4]
	ldr r2, _02263554 ; =0x0000215C
	ldr r2, [r5, r2]
	str r2, [sp, #0x14]
	ldrh r0, [r1, r0]
	cmp r0, #0x1d
	beq _022634EE
	cmp r0, #0x20
	bne _02263500
_022634EE:
	ldr r0, _02263558 ; =0x00002D54
	add r1, r5, r4
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _02263500
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #7]
	b _0226350E
_02263500:
	ldr r0, _0226355C ; =0x00002DBE
	add r1, r5, r4
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	add r0, sp, #0xc
	strb r1, [r0, #7]
_0226350E:
	add r0, r7, #0
	add r1, r6, #0
	bl GetMonExpBySpeciesAndLevel
	ldr r1, _02263560 ; =0x00002DA4
	add r2, r5, r4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #1
	bl GetMonExpBySpeciesAndLevel
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl GetMonExpBySpeciesAndLevel
	sub r0, r4, r0
	str r0, [sp, #0x1c]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl ov12_02262240
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226354C: .word 0x0000219C
_02263550: .word 0x00002D74
_02263554: .word 0x0000215C
_02263558: .word 0x00002D54
_0226355C: .word 0x00002DBE
_02263560: .word 0x00002DA4
	thumb_func_end BattleController_EmitHealthbarUpdate

