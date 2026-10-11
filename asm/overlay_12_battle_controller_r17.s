	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_02262B80
	.extern ov12_02262240

	.text

	.text
	thumb_func_start ov12_02262B80
ov12_02262B80: ; 0x02262B80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	add r1, sp, #0x28
	mov r2, #0x2c
	add r6, r3, #0
	bl MIi_CpuClearFast
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleContext
	ldr r1, [sp, #0xc]
	bl BattleBuffer_Clear
	mov r5, #0
	ldr r0, [sp, #4]
	add r4, r5, #0
	bl BattleSystem_GetMaxBattlers
	cmp r0, #0
	ble _02262BD0
_02262BB0:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl Battler_CanSelectAction
	cmp r0, #0
	bne _02262BC4
	add r0, r4, #0
	bl MaskOfFlagNo
	orr r5, r0
_02262BC4:
	ldr r0, [sp, #4]
	add r4, r4, #1
	bl BattleSystem_GetMaxBattlers
	cmp r4, r0
	blt _02262BB0
_02262BD0:
	mov r1, #0xe
	add r0, sp, #0x28
	strb r1, [r0]
	strb r6, [r0, #1]
	ldr r1, _02262ED0 ; =0x00003108
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	add r1, r0, #0
	orr r1, r5
	add r0, sp, #0x48
	strb r1, [r0, #9]
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	str r0, [sp, #0x20]
	tst r0, r1
	beq _02262C06
	ldr r0, [sp, #0x20]
	mov r1, #8
	tst r0, r1
	bne _02262C06
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r4, r0, #0
	and r4, r1
	b _02262C08
_02262C06:
	ldr r4, [sp, #0xc]
_02262C08:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl BattleSystem_GetParty
	str r0, [sp, #0x24]
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02262C9E
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r6, r0, r1
	mov r1, #0xa9
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	and r0, r1
	str r0, [sp, #0x1c]
_02262C32:
	ldr r1, _02262ED4 ; =0x0000312C
	ldr r0, [sp, #0x24]
	ldrb r1, [r6, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02262C90
	ldr r1, _02262ED8 ; =0x000001EE
	cmp r0, r1
	beq _02262C90
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262C78
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262C72
	mov r0, #3
	strb r0, [r5, #8]
	b _02262C7C
_02262C72:
	mov r0, #1
	strb r0, [r5, #8]
	b _02262C7C
_02262C78:
	mov r0, #2
	strb r0, [r5, #8]
_02262C7C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02262C86
	mov r0, #0
	b _02262C8C
_02262C86:
	add r0, r4, #0
	bl GetPercentProgressTowardsNextLevel
_02262C8C:
	strb r0, [r5, #2]
	add r5, r5, #1
_02262C90:
	ldr r0, [sp, #0x24]
	add r6, r6, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _02262C32
_02262C9E:
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	and r0, r1
	cmp r0, #0xc
	beq _02262CBC
	ldr r0, [sp, #0x20]
	mov r1, #0x10
	tst r0, r1
	bne _02262CBC
	ldr r0, [sp, #0x20]
	cmp r0, #0x4b
	beq _02262CBC
	cmp r0, #0xcb
	beq _02262CBC
	b _02262DF4
_02262CBC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	beq _02262CD2
	ldr r0, [sp, #4]
	mov r1, #2
	bl BattleSystem_GetBattlerFromBattlerType
	b _02262CDA
_02262CD2:
	ldr r0, [sp, #4]
	mov r1, #3
	bl BattleSystem_GetBattlerFromBattlerType
_02262CDA:
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl BattleSystem_GetParty
	str r0, [sp, #0x10]
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02262D56
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r4, r0, r1
_02262CFC:
	ldr r1, _02262ED4 ; =0x0000312C
	ldr r0, [sp, #0x10]
	ldrb r1, [r4, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02262D48
	ldr r1, _02262ED8 ; =0x000001EE
	cmp r0, r1
	beq _02262D48
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262D42
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262D3C
	mov r0, #3
	strb r0, [r5, #0xe]
	b _02262D46
_02262D3C:
	mov r0, #1
	strb r0, [r5, #0xe]
	b _02262D46
_02262D42:
	mov r0, #2
	strb r0, [r5, #0xe]
_02262D46:
	add r5, r5, #1
_02262D48:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _02262CFC
_02262D56:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	beq _02262D6C
	ldr r0, [sp, #4]
	mov r1, #4
	bl BattleSystem_GetBattlerFromBattlerType
	b _02262D74
_02262D6C:
	ldr r0, [sp, #4]
	mov r1, #5
	bl BattleSystem_GetBattlerFromBattlerType
_02262D74:
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl BattleSystem_GetParty
	str r0, [sp, #0x14]
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02262E7A
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r4, r0, r1
	add r5, #3
_02262D98:
	ldr r1, _02262ED4 ; =0x0000312C
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02262DE4
	ldr r1, _02262ED8 ; =0x000001EE
	cmp r0, r1
	beq _02262DE4
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262DDE
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262DD8
	mov r0, #3
	strb r0, [r5, #0xe]
	b _02262DE2
_02262DD8:
	mov r0, #1
	strb r0, [r5, #0xe]
	b _02262DE2
_02262DDE:
	mov r0, #2
	strb r0, [r5, #0xe]
_02262DE2:
	add r5, r5, #1
_02262DE4:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _02262D98
	b _02262E7A
_02262DF4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r2, #2
	bl ov12_0223ABB8
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl BattleSystem_GetParty
	str r0, [sp, #0x18]
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02262E7A
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r4, r0, r1
_02262E20:
	ldr r1, _02262ED4 ; =0x0000312C
	ldr r0, [sp, #0x18]
	ldrb r1, [r4, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02262E6C
	ldr r1, _02262ED8 ; =0x000001EE
	cmp r0, r1
	beq _02262E6C
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262E66
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02262E60
	mov r0, #3
	strb r0, [r5, #0xe]
	b _02262E6A
_02262E60:
	mov r0, #1
	strb r0, [r5, #0xe]
	b _02262E6A
_02262E66:
	mov r0, #2
	strb r0, [r5, #0xe]
_02262E6A:
	add r5, r5, #1
_02262E6C:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _02262E20
_02262E7A:
	mov r5, #0
	add r6, sp, #0x28
	add r4, r6, #0
	add r7, r5, #0
_02262E82:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r5, #6
	add r3, r7, #0
	bl GetBattlerVar
	strh r0, [r6, #0x14]
	add r2, r5, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, #0x1f
	mov r3, #0
	bl GetBattlerVar
	strb r0, [r4, #0x1c]
	add r2, r5, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, #0x27
	mov r3, #0
	bl GetBattlerVar
	add r1, r4, #0
	add r1, #0x20
	add r5, r5, #1
	strb r0, [r1]
	add r6, r6, #2
	add r4, r4, #1
	cmp r5, #4
	blt _02262E82
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0x28
	add r0, r0, r1
	ldr r1, _02262EDC ; =0x00002D8C
	b _02262EE0
	nop
_02262ED0: .word 0x00003108
_02262ED4: .word 0x0000312C
_02262ED8: .word 0x000001EE
_02262EDC: .word 0x00002D8C
_02262EE0:
	ldr r2, [r0, r1]
	strh r2, [r3, #0x24]
	add r2, r1, #4
	ldr r2, [r0, r2]
	strh r2, [r3, #0x26]
	mov r2, #0x24
	ldrsh r2, [r3, r2]
	cmp r2, #0
	beq _02262F08
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	add r0, sp, #0x48
	beq _02262F02
	mov r1, #3
	strb r1, [r0, #8]
	b _02262F0E
_02262F02:
	mov r1, #1
	strb r1, [r0, #8]
	b _02262F0E
_02262F08:
	mov r1, #2
	add r0, sp, #0x48
	strb r1, [r0, #8]
_02262F0E:
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x28
	bl ov12_02262240
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_02262B80

