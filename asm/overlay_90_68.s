	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225888C
	.public ov90_022588A4
	.public ov90_02259170
	.public ov90_02259250
	.public ov90_02259464
	.public ov90_022594FC
	.public ov90_02259538
	.public ov90_02259BCC
	.public ov90_02259D50
	.public ov90_02259DAC
	.public ov90_02259E8C
	.public ov90_02259EA0
	.public ov90_02259EE0
	.public ov90_0225A088
	.public ov90_0225A108
	.public ov90_0225A28C
	.public ov90_0225AE4C
	.public ov90_0225B2A8
	.public ov90_0225B38C
	.public ov90_0225B538
	.public ov90_0225B6B0
	.public ov90_0225B6C4
	.public ov90_0225B8F0
	.public ov90_0225B954
	.public ov90_0225B978
	.public ov90_0225B9A8
	.public ov90_0225BAA0

	.text

	thumb_func_start ov90_0225AE4C
ov90_0225AE4C: ; 0x0225AE4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	ldrb r0, [r4, #4]
	cmp r0, #0x14
	bhi _0225AF36
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225AE64: ; jump table
	.short _0225AE8E - _0225AE64 - 2 ; case 0
	.short _0225AEDE - _0225AE64 - 2 ; case 1
	.short _0225AEF6 - _0225AE64 - 2 ; case 2
	.short _0225AF0C - _0225AE64 - 2 ; case 3
	.short _0225AF26 - _0225AE64 - 2 ; case 4
	.short _0225AF4A - _0225AE64 - 2 ; case 5
	.short _0225B02C - _0225AE64 - 2 ; case 6
	.short _0225B056 - _0225AE64 - 2 ; case 7
	.short _0225B07A - _0225AE64 - 2 ; case 8
	.short _0225B0A0 - _0225AE64 - 2 ; case 9
	.short _0225B0DE - _0225AE64 - 2 ; case 10
	.short _0225B100 - _0225AE64 - 2 ; case 11
	.short _0225B126 - _0225AE64 - 2 ; case 12
	.short _0225B13C - _0225AE64 - 2 ; case 13
	.short _0225B152 - _0225AE64 - 2 ; case 14
	.short _0225B16A - _0225AE64 - 2 ; case 15
	.short _0225B188 - _0225AE64 - 2 ; case 16
	.short _0225B1A8 - _0225AE64 - 2 ; case 17
	.short _0225B1B6 - _0225AE64 - 2 ; case 18
	.short _0225B1C8 - _0225AE64 - 2 ; case 19
	.short _0225B1F6 - _0225AE64 - 2 ; case 20
_0225AE8E:
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225AE9A
	mov r0, #0
	strb r0, [r4, #9]
	b _0225AEC0
_0225AE9A:
	ldr r0, [r4, #0x30]
	cmp r0, #0xa
	blo _0225AEB0
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	bl ov90_0225A28C
	ldr r1, [r4, #0x18]
	str r0, [r1]
	mov r0, #1
	b _0225AEB2
_0225AEB0:
	mov r0, #0
_0225AEB2:
	strb r0, [r4, #9]
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0225AEC0
	add r0, r4, #0
	bl ov90_0225BAA0
_0225AEC0:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #2]
	ldr r3, _0225B1C4 ; =0x0000FFFF
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225AEDE:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225AF36
	ldrb r0, [r4, #4]
	mov r1, #4
	add r0, r0, #1
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #4
	strh r1, [r4, r0]
	b _0225B204
_0225AEF6:
	add r0, r4, #0
	add r0, #0x68
	add r1, #0x58
	mov r2, #1
	mov r3, #0
	bl ov90_02259464
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225AF0C:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_02259538
	cmp r0, #0
	beq _0225AF36
	mov r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225AF26:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AF36
	sub r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225AF38
_0225AF36:
	b _0225B204
_0225AF38:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_022594FC
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225AF4A:
	mov r0, #0xcf
	lsl r0, r0, #2
	ldrh r2, [r4, #2]
	add r0, r4, r0
	add r1, #0x4c
	bl ov90_0225A088
	ldrb r1, [r4, #0x14]
	mov r6, #0
	cmp r1, #0
	ble _0225B020
	mov r0, #0x97
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x4c
	str r0, [sp, #0x1c]
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0xa0
	str r0, [sp, #0x20]
	add r0, r4, #0
	str r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x58
	str r4, [sp, #0x18]
	add r7, r6, #0
	str r0, [sp, #0x28]
_0225AF8A:
	ldr r0, [sp, #0x1c]
	mov r3, #0x96
	str r0, [sp]
	str r6, [sp, #4]
	ldrb r0, [r4, #0x15]
	lsl r3, r3, #2
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0xc]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #2]
	str r0, [sp, #0x14]
	ldrb r2, [r4, #7]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl ov90_02259BCC
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	bl ov90_0225888C
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	bl ov90_022588A4
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x28]
	ldr r2, [r2, #0x3c]
	add r0, r5, #0
	mov r3, #8
	bl ov90_02259D50
	add r0, r4, r6
	add r0, #0x38
	ldrb r0, [r0]
	add r3, r4, r6
	add r3, #0x34
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldrb r2, [r4, #5]
	ldrb r3, [r3]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov90_02259DAC
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov90_02259E8C
	add r0, r5, #0
	bl ov90_02259EA0
	mov r1, #7
	lsl r2, r7, #0x10
	add r0, r5, #0
	mvn r1, r1
	asr r2, r2, #0x10
	bl ov90_02259EE0
	ldr r0, [sp, #0x18]
	ldrb r1, [r4, #0x14]
	add r0, r0, #4
	add r6, r6, #1
	add r5, #0x38
	str r0, [sp, #0x18]
	add r7, r7, #3
	cmp r6, r1
	blt _0225AF8A
_0225B020:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	mov r0, #0x10
	strh r0, [r4]
	b _0225B204
_0225B02C:
	add r0, r4, #0
	bl ov90_0225B8F0
	cmp r0, #1
	bne _0225B0BE
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225B0BE
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r1, [r4, #0x30]
	add r0, r4, r0
	bl ov90_0225B6B0
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B056:
	mov r0, #0x82
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0x4c
	bl ov90_0225B6C4
	cmp r0, #1
	bne _0225B0BE
	ldrb r0, [r4, #9]
	cmp r0, #1
	bne _0225B072
	add r0, r4, #0
	bl ov90_0225B954
_0225B072:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B07A:
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x58
	bl ov90_02259250
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x58
	mov r2, #7
	mov r3, #0
	bl ov90_02259464
	mov r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B0A0:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_02259538
	cmp r0, #1
	bne _0225B0BE
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225B0D8
	add r0, r4, #0
	bl ov90_0225B978
	cmp r0, #1
	beq _0225B0C0
_0225B0BE:
	b _0225B204
_0225B0C0:
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225B0D0
	mov r0, #0x66
	strh r0, [r4]
	mov r0, #0xc
	strb r0, [r4, #4]
	b _0225B204
_0225B0D0:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B0D8:
	sub r0, r0, #1
	strh r0, [r4]
	b _0225B204
_0225B0DE:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0225B0E8
	mov r2, #8
	b _0225B0EA
_0225B0E8:
	mov r2, #9
_0225B0EA:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x58
	mov r3, #0
	bl ov90_02259464
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B100:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl ov90_02259538
	cmp r0, #0
	beq _0225B204
	mov r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0225B11E
	mov r0, #0xd
	strb r0, [r4, #4]
	b _0225B204
_0225B11E:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B126:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225B204
	sub r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225B204
	mov r0, #0xe
	strb r0, [r4, #4]
	b _0225B204
_0225B13C:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225B146
	sub r0, r0, #1
	strh r0, [r4]
_0225B146:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225B204
	mov r0, #0xe
	strb r0, [r4, #4]
	b _0225B204
_0225B152:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0225B15C
	bl ov00_021E6A4C
_0225B15C:
	mov r0, #0x82
	bl sub_02037AC0
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B16A:
	mov r0, #0x82
	bl sub_02037B38
	cmp r0, #0
	beq _0225B204
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _0225B180
	mov r0, #0x12
	strb r0, [r4, #4]
	b _0225B204
_0225B180:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B188:
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
	b _0225B204
_0225B1A8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225B204
	mov r0, #0x14
	strb r0, [r4, #4]
	b _0225B204
_0225B1B6:
	add r0, r4, #0
	bl ov90_0225B9A8
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
	.balign 4, 0
_0225B1C4: .word 0x0000FFFF
_0225B1C8:
	ldrh r0, [r4, #2]
	add r2, r4, #0
	add r1, #0x68
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrb r3, [r4, #7]
	add r0, r4, r0
	add r2, #0x58
	bl ov90_0225B38C
	cmp r0, #0
	beq _0225B204
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225B538
	strb r0, [r4, #8]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0225B204
_0225B1F6:
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225A108
	mov r0, #1
	strb r0, [r4, #6]
_0225B204:
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
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov90_0225AE4C

