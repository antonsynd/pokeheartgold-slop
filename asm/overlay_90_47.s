	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public _0225C1E0
	.public ov90_0225888C
	.public ov90_022588A4
	.public ov90_02259170
	.public ov90_02259464
	.public ov90_022594FC
	.public ov90_02259538
	.public ov90_02259794
	.public ov90_02259B38
	.public ov90_02259B68
	.public ov90_02259BCC
	.public ov90_02259D50
	.public ov90_02259DAC
	.public ov90_02259E8C
	.public ov90_02259EA0
	.public ov90_02259EE0
	.public ov90_02259F44
	.public ov90_0225A088
	.public ov90_0225A108
	.public ov90_0225A258
	.public ov90_0225A350
	.public ov90_0225A3E0
	.public ov90_0225A428
	.public ov90_0225A544
	.public ov90_0225C1E4
	.public ov90_0225C1E8

	.text

	thumb_func_start ov90_02259794
ov90_02259794: ; 0x02259794
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r0, #0x10
	bls _022597A2
	b _02259AF2
_022597A2:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022597AE: ; jump table
	.short _022597D0 - _022597AE - 2 ; case 0
	.short _022597FE - _022597AE - 2 ; case 1
	.short _0225981C - _022597AE - 2 ; case 2
	.short _02259836 - _022597AE - 2 ; case 3
	.short _0225984E - _022597AE - 2 ; case 4
	.short _02259868 - _022597AE - 2 ; case 5
	.short _02259898 - _022597AE - 2 ; case 6
	.short _022598B4 - _022597AE - 2 ; case 7
	.short _022599BA - _022597AE - 2 ; case 8
	.short _022599CC - _022597AE - 2 ; case 9
	.short _022599F2 - _022597AE - 2 ; case 10
	.short _02259A04 - _022597AE - 2 ; case 11
	.short _02259A36 - _022597AE - 2 ; case 12
	.short _02259A50 - _022597AE - 2 ; case 13
	.short _02259AB6 - _022597AE - 2 ; case 14
	.short _02259AE8 - _022597AE - 2 ; case 15
	.short _02259AF2 - _022597AE - 2 ; case 16
_022597D0:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #2]
	ldr r3, _02259AD8 ; =0x0000FFFF
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl BeginNormalPaletteFade
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r4, #2]
	add r0, r4, r0
	add r1, #0x30
	bl ov90_0225A350
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_022597FE:
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x30
	bl ov90_0225A428
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022598AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_0225981C:
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x30
	bl ov90_0225A428
	cmp r0, #1
	bne _022598AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_02259836:
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #0
	add r0, #0x4c
	add r1, #0x3c
	add r3, r2, #0
	bl ov90_02259464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_0225984E:
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl ov90_02259538
	cmp r0, #0
	beq _022598AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0x40
	strb r0, [r4, #1]
	b _02259AF2
_02259868:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022598AA
	sub r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _022598AA
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl ov90_022594FC
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x30
	bl ov90_0225A3E0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_02259898:
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x30
	bl ov90_0225A544
	cmp r0, #1
	beq _022598AC
_022598AA:
	b _02259AF2
_022598AC:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_022598B4:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r4, #2]
	add r0, r4, r0
	add r1, #0x30
	bl ov90_0225A088
	add r0, r4, #0
	add r1, r4, #0
	add r0, #8
	add r1, #0x18
	bl ov90_0225A258
	ldrb r1, [r4, #0x10]
	mov r6, #0
	str r0, [sp, #0x1c]
	cmp r1, #0
	ble _02259986
	mov r0, #0x81
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x30
	str r0, [sp, #0x20]
	add r0, r4, #0
	str r0, [sp, #0x24]
	add r0, #0x84
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0x3c
	str r4, [sp, #0x18]
	add r7, r6, #0
	str r0, [sp, #0x2c]
_02259904:
	ldr r0, [sp, #0x20]
	mov r3, #2
	str r0, [sp]
	str r6, [sp, #4]
	ldrb r0, [r4, #0x11]
	lsl r3, r3, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #2]
	str r0, [sp, #0x14]
	ldrh r2, [r4, #4]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl ov90_02259BCC
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl ov90_0225888C
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl ov90_022588A4
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0x20]
	add r0, r5, #0
	mov r3, #8
	bl ov90_02259D50
	add r3, r4, r6
	ldrb r0, [r3, #0x1c]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldrb r3, [r3, #0x18]
	add r0, r5, #0
	bl ov90_02259DAC
	mov r1, #7
	lsl r2, r7, #0x10
	add r0, r5, #0
	mvn r1, r1
	asr r2, r2, #0x10
	bl ov90_02259EE0
	ldr r0, [sp, #0x18]
	ldrb r1, [r4, #0x10]
	add r0, r0, #4
	add r6, r6, #1
	add r5, #0x38
	str r0, [sp, #0x18]
	add r7, r7, #3
	cmp r6, r1
	blt _02259904
_02259986:
	mov r6, #0
	cmp r1, #0
	ble _022599AE
	mov r0, #0x81
	lsl r0, r0, #2
	add r7, r4, #0
	add r5, r4, r0
	add r7, #0x30
_02259996:
	add r0, r5, #0
	add r1, r7, #0
	bl ov90_02259E8C
	add r0, r5, #0
	bl ov90_02259EA0
	ldrb r0, [r4, #0x10]
	add r6, r6, #1
	add r5, #0x38
	cmp r6, r0
	blt _02259996
_022599AE:
	mov r0, #0x5c
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_022599BA:
	add r0, r4, #0
	bl ov90_02259B68
	cmp r0, #1
	bne _022599EA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_022599CC:
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _022599EA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0x81
	bl sub_02037AC0
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _022599EC
_022599EA:
	b _02259AF2
_022599EC:
	bl ov00_021E6A4C
	b _02259AF2
_022599F2:
	mov r0, #0x81
	bl sub_02037B38
	cmp r0, #0
	beq _02259AF2
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_02259A04:
	ldrb r0, [r4, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _02259A2A
	mov r0, #0x81
	lsl r0, r0, #2
	add r6, r7, #0
	add r5, r4, r0
_02259A14:
	lsl r1, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	bl ov90_02259F44
	ldrb r0, [r4, #0x10]
	add r7, r7, #1
	add r6, r6, #3
	add r5, #0x38
	cmp r7, r0
	blt _02259A14
_02259A2A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #8
	strb r0, [r4, #1]
	b _02259AF2
_02259A36:
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	add r0, r4, #0
	bl ov90_02259B68
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _02259AF2
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_02259A50:
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldrh r0, [r4, #2]
	mov r1, #0
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	bl BeginNormalPaletteFade
	add r0, r4, #0
	bl ov90_02259B68
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02259AAE
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02259A82
	cmp r0, #1
	beq _02259A8E
	cmp r0, #2
	beq _02259A9A
	b _02259AA4
_02259A82:
	ldr r0, _02259ADC ; =ov90_0225C1E8
	mov r1, #3
	bl ov90_02259B38
	str r0, [sp, #0x30]
	b _02259AA4
_02259A8E:
	ldr r0, _02259AE0 ; =_0225C1E0
	mov r1, #2
	bl ov90_02259B38
	str r0, [sp, #0x30]
	b _02259AA4
_02259A9A:
	ldr r0, _02259AE4 ; =ov90_0225C1E4
	mov r1, #3
	bl ov90_02259B38
	str r0, [sp, #0x30]
_02259AA4:
	mov r0, #0x1a
	add r1, sp, #0x30
	mov r2, #4
	bl sub_02037030
_02259AAE:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
_02259AB6:
	add r0, r4, #0
	bl ov90_02259B68
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02259AF2
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225A108
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02259AF2
	nop
_02259AD8: .word 0x0000FFFF
_02259ADC: .word ov90_0225C1E8
_02259AE0: .word _0225C1E0
_02259AE4: .word ov90_0225C1E4
_02259AE8:
	ldrb r1, [r4, #7]
	cmp r1, #1
	bne _02259AF2
	add r0, r0, #1
	strb r0, [r4]
_02259AF2:
	add r0, r4, #0
	add r0, #0x84
	bl ov90_02259170
	ldr r0, [r4, #0x30]
	mov r1, #3
	mov r2, #4
	mov r3, #2
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0x30]
	mov r1, #5
	mov r2, #4
	mov r3, #2
	bl ScheduleSetBgPosText
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov90_02259794

