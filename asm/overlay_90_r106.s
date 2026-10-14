	.include "macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A980
	.extern ov90_02259170
	.extern ov90_02259200
	.extern ov90_0225926C
	.extern ov90_02259464
	.extern ov90_022594FC
	.extern ov90_02259538
	.extern ov90_0225A088
	.extern ov90_0225A108
	.extern ov90_0225A28C
	.extern ov90_0225B274
	.extern ov90_0225B2A8
	.extern ov90_0225B38C
	.extern ov90_0225B538
	.extern ov90_0225B7FC
	.extern ov90_0225B8F0
	.extern ov90_0225B978
	.extern ov90_0225B9A8
	.extern ov90_0225BA14
	.extern ov90_0225BA38

	.text

	.text
	thumb_func_start ov90_0225A980
ov90_0225A980: ; 0x0225A980
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r1, [r4, #4]
	cmp r1, #0x17
	bhi _0225AA8A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A998: ; jump table
	.short _0225A9C8 - _0225A998 - 2 ; case 0
	.short _0225AA38 - _0225A998 - 2 ; case 1
	.short _0225AA48 - _0225A998 - 2 ; case 2
	.short _0225AA60 - _0225A998 - 2 ; case 3
	.short _0225AA7A - _0225A998 - 2 ; case 4
	.short _0225AAEC - _0225A998 - 2 ; case 5
	.short _0225AB5E - _0225A998 - 2 ; case 6
	.short _0225ABCA - _0225A998 - 2 ; case 7
	.short _0225ABDC - _0225A998 - 2 ; case 8
	.short _0225ABEC - _0225A998 - 2 ; case 9
	.short _0225AC08 - _0225A998 - 2 ; case 10
	.short _0225AC40 - _0225A998 - 2 ; case 11
	.short _0225AC74 - _0225A998 - 2 ; case 12
	.short _0225ACDC - _0225A998 - 2 ; case 13
	.short _0225ACF6 - _0225A998 - 2 ; case 14
	.short _0225AD1E - _0225A998 - 2 ; case 15
	.short _0225AD42 - _0225A998 - 2 ; case 16
	.short _0225AD60 - _0225A998 - 2 ; case 17
	.short _0225AD80 - _0225A998 - 2 ; case 18
	.short _0225AD8E - _0225A998 - 2 ; case 19
	.short _0225AD9C - _0225A998 - 2 ; case 20
	.short _0225ADCC - _0225A998 - 2 ; case 21
	.short _0225ADDC - _0225A998 - 2 ; case 22
	.short _0225ADF2 - _0225A998 - 2 ; case 23
_0225A9C8:
	ldr r0, [r4, #0x18]
	ldr r1, [r0]
	ldr r0, _0225ACA8 ; =0x0000064C
	str r1, [r4, r0]
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225A9DC
	mov r0, #0
	strb r0, [r4, #9]
	b _0225AA1A
_0225A9DC:
	add r0, r4, #0
	bl ov90_0225BA14
	ldrb r2, [r4, #0x15]
	add r1, r4, r2
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	bne _0225AA0A
	lsl r1, r2, #2
	add r1, r4, r1
	ldr r1, [r1, #0x1c]
	cmp r1, r0
	bls _0225AA0A
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	bl ov90_0225A28C
	ldr r1, [r4, #0x18]
	str r0, [r1]
	mov r0, #1
	strb r0, [r4, #9]
	b _0225AA0E
_0225AA0A:
	mov r0, #0
	strb r0, [r4, #9]
_0225AA0E:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0225AA1A
	add r0, r4, #0
	bl ov90_0225BA38
_0225AA1A:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #2]
	ldr r3, _0225ACAC ; =0x0000FFFF
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AA38:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225AA8A
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AA48:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x58
	mov r2, #1
	mov r3, #0
	bl ov90_02259464
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AA60:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_02259538
	cmp r0, #0
	beq _0225AA8A
	mov r0, #0x40
	strh r0, [r4]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AA7A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AA8A
	sub r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AA8C
_0225AA8A:
	b _0225AE1C
_0225AA8C:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	mov r5, #1
	bl ov90_022594FC
	mov r0, #0xcf
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r4, #2]
	add r0, r4, r0
	add r1, #0x4c
	bl ov90_0225A088
	add r0, r4, #0
	bl ov90_0225BA14
	ldrb r6, [r4, #0x14]
	add r2, r0, #0
	mov r1, #0
	cmp r6, #0
	ble _0225AACC
	add r3, r4, #0
	add r7, r1, #0
_0225AABC:
	ldr r0, [r3, #0x1c]
	cmp r0, r2
	bls _0225AAC4
	add r5, r7, #0
_0225AAC4:
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, r6
	blt _0225AABC
_0225AACC:
	cmp r5, #1
	bne _0225AADC
	ldr r0, _0225ACB0 ; =0x00000652
	mov r1, #0x10
	strh r1, [r4, r0]
	mov r0, #0x16
	strb r0, [r4, #4]
	b _0225AE1C
_0225AADC:
	ldrb r0, [r4, #4]
	mov r1, #4
	add r0, r0, #1
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #4
	strh r1, [r4, r0]
	b _0225AE1C
_0225AAEC:
	mov r7, #0x65
	mov r1, #0
	mov r6, #1
	lsl r7, r7, #4
_0225AAF4:
	ldrh r0, [r4, r7]
	sub r0, r0, #1
	strh r0, [r4, r7]
	ldrb r3, [r4, #0x14]
	mov r0, #0
	cmp r3, #0
	ble _0225AB1A
	mov r2, #0x65
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
_0225AB08:
	add r5, r4, r0
	add r5, #0x2c
	ldrb r5, [r5]
	cmp r2, r5
	bne _0225AB14
	add r1, r6, #0
_0225AB14:
	add r0, r0, #1
	cmp r0, r3
	blt _0225AB08
_0225AB1A:
	cmp r1, #0
	beq _0225AAF4
	mov r1, #0x65
	lsl r1, r1, #4
	ldrh r0, [r4, r1]
	cmp r0, #3
	bhi _0225AB4C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225AB34: ; jump table
	.short _0225AB44 - _0225AB34 - 2 ; case 0
	.short _0225AB44 - _0225AB34 - 2 ; case 1
	.short _0225AB3C - _0225AB34 - 2 ; case 2
	.short _0225AB3C - _0225AB34 - 2 ; case 3
_0225AB3C:
	mov r2, #0x10
	add r0, r1, #2
	strh r2, [r4, r0]
	b _0225AB50
_0225AB44:
	mov r2, #0x20
	add r0, r1, #2
	strh r2, [r4, r0]
	b _0225AB50
_0225AB4C:
	bl GF_AssertFail
_0225AB50:
	add r0, r4, #0
	bl ov90_0225B8F0
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AB5E:
	ldr r0, _0225ACB0 ; =0x00000652
	ldrh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov90_0225B8F0
	ldr r0, _0225ACB0 ; =0x00000652
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0225ABFC
	ldrb r0, [r4, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _0225ABB2
	mov r6, #0x65
	add r7, r5, #0
	lsl r6, r6, #4
_0225AB82:
	add r1, r4, r5
	add r1, #0x2c
	ldrb r2, [r1]
	ldrh r1, [r4, r6]
	add r0, r7, #0
	cmp r1, r2
	bne _0225AB94
	mov r0, #1
	b _0225AB9E
_0225AB94:
	cmp r1, #1
	bne _0225AB9E
	cmp r2, #0
	bne _0225AB9E
	mov r0, #1
_0225AB9E:
	cmp r0, #0
	beq _0225ABAA
	add r0, r4, #0
	add r1, r5, #0
	bl ov90_0225B7FC
_0225ABAA:
	ldrb r0, [r4, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blt _0225AB82
_0225ABB2:
	mov r0, #0x65
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #1
	bls _0225ABC2
	mov r0, #5
	strb r0, [r4, #4]
	b _0225AE1C
_0225ABC2:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225ABCA:
	add r0, r4, #0
	bl ov90_0225B8F0
	cmp r0, #0
	beq _0225ABFC
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225ABDC:
	add r0, r1, #1
	strb r0, [r4, #4]
	add r0, r4, #0
	bl ov90_0225B274
	mov r0, #0x1e
	strh r0, [r4]
	b _0225AE1C
_0225ABEC:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225ABF6
	sub r0, r0, #1
	strh r0, [r4]
_0225ABF6:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225ABFE
_0225ABFC:
	b _0225AE1C
_0225ABFE:
	mov r0, #0xa
	strb r0, [r4, #4]
	mov r0, #0
	strh r0, [r4]
	b _0225AE1C
_0225AC08:
	ldrb r1, [r4, #0x15]
	add r0, r4, r1
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225AC18
	mov r5, #0x11
	b _0225AC1A
_0225AC18:
	mov r5, #0x12
_0225AC1A:
	lsl r1, r1, #2
	add r1, r4, r1
	add r0, r4, #0
	ldr r1, [r1, #0x3c]
	add r0, #0x58
	bl ov90_02259200
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x58
	add r2, r5, #0
	mov r3, #0
	bl ov90_02259464
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AC40:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_02259538
	cmp r0, #0
	beq _0225AD06
	add r0, r4, #0
	bl ov90_0225B978
	cmp r0, #1
	bne _0225AD06
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225AC68
	mov r0, #0x66
	strh r0, [r4]
	mov r0, #0xe
	strb r0, [r4, #4]
	b _0225AE1C
_0225AC68:
	mov r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AC74:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AC80
	sub r0, r0, #1
	strh r0, [r4]
	b _0225AE1C
_0225AC80:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0225ACB4
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0x58
	bl ov90_0225926C
	ldr r0, _0225ACA8 ; =0x0000064C
	ldr r1, [r4, r0]
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	cmp r1, r0
	bne _0225ACA2
	mov r5, #0x13
	b _0225ACB6
_0225ACA2:
	mov r5, #2
	b _0225ACB6
	nop
_0225ACA8: .word 0x0000064C
_0225ACAC: .word 0x0000FFFF
_0225ACB0: .word 0x00000652
_0225ACB4:
	mov r5, #9
_0225ACB6:
	ldrb r1, [r4, #0x15]
	add r0, r4, #0
	add r0, #0x58
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x3c]
	bl ov90_02259200
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x58
	add r2, r5, #0
	mov r3, #0
	bl ov90_02259464
	mov r0, #0xd
	strb r0, [r4, #4]
	b _0225AE1C
_0225ACDC:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_02259538
	cmp r0, #0
	beq _0225AD06
	mov r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225ACF6:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AD06
	sub r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AD08
_0225AD06:
	b _0225AE1C
_0225AD08:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_022594FC
	mov r0, #0x1e
	strh r0, [r4]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD1E:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AD2A
	sub r0, r0, #1
	strh r0, [r4]
	b _0225AE1C
_0225AD2A:
	mov r0, #0x82
	bl sub_02037AC0
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0225AD3A
	bl ov00_021E6A4C
_0225AD3A:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD42:
	mov r0, #0x82
	bl sub_02037B38
	cmp r0, #0
	beq _0225AE1C
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _0225AD58
	mov r0, #0x13
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD58:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD60:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0
	ldrh r0, [r4, #2]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD80:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225AE1C
	mov r0, #0x15
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD8E:
	add r0, r4, #0
	bl ov90_0225B9A8
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225AD9C:
	ldrh r0, [r4, #2]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrb r3, [r4, #7]
	add r0, r4, r0
	add r1, #0x68
	add r2, #0x58
	bl ov90_0225B38C
	cmp r0, #0
	beq _0225AE1C
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225B538
	strb r0, [r4, #8]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225ADCC:
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225A108
	mov r0, #1
	strb r0, [r4, #6]
	b _0225AE1C
_0225ADDC:
	ldr r0, _0225AE48 ; =0x00000652
	ldrh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0225AE1C
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225AE1C
_0225ADF2:
	ldrb r0, [r4, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _0225AE18
_0225ADFA:
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0x2c
	strb r1, [r0]
	add r2, r4, r5
	add r2, #0x2c
	ldrb r2, [r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov90_0225B7FC
	ldrb r0, [r4, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blt _0225ADFA
_0225AE18:
	mov r0, #7
	strb r0, [r4, #4]
_0225AE1C:
	add r0, r4, #0
	bl ov90_0225B2A8
	add r0, r4, #0
	add r0, #0xa0
	bl ov90_02259170
	ldr r0, [r4, #0x4c]
	mov r1, #3
	mov r2, #4
	mov r3, #2
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0x4c]
	mov r1, #5
	mov r2, #4
	mov r3, #2
	bl ScheduleSetBgPosText
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225AE48: .word 0x00000652
	thumb_func_end ov90_0225A980

