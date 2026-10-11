	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_02263A1C
	.extern ov12_02262240

	.text

	.text
	thumb_func_start ov12_02263A1C
ov12_02263A1C: ; 0x02263A1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r1, _02263B38 ; =0x0000219C
	add r4, r2, #0
	add r7, r5, r1
	ldrb r2, [r7, r4]
	add r1, r4, #0
	str r0, [sp, #4]
	bl BattleSystem_GetPartyMon
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	str r0, [sp, #8]
	mov r0, #0x26
	add r3, sp, #0x10
	strb r0, [r3]
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r2, _02263B3C ; =0x00002D74
	add r0, r5, r6
	ldrb r1, [r0, r2]
	strb r1, [r3, #1]
	add r1, r2, #0
	add r1, #0x18
	ldr r1, [r0, r1]
	add r2, #0x1c
	strh r1, [r3, #2]
	ldr r0, [r0, r2]
	add r1, r4, #0
	strh r0, [r3, #4]
	ldrb r0, [r7, r4]
	strb r0, [r3, #6]
	add r0, r5, #0
	bl GetBattlerStatusCondition
	add r1, sp, #0x10
	ldrb r2, [r1, #7]
	mov r3, #0x1f
	lsl r0, r0, #0x18
	bic r2, r3
	lsr r3, r0, #0x18
	mov r0, #0x1f
	and r0, r3
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0xb5
	lsl r0, r0, #6
	add r7, r5, r0
	ldrh r0, [r7, r6]
	cmp r0, #0x1d
	beq _02263A9C
	cmp r0, #0x20
	bne _02263AB6
_02263A9C:
	ldr r0, _02263B40 ; =0x00002D54
	add r1, r5, r6
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _02263AB6
	add r0, sp, #0x10
	ldrb r1, [r0, #7]
	mov r2, #0x60
	bic r1, r2
	mov r2, #0x40
	orr r1, r2
	strb r1, [r0, #7]
	b _02263AD0
_02263AB6:
	add r3, sp, #0x10
	ldrb r2, [r3, #7]
	mov r0, #0x60
	add r1, r5, r6
	bic r2, r0
	ldr r0, _02263B44 ; =0x00002DBE
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r2
	strb r0, [r3, #7]
_02263AD0:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl GetMonExpBySpeciesAndLevel
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _02263B48 ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	ldr r1, [sp, #8]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r1, #1
	bl GetMonExpBySpeciesAndLevel
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl GetMonExpBySpeciesAndLevel
	sub r0, r5, r0
	str r0, [sp, #0x1c]
	ldrh r1, [r7, r6]
	ldr r0, [sp, #4]
	bl BattleSystem_CheckMonCaught
	add r3, sp, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r3, #7]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r3, #7]
	ldr r0, [sp, #4]
	bl BattleSystem_GetSafariBallCount
	str r0, [sp, #0x20]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov12_02262240
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02263B38: .word 0x0000219C
_02263B3C: .word 0x00002D74
_02263B40: .word 0x00002D54
_02263B44: .word 0x00002DBE
_02263B48: .word 0x00002DA4
	thumb_func_end ov12_02263A1C

