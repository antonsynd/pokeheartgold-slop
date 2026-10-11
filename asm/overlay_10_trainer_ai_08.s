	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221F47C
	.public ov10_0221F5F4
	.public ov10_0221F62C
	.public ov10_0221F7F0
	.public ov10_0221FD34
	.public ov10_0221FE8C
	.public ov10_02220010
	.public ov10_02220270
	.public ov10_0222036C
	.public ov10_022203A4
	.public ov10_022205BC
	.public ov10_022206B0

	.text

	thumb_func_start ov10_0221F7F0
ov10_0221F7F0: ; 0x0221F7F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xbc
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x14]
	bl BattleSystem_GetBattleType
	mov r4, #2
	tst r0, r4
	beq _0221F808
	mov r6, #0
	b _0221F80C
_0221F808:
	mov r6, #0
	add r4, r6, #0
_0221F80C:
	ldr r1, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x74]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	add r1, r5, r2
	str r1, [sp, #0x44]
	add r1, r6, #0
	mul r1, r0
	mul r0, r4
	add r1, r5, r1
	add r0, r5, r0
	str r1, [sp, #0x3c]
	str r0, [sp, #0x38]
_0221F82C:
	ldr r1, [sp, #0x44]
	ldr r0, _0221FB5C ; =0x00002D4C
	ldr r2, [sp, #0x14]
	ldrh r0, [r1, r0]
	add r1, r5, #0
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x40]
	add r0, r7, #0
	bl ov10_0221F47C
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0221F8C6
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0221FB60 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0221F8C6
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r0, _0221FB64 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221F882
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x40]
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xb8
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02251D28
_0221F882:
	ldr r1, [sp, #0xb8]
	mov r0, #8
	tst r0, r1
	bne _0221F890
	add sp, #0xbc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221F890:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x38]
	ldr r0, _0221FB64 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221F8B8
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x40]
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xb8
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02251D28
_0221F8B8:
	ldr r1, [sp, #0xb8]
	mov r0, #8
	tst r0, r1
	bne _0221F8C6
	add sp, #0xbc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221F8C6:
	ldr r0, [sp, #0x44]
	add r0, r0, #2
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x74]
	add r0, r0, #1
	str r0, [sp, #0x74]
	cmp r0, #4
	blt _0221F82C
	ldr r0, [sp, #0x5c]
	cmp r0, #2
	bge _0221F8E2
	add sp, #0xbc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221F8E2:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x6c]
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _0221F902
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0221F908
_0221F902:
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	b _0221F916
_0221F908:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x68]
_0221F916:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl BattleSystem_GetPartySize
	str r0, [sp, #0x60]
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bgt _0221F92C
	b _0221FB0E
_0221F92C:
	ldr r0, [sp, #0x6c]
	add r0, r5, r0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	str r0, [sp, #0x48]
_0221F938:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x58]
	bl GetMonData
	cmp r0, #0
	beq _0221F99E
	ldr r0, [sp, #0x58]
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221F99E
	ldr r0, [sp, #0x58]
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _0221FB68 ; =0x000001EE
	cmp r0, r1
	beq _0221F99E
	ldr r0, _0221FB6C ; =0x0000219C
	ldr r1, [sp, #0x4c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x30]
	cmp r1, r2
	beq _0221F99E
	ldr r1, [sp, #0x48]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x30]
	cmp r1, r2
	beq _0221F99E
	add r2, r0, #0
	ldr r1, [sp, #0x4c]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x30]
	cmp r1, r2
	beq _0221F99E
	ldr r1, [sp, #0x48]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bne _0221F9A0
_0221F99E:
	b _0221FB00
_0221F9A0:
	mov r0, #0
	str r0, [sp, #0x70]
_0221F9A4:
	ldr r1, [sp, #0x70]
	ldr r0, [sp, #0x58]
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02258BB4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0221F9D6
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0221FB60 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0221F9D8
_0221F9D6:
	b _0221FAF4
_0221F9D8:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x3c]
	ldr r0, _0221FB64 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221FA3E
	ldr r0, [sp, #0x58]
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x78]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	str r0, [sp, #0x7c]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x80]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x84]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	ldr r1, [sp, #0x80]
	ldr r3, [sp, #0x78]
	str r1, [sp, #4]
	ldr r1, [sp, #0x84]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov12_02252054
_0221FA3E:
	ldr r1, [sp, #0xb8]
	mov r0, #2
	tst r0, r1
	beq _0221FA66
	add r0, r7, #0
	bl BattleSystem_Random
	mov r1, #3
	bl _s32_div_f
	cmp r1, #2
	bge _0221FA66
	ldr r0, [sp, #0x14]
	ldr r1, _0221FB70 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x30]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221FA66:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x38]
	ldr r0, _0221FB64 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221FACC
	ldr r0, [sp, #0x58]
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x88]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	str r0, [sp, #0x8c]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x90]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x94]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	ldr r1, [sp, #0x90]
	ldr r3, [sp, #0x88]
	str r1, [sp, #4]
	ldr r1, [sp, #0x94]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov12_02252054
_0221FACC:
	ldr r1, [sp, #0xb8]
	mov r0, #2
	tst r0, r1
	beq _0221FAF4
	add r0, r7, #0
	bl BattleSystem_Random
	mov r1, #3
	bl _s32_div_f
	cmp r1, #2
	bge _0221FAF4
	ldr r0, [sp, #0x14]
	ldr r1, _0221FB70 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x30]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221FAF4:
	ldr r0, [sp, #0x70]
	add r0, r0, #1
	str r0, [sp, #0x70]
	cmp r0, #4
	bge _0221FB00
	b _0221F9A4
_0221FB00:
	ldr r0, [sp, #0x30]
	add r1, r0, #1
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x30]
	cmp r1, r0
	bge _0221FB0E
	b _0221F938
_0221FB0E:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bgt _0221FB1A
	b _0221FD1C
_0221FB1A:
	ldr r0, [sp, #0x6c]
	add r0, r5, r0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	str r0, [sp, #0x50]
_0221FB26:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x34]
	add r0, r7, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	cmp r0, #0
	beq _0221FBA8
	ldr r0, [sp, #0x1c]
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221FBA8
	ldr r0, [sp, #0x1c]
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _0221FB68 ; =0x000001EE
	b _0221FB74
	nop
_0221FB5C: .word 0x00002D4C
_0221FB60: .word 0x000003E1
_0221FB64: .word 0x00002D8C
_0221FB68: .word 0x000001EE
_0221FB6C: .word 0x0000219C
_0221FB70: .word 0x000021A4
_0221FB74:
	cmp r0, r1
	beq _0221FBA8
	ldr r0, _0221FD24 ; =0x0000219C
	ldr r1, [sp, #0x54]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _0221FBA8
	ldr r1, [sp, #0x50]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _0221FBA8
	add r2, r0, #0
	ldr r1, [sp, #0x54]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _0221FBA8
	ldr r1, [sp, #0x50]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bne _0221FBAA
_0221FBA8:
	b _0221FD0E
_0221FBAA:
	mov r0, #0
	str r0, [sp, #0x18]
_0221FBAE:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x2c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02258BB4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0221FBE0
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0221FD28 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0221FBE2
_0221FBE0:
	b _0221FD02
_0221FBE2:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x3c]
	ldr r0, _0221FD2C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221FC48
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x98]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	str r0, [sp, #0x9c]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0xa0]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0xa4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x9c]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	ldr r1, [sp, #0xa0]
	ldr r3, [sp, #0x98]
	str r1, [sp, #4]
	ldr r1, [sp, #0xa4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov12_02252054
_0221FC48:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	bne _0221FC72
	add r0, r7, #0
	bl BattleSystem_Random
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _0221FC72
	ldr r0, [sp, #0x14]
	ldr r1, _0221FD30 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221FC72:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x38]
	ldr r0, _0221FD2C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221FCD8
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xa8]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	str r0, [sp, #0xac]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0xb0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0xb4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	ldr r1, [sp, #0xb0]
	ldr r3, [sp, #0xa8]
	str r1, [sp, #4]
	ldr r1, [sp, #0xb4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov12_02252054
_0221FCD8:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	bne _0221FD02
	add r0, r7, #0
	bl BattleSystem_Random
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _0221FD02
	ldr r0, [sp, #0x14]
	ldr r1, _0221FD30 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221FD02:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _0221FD0E
	b _0221FBAE
_0221FD0E:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _0221FD1C
	b _0221FB26
_0221FD1C:
	mov r0, #0
	add sp, #0xbc
	pop {r4, r5, r6, r7, pc}
	nop
_0221FD24: .word 0x0000219C
_0221FD28: .word 0x000003E1
_0221FD2C: .word 0x00002D8C
_0221FD30: .word 0x000021A4
	thumb_func_end ov10_0221F7F0

	thumb_func_start ov10_0221FD34
ov10_0221FD34: ; 0x0221FD34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r5, r0, #0
	str r3, [sp, #0x10]
	bl ov12_0223AB0C
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	bl BattleSystem_GetBattlerFromBattlerType
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	bl MaskOfFlagNo
	ldr r1, _0221FE84 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0221FDDC
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xc0
	mul r0, r6
	add r7, r4, r0
_0221FD70:
	ldr r0, _0221FE88 ; =0x00002D4C
	add r1, r4, #0
	ldrh r0, [r7, r0]
	add r2, r6, #0
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	bl ov10_0221F47C
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0221FDD0
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02251D28
	ldr r1, [sp, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221FDD0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0221FDBA
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FDBA:
	add r0, r5, #0
	bl BattleSystem_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	beq _0221FDD0
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FDD0:
	ldr r0, [sp, #0x28]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _0221FD70
_0221FDDC:
	add r0, r5, #0
	bl BattleSystem_GetBattleType
	mov r1, #2
	tst r0, r1
	bne _0221FDEE
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0221FDEE:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	bl MaskOfFlagNo
	ldr r1, _0221FE84 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0221FE7E
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0xc0
	mul r0, r6
	add r7, r4, r0
_0221FE12:
	ldr r0, _0221FE88 ; =0x00002D4C
	add r1, r4, #0
	ldrh r0, [r7, r0]
	add r2, r6, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov10_0221F47C
	add r3, r0, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0221FE72
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02251D28
	ldr r1, [sp, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221FE72
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0221FE5C
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FE5C:
	add r0, r5, #0
	bl BattleSystem_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	beq _0221FE72
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FE72:
	ldr r0, [sp, #0x18]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0221FE12
_0221FE7E:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221FE84: .word 0x00003108
_0221FE88: .word 0x00002D4C
	thumb_func_end ov10_0221FD34

	thumb_func_start ov10_0221FE8C
ov10_0221FE8C: ; 0x0221FE8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #1
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bl ov10_0221FD34
	cmp r0, #0
	beq _0221FEB6
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	beq _0221FEB6
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FEB6:
	ldr r0, [sp, #4]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, _0221FFFC ; =0x00003064
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _0221FECC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FECC:
	lsl r1, r0, #4
	ldr r0, [sp]
	add r2, r0, r1
	ldr r0, _02220000 ; =0x000003E1
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _0221FEE0
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FEE0:
	add r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0xa
	bne _0221FEEE
	mov r0, #0x12
	str r0, [sp, #0x10]
	b _0221FF08
_0221FEEE:
	cmp r0, #0xb
	bne _0221FEF8
	mov r0, #0xb
	str r0, [sp, #0x10]
	b _0221FF08
_0221FEF8:
	cmp r0, #0xd
	bne _0221FF02
	mov r0, #0xa
	str r0, [sp, #0x10]
	b _0221FF08
_0221FF02:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FF08:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl GetBattlerAbility
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0221FF1C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FF1C:
	ldr r0, [sp, #4]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _0221FF3A
	add r0, r6, #0
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0221FF3E
_0221FF3A:
	add r7, r4, #0
	b _0221FF4A
_0221FF3E:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0221FF4A:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl BattleSystem_GetPartySize
	mov r5, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _0221FFF4
	ldr r0, [sp]
	add r0, r0, r4
	str r0, [sp, #8]
	ldr r0, [sp]
	add r7, r0, r7
_0221FF64:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _0221FFEC
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221FFEC
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _02220004 ; =0x000001EE
	cmp r0, r1
	beq _0221FFEC
	ldr r1, [sp, #8]
	ldr r0, _02220008 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _0221FFEC
	ldr r0, _02220008 ; =0x0000219C
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _0221FFEC
	ldr r0, _0222000C ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _0221FFEC
	ldr r0, _0222000C ; =0x000021A4
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _0221FFEC
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _0221FFEC
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _0221FFEC
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add sp, #0x14
	add r1, r1, r0
	ldr r0, _0222000C ; =0x000021A4
	strb r5, [r1, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221FFEC:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _0221FF64
_0221FFF4:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0221FFFC: .word 0x00003064
_02220000: .word 0x000003E1
_02220004: .word 0x000001EE
_02220008: .word 0x0000219C
_0222000C: .word 0x000021A4
	thumb_func_end ov10_0221FE8C

	thumb_func_start ov10_02220010
ov10_02220010: ; 0x02220010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	add r1, r2, #0
	lsl r6, r1, #1
	str r3, [sp, #0x1c]
	ldr r1, _02220258 ; =0x00003064
	add r3, r5, r6
	str r2, [sp, #0x18]
	ldrh r2, [r3, r1]
	str r0, [sp, #0x14]
	cmp r2, #0
	beq _02220032
	add r1, #8
	ldrh r1, [r3, r1]
	cmp r1, #0xff
	bne _02220038
_02220032:
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220038:
	lsl r1, r2, #4
	add r2, r5, r1
	ldr r1, _0222025C ; =0x000003E1
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _0222004A
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222004A:
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _02220066
	ldr r0, [sp, #0x14]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0222006A
_02220066:
	add r7, r4, #0
	b _02220076
_0222006A:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02220076:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetPartySize
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bgt _0222008C
	b _02220250
_0222008C:
	add r0, r5, r4
	str r0, [sp, #0x2c]
	add r0, r5, r7
	str r0, [sp, #0x28]
	add r0, sp, #0x68
	ldrb r0, [r0, #0x10]
	add r4, r5, r6
	str r0, [sp, #0x24]
_0222009C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x34]
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02220102
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02220102
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _02220260 ; =0x000001EE
	cmp r0, r1
	beq _02220102
	ldr r0, _02220264 ; =0x0000219C
	ldr r1, [sp, #0x2c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02220102
	ldr r1, [sp, #0x28]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02220102
	add r2, r0, #0
	ldr r1, [sp, #0x2c]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02220102
	ldr r1, [sp, #0x28]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bne _02220104
_02220102:
	b _02220242
_02220104:
	mov r0, #0
	str r0, [sp, #0x5c]
	ldr r3, _02220268 ; =0x0000306C
	ldr r0, [sp, #0x14]
	ldrh r2, [r4, r3]
	sub r3, #8
	ldrh r3, [r4, r3]
	add r1, r5, #0
	bl ov10_0221F47C
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x38]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl GetBattlerAbility
	str r0, [sp, #0x3c]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x40]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl GetItemVar
	str r0, [sp, #0x44]
	add r0, r6, #0
	mov r1, #0xb1
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl GetMonData
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x38]
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x3c]
	str r1, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	ldr r1, _02220258 ; =0x00003064
	add r0, r5, #0
	ldrh r1, [r4, r1]
	bl ov12_02252054
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _02220242
	mov r7, #0
_0222018A:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	add r2, r6, #0
	bl ov12_02258BB4
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0222023C
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x4c]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl GetBattlerAbility
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x50]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl GetBattlerHeldItemEffect
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x54]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x58]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x48]
	str r1, [sp]
	ldr r1, [sp, #0x54]
	ldr r3, [sp, #0x4c]
	str r1, [sp, #4]
	ldr r1, [sp, #0x58]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov12_02252054
	ldr r1, [sp, #0x5c]
	mov r0, #2
	tst r0, r1
	beq _0222023C
	ldr r0, [sp, #0x14]
	bl BattleSystem_Random
	ldr r1, [sp, #0x24]
	bl _s32_div_f
	cmp r1, #0
	bne _0222023C
	ldr r0, [sp, #0x18]
	ldr r1, _0222026C ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0x60
	strb r0, [r2, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222023C:
	add r7, r7, #1
	cmp r7, #4
	blt _0222018A
_02220242:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _02220250
	b _0222009C
_02220250:
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220258: .word 0x00003064
_0222025C: .word 0x000003E1
_02220260: .word 0x000001EE
_02220264: .word 0x0000219C
_02220268: .word 0x0000306C
_0222026C: .word 0x000021A4
	thumb_func_end ov10_02220010

	thumb_func_start ov10_02220270
ov10_02220270: ; 0x02220270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0xc0
	add r5, r1, #0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02220358 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _022202AA
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x1e
	bne _022202AA
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _0222035C ; =0x00002D8C
	add r2, r5, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	lsr r1, r1, #1
	cmp r0, r1
	bhs _022202B0
_022202AA:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022202B0:
	ldr r0, _02220360 ; =0x00003064
	add r7, r5, r0
	lsl r0, r4, #1
	str r0, [sp, #4]
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _022202D8
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _022202D8
	ldr r0, _02220364 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_022202D8:
	ldr r0, [sp, #4]
	ldrh r0, [r7, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02220368 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02220302
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _02220302
	ldr r0, _02220364 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220302:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #8
	bl ov10_02220010
	cmp r0, #0
	beq _0222031C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222031C:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #4
	bl ov10_02220010
	cmp r0, #0
	beq _02220336
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220336:
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _02220350
	ldr r0, _02220364 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220350:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220358: .word 0x00002DAC
_0222035C: .word 0x00002D8C
_02220360: .word 0x00003064
_02220364: .word 0x000021A4
_02220368: .word 0x000003E1
	thumb_func_end ov10_02220270

	thumb_func_start ov10_0222036C
ov10_0222036C: ; 0x0222036C
	push {r3, r4}
	mov r4, #0xc0
	mul r4, r2
	mov r3, #0
	ldr r2, _022203A0 ; =0x00002D58
	add r0, r3, #0
	add r4, r1, r4
_0222037A:
	ldrsb r1, [r4, r2]
	cmp r1, #6
	ble _02220388
	sub r1, r1, #6
	add r1, r3, r1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
_02220388:
	add r0, r0, #1
	add r4, r4, #1
	cmp r0, #8
	blt _0222037A
	cmp r3, #4
	blo _0222039A
	mov r0, #1
	pop {r3, r4}
	bx lr
_0222039A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_022203A0: .word 0x00002D58
	thumb_func_end ov10_0222036C

	thumb_func_start ov10_022203A4
ov10_022203A4: ; 0x022203A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	mov r2, #0xc0
	add r3, r6, #0
	mul r3, r2
	add r2, r1, #0
	add r5, r2, r3
	ldr r2, _022205A8 ; =0x00002DB0
	ldr r3, _022205AC ; =0x0400E000
	ldr r4, [r5, r2]
	str r0, [sp, #4]
	str r1, [sp, #8]
	tst r4, r3
	bne _02220424
	add r2, #0x10
	ldr r4, [r5, r2]
	lsr r2, r3, #0x10
	tst r2, r4
	bne _02220424
	mov r2, #0x17
	str r2, [sp]
	mov r2, #2
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02220424
	mov r0, #0x47
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #2
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02220424
	mov r0, #0x2a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #6
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _0222042A
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	beq _02220424
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	bne _0222042A
_02220424:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222042A:
	mov r0, #0
	str r0, [sp, #0x14]
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _0222044A
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0222044E
_0222044A:
	add r7, r4, #0
	b _0222045A
_0222044E:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0222045A:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl BattleSystem_GetPartySize
	mov r5, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _022204DA
	ldr r0, [sp, #8]
	add r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r0, r7
_02220474:
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _022204D2
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022204D2
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _022205B0 ; =0x000001EE
	cmp r0, r1
	beq _022204D2
	ldr r1, [sp, #0xc]
	ldr r0, _022205B4 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, _022205B4 ; =0x0000219C
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, _022205B8 ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, _022205B8 ; =0x000021A4
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_022204D2:
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _02220474
_022204DA:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022205A0
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl ov10_0221F5F4
	cmp r0, #0
	beq _022204F2
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022204F2:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0221F62C
	cmp r0, #0
	beq _02220506
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220506:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0221F7F0
	cmp r0, #0
	beq _0222051A
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222051A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0221FE8C
	cmp r0, #0
	beq _0222052E
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222052E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_02220270
	cmp r0, #0
	beq _02220542
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220542:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #0
	bl ov10_0221FD34
	cmp r0, #0
	beq _02220558
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220558:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0222036C
	cmp r0, #0
	beq _0222056C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222056C:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #8
	bl ov10_02220010
	cmp r0, #0
	beq _02220586
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220586:
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #4
	bl ov10_02220010
	cmp r0, #0
	beq _022205A0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022205A0:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022205A8: .word 0x00002DB0
_022205AC: .word 0x0400E000
_022205B0: .word 0x000001EE
_022205B4: .word 0x0000219C
_022205B8: .word 0x000021A4
	thumb_func_end ov10_022203A4

	thumb_func_start ov10_022205BC
ov10_022205BC: ; 0x022205BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r1, r0, #0
	str r0, [sp]
	ldr r5, [r1, #0x30]
	bl BattleSystem_GetBattleType
	add r6, r0, #0
	mov r0, #1
	tst r0, r6
	bne _022205E0
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _022206A0
_022205E0:
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, #0
	bl ov10_022203A4
	cmp r0, #0
	beq _0222068E
	ldr r0, _022206A8 ; =0x000021A4
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldrb r0, [r0, r7]
	cmp r0, #6
	bne _02220688
	ldr r0, [sp]
	add r1, r7, #0
	bl ov12_02258800
	add r4, r0, #0
	cmp r4, #6
	bne _02220684
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0x10
	tst r0, r6
	bne _0222061A
	mov r0, #8
	tst r0, r6
	beq _02220620
_0222061A:
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	b _0222062E
_02220620:
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0222062E:
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSystem_GetPartySize
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02220684
	ldr r0, [sp, #0xc]
	add r6, r5, r0
	ldr r0, [sp, #8]
	add r5, r5, r0
_02220646:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0222067C
	ldr r0, _022206AC ; =0x0000219C
	ldrb r0, [r6, r0]
	cmp r4, r0
	beq _0222067C
	ldr r0, _022206AC ; =0x0000219C
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0222067C
	ldr r0, _022206A8 ; =0x000021A4
	ldrb r0, [r6, r0]
	cmp r4, r0
	beq _0222067C
	ldr r0, _022206A8 ; =0x000021A4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bne _02220684
_0222067C:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02220646
_02220684:
	ldr r0, [sp, #0x10]
	strb r4, [r0, r7]
_02220688:
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0222068E:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov10_022206B0
	cmp r0, #0
	beq _022206A0
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_022206A0:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022206A8: .word 0x000021A4
_022206AC: .word 0x0000219C
	thumb_func_end ov10_022205BC

	thumb_func_start ov10_022206B0
ov10_022206B0: ; 0x022206B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r2, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	asr r2, r2, #1
	ldr r4, [r5, #0x30]
	str r2, [sp, #0xc]
	add r6, r4, r2
	ldr r2, [sp, #0x14]
	ldr r3, _022209C4 ; =0x000003D3
	str r2, [sp, #0x1c]
	strb r2, [r6, r3]
	ldr r3, [r5, #0x2c]
	mov r2, #0x4b
	and r2, r3
	str r1, [sp]
	cmp r2, #0x4b
	bne _022206E6
	bl ov12_0223AB0C
	cmp r0, #4
	bne _022206E6
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022206E6:
	ldr r0, [sp]
	mov r1, #0xc0
	mul r1, r0
	mov r0, #0xb7
	str r1, [sp, #8]
	add r1, r4, r1
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r1
	beq _02220704
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220704:
	ldr r1, [sp]
	add r0, r5, #0
	bl BattleSystem_GetParty
	add r7, r0, #0
	mov r5, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02220762
_02220718:
	add r0, r7, #0
	add r1, r5, #0
	bl Party_GetMonByIndex
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02220756
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02220756
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _022209C8 ; =0x000001EE
	cmp r0, r1
	beq _02220756
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_02220756:
	add r0, r7, #0
	add r5, r5, #1
	bl Party_GetCount
	cmp r5, r0
	blt _02220718
_02220762:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #3
	str r0, [sp, #0x10]
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r5, r4, r0
	ldr r0, [sp, #8]
	add r7, r4, r0
_02220778:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0222078C
	ldr r0, _022209CC ; =0x000003CD
	ldrb r1, [r5, r0]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bgt _02220798
_0222078C:
	mov r0, #0xe7
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	cmp r6, #0
	bne _0222079A
_02220798:
	b _02220A88
_0222079A:
	cmp r6, #0x17
	bne _022207BC
	ldr r1, _022209D0 ; =0x00002D90
	ldr r0, _022209D4 ; =0x00002D8C
	ldr r1, [r7, r1]
	ldr r0, [r7, r0]
	lsr r1, r1, #2
	cmp r0, r1
	bhs _02220816
	cmp r0, #0
	beq _02220816
	ldr r0, _022209D8 ; =0x000003D1
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022207BC:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x26
	bl GetItemVar
	cmp r0, #0
	beq _022207FE
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x36
	bl GetItemVar
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	beq _02220816
	ldr r0, _022209D4 ; =0x00002D8C
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02220816
	add r0, r0, #4
	ldr r3, [r7, r0]
	lsr r0, r3, #2
	cmp r1, r0
	blo _022207F2
	sub r0, r3, r1
	cmp r0, r2
	bls _02220816
_022207F2:
	ldr r0, _022209D8 ; =0x000003D1
	mov r1, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	str r0, [sp, #0x1c]
	b _02220A62
_022207FE:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xf
	bl GetItemVar
	cmp r0, #0
	beq _02220834
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #7
	tst r0, r1
	bne _02220818
_02220816:
	b _02220A62
_02220818:
	mov r0, #5
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220834:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x10
	bl GetItemVar
	cmp r0, #0
	beq _0222086E
	ldr r0, _022209DC ; =0x00002DAC
	mov r1, #8
	ldr r0, [r7, r0]
	tst r1, r0
	bne _02220852
	mov r1, #0x80
	tst r0, r1
	beq _02220922
_02220852:
	mov r0, #4
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_0222086E:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x11
	bl GetItemVar
	cmp r0, #0
	beq _022208A2
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02220922
	mov r0, #3
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022208A2:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x12
	bl GetItemVar
	cmp r0, #0
	beq _022208D6
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02220922
	mov r0, #2
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022208D6:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x13
	bl GetItemVar
	cmp r0, #0
	beq _0222090A
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02220922
	mov r0, #1
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_0222090A:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x14
	bl GetItemVar
	cmp r0, #0
	beq _02220940
	ldr r0, _022209E0 ; =0x00002DB0
	ldr r1, [r7, r0]
	mov r0, #7
	tst r0, r1
	bne _02220924
_02220922:
	b _02220A62
_02220924:
	mov r0, #0
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220940:
	ldr r0, _022209E4 ; =0x00002DD4
	ldr r1, [r7, r0]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	sub r0, r1, r0
	bpl _02220950
	b _02220A5C
_02220950:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1b
	bl GetItemVar
	cmp r0, #0
	beq _02220970
	ldr r0, _022209C4 ; =0x000003D3
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220970:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1c
	bl GetItemVar
	cmp r0, #0
	beq _02220990
	ldr r0, _022209C4 ; =0x000003D3
	mov r1, #2
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220990:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1d
	bl GetItemVar
	cmp r0, #0
	beq _022209B0
	ldr r0, _022209C4 ; =0x000003D3
	mov r1, #4
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022209B0:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1e
	bl GetItemVar
	cmp r0, #0
	beq _022209F8
	ldr r0, _022209C4 ; =0x000003D3
	b _022209E8
	nop
_022209C4: .word 0x000003D3
_022209C8: .word 0x000001EE
_022209CC: .word 0x000003CD
_022209D0: .word 0x00002D90
_022209D4: .word 0x00002D8C
_022209D8: .word 0x000003D1
_022209DC: .word 0x00002DAC
_022209E0: .word 0x00002DB0
_022209E4: .word 0x00002DD4
_022209E8:
	mov r1, #5
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022209F8:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1f
	bl GetItemVar
	cmp r0, #0
	beq _02220A16
	ldr r0, _02220AA0 ; =0x000003D3
	mov r1, #3
	strb r1, [r5, r0]
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220A16:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x20
	bl GetItemVar
	cmp r0, #0
	beq _02220A36
	ldr r0, _02220AA0 ; =0x000003D3
	mov r1, #6
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220A36:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x16
	bl GetItemVar
	cmp r0, #0
	beq _02220A62
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	bne _02220A62
	ldr r0, _02220AA4 ; =0x000003D1
	mov r1, #4
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220A5C:
	ldr r0, _02220AA4 ; =0x000003D1
	mov r1, #5
	strb r1, [r5, r0]
_02220A62:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02220A88
	ldr r0, [sp]
	mov r1, #1
	bic r0, r1
	ldr r1, [sp, #0x10]
	str r0, [sp]
	add r3, r4, r1
	ldr r1, [sp, #4]
	ldr r2, _02220AA8 ; =0x000003D6
	add r0, r4, r0
	strh r6, [r0, r2]
	lsl r1, r1, #1
	mov r0, #0
	add r1, r3, r1
	sub r2, #0x3a
	strh r0, [r1, r2]
	b _02220A9A
_02220A88:
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	bge _02220A9A
	b _02220778
_02220A9A:
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02220AA0: .word 0x000003D3
_02220AA4: .word 0x000003D1
_02220AA8: .word 0x000003D6
	thumb_func_end ov10_022206B0

