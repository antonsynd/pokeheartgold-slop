	.include "macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EF7C
	.public ov10_0221F084
	.extern ov10_0222B068
	.extern ov10_0222B06A
	.extern ov10_0222B080
	.extern ov10_0222B098

	.text

	.text
	thumb_func_start ov10_0221EF7C
ov10_0221EF7C: ; 0x0221EF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	ldr r6, [sp, #0x40]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	add r7, r1, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r2, [sp, #0x18]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
_0221EFA4:
	ldr r2, [sp, #0x1c]
	ldr r3, _0221F070 ; =0x000003DE
	ldrh r2, [r2]
	ldr r1, _0221F074 ; =ov10_0222B098
	mov r0, #0
	mov ip, r2
	lsl r2, r2, #4
	add r2, r7, r2
	ldrh r3, [r2, r3]
	str r2, [sp, #0x20]
	ldr r2, _0221F078 ; =0x0000FFFF
_0221EFBA:
	ldrh r4, [r1]
	cmp r4, r3
	beq _0221EFCA
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _0221EFBA
_0221EFCA:
	ldr r2, _0221F07C ; =ov10_0222B080
	ldr r4, _0221F078 ; =0x0000FFFF
	mov r1, #0
_0221EFD0:
	ldrh r5, [r2]
	cmp r5, r3
	beq _0221EFE0
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _0221EFD0
_0221EFE0:
	lsl r2, r1, #1
	ldr r1, _0221F07C ; =ov10_0222B080
	ldrh r1, [r1, r2]
	ldr r2, _0221F078 ; =0x0000FFFF
	cmp r1, r2
	bne _0221F006
	mov r1, ip
	cmp r1, #0
	beq _0221F03C
	lsl r1, r0, #1
	ldr r0, _0221F074 ; =ov10_0222B098
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _0221F03C
	ldr r1, _0221F080 ; =0x000003E1
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r1]
	cmp r0, #1
	bls _0221F03C
_0221F006:
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne _0221F018
	ldr r0, [sp, #0x28]
	add r1, r7, r0
	mov r0, #0xdb
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	b _0221F01A
_0221F018:
	mov r0, #0x64
_0221F01A:
	ldr r1, [sp, #0x48]
	mov r2, ip
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x44]
	add r1, r7, #0
	bl ov10_0221F084
	str r0, [r6]
	b _0221F040
_0221F03C:
	mov r0, #0
	str r0, [r6]
_0221F040:
	ldr r0, [sp, #0x1c]
	add r6, r6, #4
	add r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _0221EFA4
	ldr r2, [sp, #0x40]
	mov r3, #0
_0221F056:
	ldr r1, [r2]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bge _0221F060
	str r1, [sp, #0x24]
_0221F060:
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #4
	blt _0221F056
	ldr r0, [sp, #0x24]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0221F070: .word 0x000003DE
_0221F074: .word ov10_0222B098
_0221F078: .word 0x0000FFFF
_0221F07C: .word ov10_0222B080
_0221F080: .word 0x000003E1
	thumb_func_end ov10_0221EF7C

	thumb_func_start ov10_0221F084
ov10_0221F084: ; 0x0221F084
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r1, #0
	ldr r1, [sp, #0x60]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x60]
	ldr r1, [sp, #0x64]
	str r0, [sp, #0x18]
	str r1, [sp, #0x64]
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r6, r1]
	add r5, r2, #0
	bl BattleSystem_GetFieldSide
	mov r4, #0
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r7, r4, #0
	str r4, [sp, #0x20]
	str r0, [sp, #0x48]
	cmp r5, #0xd8
	bgt _0221F0EA
	blt _0221F0B6
	b _0221F2F4
_0221F0B6:
	cmp r5, #0x52
	bgt _0221F0D8
	blt _0221F0BE
	b _0221F2B8
_0221F0BE:
	cmp r5, #0x31
	bgt _0221F0C8
	bne _0221F0C6
	b _0221F36E
_0221F0C6:
	b _0221F3B0
_0221F0C8:
	cmp r5, #0x45
	bgt _0221F0D6
	cmp r5, #0x43
	blt _0221F0D6
	beq _0221F120
	cmp r5, #0x45
	beq _0221F0DE
_0221F0D6:
	b _0221F3B0
_0221F0D8:
	cmp r5, #0x65
	bgt _0221F0E2
	bne _0221F0E0
_0221F0DE:
	b _0221F2BE
_0221F0E0:
	b _0221F3B0
_0221F0E2:
	cmp r5, #0x95
	bne _0221F0E8
	b _0221F2CE
_0221F0E8:
	b _0221F3B0
_0221F0EA:
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r5, r0
	bgt _0221F110
	blt _0221F0F6
	b _0221F28E
_0221F0F6:
	cmp r5, #0xde
	bgt _0221F10A
	cmp r5, #0xda
	blt _0221F108
	bne _0221F102
	b _0221F30E
_0221F102:
	cmp r5, #0xde
	bne _0221F108
	b _0221F32C
_0221F108:
	b _0221F3B0
_0221F10A:
	cmp r5, #0xed
	beq _0221F1E8
	b _0221F3B0
_0221F110:
	add r1, r0, #0
	add r1, #0x57
	cmp r5, r1
	bgt _0221F12A
	add r1, r0, #0
	add r1, #0x57
	cmp r5, r1
	blt _0221F122
_0221F120:
	b _0221F374
_0221F122:
	add r0, r0, #3
	cmp r5, r0
	beq _0221F132
	b _0221F3B0
_0221F12A:
	add r0, #0x59
	cmp r5, r0
	beq _0221F15A
	b _0221F3B0
_0221F132:
	ldr r0, [sp, #0x68]
	cmp r0, #0x67
	beq _0221F166
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	bne _0221F166
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #0xb
	bl GetItemVar
	add r4, r0, #0
	beq _0221F166
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #0xc
	bl GetItemVar
	add r7, r0, #0
	b _0221F3B4
_0221F15A:
	ldr r0, [sp, #0x68]
	cmp r0, #0x67
	beq _0221F166
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _0221F168
_0221F166:
	b _0221F3B4
_0221F168:
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #1
	bl GetItemVar
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _0221F1E4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221F184: ; jump table
	.short _0221F1C4 - _0221F184 - 2 ; case 0
	.short _0221F1C8 - _0221F184 - 2 ; case 1
	.short _0221F1D0 - _0221F184 - 2 ; case 2
	.short _0221F1CC - _0221F184 - 2 ; case 3
	.short _0221F1D8 - _0221F184 - 2 ; case 4
	.short _0221F1A4 - _0221F184 - 2 ; case 5
	.short _0221F1AC - _0221F184 - 2 ; case 6
	.short _0221F1B0 - _0221F184 - 2 ; case 7
	.short _0221F1A8 - _0221F184 - 2 ; case 8
	.short _0221F1D4 - _0221F184 - 2 ; case 9
	.short _0221F1B8 - _0221F184 - 2 ; case 10
	.short _0221F1B4 - _0221F184 - 2 ; case 11
	.short _0221F1BC - _0221F184 - 2 ; case 12
	.short _0221F1DC - _0221F184 - 2 ; case 13
	.short _0221F1E0 - _0221F184 - 2 ; case 14
	.short _0221F1C0 - _0221F184 - 2 ; case 15
_0221F1A4:
	mov r7, #1
	b _0221F3B4
_0221F1A8:
	mov r7, #2
	b _0221F3B4
_0221F1AC:
	mov r7, #3
	b _0221F3B4
_0221F1B0:
	mov r7, #4
	b _0221F3B4
_0221F1B4:
	mov r7, #5
	b _0221F3B4
_0221F1B8:
	mov r7, #6
	b _0221F3B4
_0221F1BC:
	mov r7, #7
	b _0221F3B4
_0221F1C0:
	mov r7, #8
	b _0221F3B4
_0221F1C4:
	mov r7, #0xa
	b _0221F3B4
_0221F1C8:
	mov r7, #0xb
	b _0221F3B4
_0221F1CC:
	mov r7, #0xc
	b _0221F3B4
_0221F1D0:
	mov r7, #0xd
	b _0221F3B4
_0221F1D4:
	mov r7, #0xe
	b _0221F3B4
_0221F1D8:
	mov r7, #0xf
	b _0221F3B4
_0221F1DC:
	mov r7, #0x10
	b _0221F3B4
_0221F1E0:
	mov r7, #0x11
	b _0221F3B4
_0221F1E4:
	mov r7, #0
	b _0221F3B4
_0221F1E8:
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x60]
	ldrb r0, [r0, #1]
	ldrb r3, [r1, #4]
	ldrb r1, [r1, #5]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x34]
	ldrb r0, [r0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1a
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x38]
	ldrb r2, [r0, #2]
	lsl r1, r3, #0x1f
	lsr r1, r1, #0x1b
	ldrb r0, [r0, #3]
	str r1, [sp, #0x3c]
	mov r4, #1
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1c
	str r1, [sp, #0x40]
	lsl r1, r2, #0x1f
	lsr r7, r1, #0x1d
	ldr r1, [sp, #0x30]
	and r1, r4
	ldr r4, [sp, #0x2c]
	lsl r4, r4, #0x1f
	lsr r4, r4, #0x1e
	orr r1, r4
	add r4, r7, #0
	orr r4, r1
	ldr r1, [sp, #0x40]
	orr r4, r1
	ldr r1, [sp, #0x3c]
	orr r4, r1
	ldr r1, [sp, #0x38]
	orr r1, r4
	str r1, [sp, #0x24]
	mov r1, #2
	ldr r4, [sp, #0x34]
	and r3, r1
	and r4, r1
	lsl r4, r4, #4
	str r4, [sp, #0x44]
	and r0, r1
	lsl r4, r3, #3
	lsl r3, r0, #2
	add r0, r2, #0
	and r0, r1
	lsl r2, r0, #1
	ldr r0, [sp, #0x30]
	and r0, r1
	asr r7, r0, #1
	ldr r0, [sp, #0x2c]
	and r0, r1
	orr r0, r7
	orr r0, r2
	orr r0, r3
	add r1, r4, #0
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r1, r0
	mov r0, #0x28
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r4, r0, #0
	ldr r1, [sp, #0x24]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	add r4, #0x1e
	bl _s32_div_f
	add r7, r0, #1
	cmp r7, #9
	bge _0221F28A
	b _0221F3B4
_0221F28A:
	add r7, r7, #1
	b _0221F3B4
_0221F28E:
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	ldr r2, _0221F454 ; =0x000021F0
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r1, [r0, r2]
	mov r0, #0x19
	mul r0, r1
	ldr r1, [sp, #0x64]
	lsl r1, r1, #2
	add r1, r6, r1
	ldr r1, [r1, r2]
	bl _u32_div_f
	add r4, r0, #1
	cmp r4, #0x96
	ble _0221F2B4
	mov r4, #0x96
_0221F2B4:
	mov r7, #0
	b _0221F3B4
_0221F2B8:
	mov r0, #0x28
	str r0, [sp, #0x20]
	b _0221F3B4
_0221F2BE:
	ldr r0, [sp, #0x64]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221F458 ; =0x00002D74
	add r1, r6, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x20]
	b _0221F3B4
_0221F2CE:
	ldr r0, [sp, #0x18]
	bl BattleSystem_Random
	mov r1, #0xb
	bl _s32_div_f
	ldr r0, [sp, #0x64]
	mov r2, #0xc0
	mul r2, r0
	ldr r0, _0221F458 ; =0x00002D74
	add r2, r6, r2
	ldrb r2, [r2, r0]
	add r0, r1, #5
	mov r1, #0xa
	mul r0, r2
	bl _s32_div_f
	str r0, [sp, #0x20]
	b _0221F3B4
_0221F2F4:
	ldr r0, [sp, #0x64]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221F45C ; =0x00002D75
	add r1, r6, r1
	ldrb r1, [r1, r0]
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x19
	bl _s32_div_f
	add r4, r0, #0
	b _0221F3B4
_0221F30E:
	ldr r0, [sp, #0x64]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221F45C ; =0x00002D75
	add r1, r6, r1
	ldrb r1, [r1, r0]
	mov r0, #0xff
	sub r1, r0, r1
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x19
	bl _s32_div_f
	add r4, r0, #0
	b _0221F3B4
_0221F32C:
	ldr r0, [sp, #0x18]
	bl BattleSystem_Random
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #5
	bge _0221F340
	mov r4, #0xa
	b _0221F36A
_0221F340:
	cmp r1, #0xf
	bge _0221F348
	mov r4, #0x1e
	b _0221F36A
_0221F348:
	cmp r1, #0x23
	bge _0221F350
	mov r4, #0x32
	b _0221F36A
_0221F350:
	cmp r1, #0x41
	bge _0221F358
	mov r4, #0x46
	b _0221F36A
_0221F358:
	cmp r1, #0x55
	bge _0221F360
	mov r4, #0x5a
	b _0221F36A
_0221F360:
	cmp r1, #0x5f
	bge _0221F368
	mov r4, #0x6e
	b _0221F36A
_0221F368:
	mov r4, #0x96
_0221F36A:
	mov r7, #0
	b _0221F3B4
_0221F36E:
	mov r0, #0x14
	str r0, [sp, #0x20]
	b _0221F3B4
_0221F374:
	mov r2, #0x3d
	lsl r2, r2, #4
	ldrb r3, [r6, r2]
	mov r2, #0xc0
	ldr r1, _0221F460 ; =ov10_0222B068
	mul r2, r3
	add r3, r6, r2
	ldr r2, _0221F464 ; =0x00002D60
	ldr r4, _0221F468 ; =0x0000FFFF
	ldr r2, [r3, r2]
	mov r0, #0
_0221F38A:
	ldrh r3, [r1]
	cmp r3, r2
	bge _0221F39A
	add r1, r1, #4
	ldrh r3, [r1]
	add r0, r0, #1
	cmp r3, r4
	bne _0221F38A
_0221F39A:
	ldr r1, _0221F460 ; =ov10_0222B068
	lsl r0, r0, #2
	ldrh r2, [r1, r0]
	ldr r1, _0221F468 ; =0x0000FFFF
	cmp r2, r1
	beq _0221F3AC
	ldr r1, _0221F46C ; =ov10_0222B06A
	ldrh r4, [r1, r0]
	b _0221F3B4
_0221F3AC:
	mov r4, #0x78
	b _0221F3B4
_0221F3B0:
	mov r4, #0
	add r7, r4, #0
_0221F3B4:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0221F3FE
	mov r0, #6
	lsl r0, r0, #6
	mov ip, r0
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x64]
	lsl r3, r3, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	add r4, r6, r3
	mov r3, ip
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r3, #0x3c
	ldr r0, [sp, #0x18]
	ldr r3, [r4, r3]
	add r1, r6, #0
	add r2, r5, #0
	bl CalcMoveDamage
	str r0, [sp, #0x20]
	b _0221F40A
_0221F3FE:
	ldr r1, _0221F470 ; =0x0000213C
	mov r0, #2
	ldr r2, [r6, r1]
	lsl r0, r0, #0xa
	orr r0, r2
	str r0, [r6, r1]
_0221F40A:
	ldr r0, [sp, #0x64]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	add r2, r5, #0
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	add r0, sp, #0x48
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl ov12_02251D28
	ldr r2, _0221F470 ; =0x0000213C
	ldr r1, _0221F474 ; =0xFFFFF7FF
	ldr r3, [r6, r2]
	and r1, r3
	str r1, [r6, r2]
	ldr r2, [sp, #0x48]
	ldr r1, _0221F478 ; =0x00140808
	tst r1, r2
	beq _0221F442
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221F442:
	add r1, sp, #0x70
	ldrb r1, [r1]
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl DamageDivide
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221F454: .word 0x000021F0
_0221F458: .word 0x00002D74
_0221F45C: .word 0x00002D75
_0221F460: .word ov10_0222B068
_0221F464: .word 0x00002D60
_0221F468: .word 0x0000FFFF
_0221F46C: .word ov10_0222B06A
_0221F470: .word 0x0000213C
_0221F474: .word 0xFFFFF7FF
_0221F478: .word 0x00140808
	thumb_func_end ov10_0221F084

