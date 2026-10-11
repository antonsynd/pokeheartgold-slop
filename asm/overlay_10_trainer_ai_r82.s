	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E2CC
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF7C

	.text

	.text
	thumb_func_start ov10_0221E2CC
ov10_0221E2CC: ; 0x0221E2CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r1, #0
	mov r1, #1
	bl ov10_0221EF24
	ldr r0, [sp, #0x1c]
	bl ov10_0221EEF0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	bl ov10_0221EEF0
	str r0, [sp, #0x2c]
	mov r4, #0
	ldr r1, _0221E450 ; =0x000003CF
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x34
	ldrb r0, [r0, r1]
	add r6, r4, #0
	str r0, [sp, #0x28]
_0221E2FA:
	add r2, r4, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, #0xa
	add r3, r6, #0
	bl GetBattlerVar
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0221E2FA
	ldr r0, [sp, #0x28]
	mov r1, #0xc0
	add r4, r0, #0
	mul r4, r1
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	bl GetBattlerAbility
	add r1, sp, #0x44
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	ldr r3, _0221E454 ; =0x00002DB8
	add r2, r1, r4
	ldrh r1, [r2, r3]
	ldr r5, _0221E450 ; =0x000003CF
	str r1, [sp, #4]
	add r1, sp, #0x34
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r2, r0]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	str r0, [sp, #0x14]
	ldrb r2, [r2, r5]
	sub r3, #0x6c
	add r5, r1, #0
	add r3, r5, r3
	ldr r0, [sp, #0x18]
	add r3, r3, r4
	bl ov10_0221EF7C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	mov r7, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0221E44A
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	str r0, [sp, #0x20]
_0221E374:
	ldr r1, _0221E458 ; =0x0000219C
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r1]
	cmp r7, r0
	beq _0221E43C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	add r2, r7, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _0221E43C
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221E43C
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _0221E45C ; =0x000001EE
	cmp r0, r1
	beq _0221E43C
	add r5, sp, #0x38
	mov r4, #0
	add r5, #2
_0221E3BA:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0221E3BA
	mov r5, #0
	add r4, sp, #0x34
_0221E3D4:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x46
	mov r2, #0
	bl GetMonData
	strb r0, [r4]
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #6
	blt _0221E3D4
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x44
	str r1, [sp]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	add r1, sp, #0x34
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r3, _0221E450 ; =0x000003CF
	add r2, r1, #0
	ldrb r2, [r2, r3]
	add r3, sp, #0x38
	ldr r0, [sp, #0x18]
	add r3, #2
	bl ov10_0221EF7C
	ldr r1, [sp, #0x24]
	cmp r0, r1
	ble _0221E43C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	bl ov10_0221EF24
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_0221E43C:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	add r7, r7, #1
	bl BattleSystem_GetPartySize
	cmp r7, r0
	blt _0221E374
_0221E44A:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_0221E450: .word 0x000003CF
_0221E454: .word 0x00002DB8
_0221E458: .word 0x0000219C
_0221E45C: .word 0x000001EE
	thumb_func_end ov10_0221E2CC

