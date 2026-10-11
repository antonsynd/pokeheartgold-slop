	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221F7F0
	.extern ov10_0221F47C

	.text

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

