	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D980
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DD8C
	.public ov40_0222DED0
	.public ov40_0222DFB0
	.public ov40_0222FB28
	.public ov40_022306C0
	.public ov40_0223077C
	.public ov40_02230964
	.public ov40_02230CDC
	.public ov40_022368EC
	.public ov40_02236A70
	.public ov40_02236C64
	.public ov40_02236D60
	.public ov40_02236E18
	.public ov40_02236EB4
	.public ov40_02236F38
	.public ov40_02236FE0
	.public ov40_02237030
	.public ov40_022371A0
	.public ov40_02237410
	.public ov40_02237564
	.public ov40_0223D540
	.public ov40_0223D5CC
	.public ov40_02245290
	.public ov40_022452B4
	.public ov40_022452DC

	.text

	thumb_func_start ov40_02236A70
ov40_02236A70: ; 0x02236A70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02236A8A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_02236A8A:
	ldr r0, [r4, #8]
	cmp r0, #7
	bls _02236A92
	b _02236C48
_02236A92:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02236A9E: ; jump table
	.short _02236AAE - _02236A9E - 2 ; case 0
	.short _02236ACC - _02236A9E - 2 ; case 1
	.short _02236B18 - _02236A9E - 2 ; case 2
	.short _02236B5E - _02236A9E - 2 ; case 3
	.short _02236B62 - _02236A9E - 2 ; case 4
	.short _02236BA4 - _02236A9E - 2 ; case 5
	.short _02236BCE - _02236A9E - 2 ; case 6
	.short _02236C26 - _02236A9E - 2 ; case 7
_02236AAE:
	add r0, r4, #0
	bl ov40_02236FE0
	ldr r0, _02236C58 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236ACC:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	bl ov40_0222D980
	add r0, r4, #0
	bl ov40_02237564
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02237410
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_022371A0
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236B18:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02236B40
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236B40:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02236C50
_02236B5E:
	add r0, r0, #1
	str r0, [r4, #8]
_02236B62:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #4
	bl ov40_0222DED0
	ldr r0, _02236C5C ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236BA4:
	add r0, r4, #0
	bl ov40_0223D540
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0xe
	str r1, [sp]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	ldr r3, [r5]
	bl ov39_02227420
	cmp r0, #1
	bne _02236C50
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236BCE:
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #0xc
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _02236C5C ; =0x0000057D
	bne _02236C02
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #2
	bl ov40_02230CDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236C02:
	mov r1, #0
	bl StopSE
	add r0, r4, #0
	mov r1, #0x25 ; SCORE_EVENT_UPLOADED_PC_BOX_RECORDS
	bl ov40_0222FB28
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222DD8C
	ldr r0, _02236C60 ; =0x00000577
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236C26:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236C48:
	add r0, r4, #0
	mov r1, #0xa
	bl ov40_0222BF80
_02236C50:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02236C58: .word 0x000006F4
_02236C5C: .word 0x0000057D
_02236C60: .word 0x00000577
	thumb_func_end ov40_02236A70

	thumb_func_start ov40_02236C64
ov40_02236C64: ; 0x02236C64
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02236C80
	cmp r0, #1
	beq _02236C9E
	cmp r0, #2
	beq _02236D04
	b _02236D52
_02236C80:
	ldr r0, _02236D58 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020879E0
	add r0, r5, #0
	bl ov40_02236FE0
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236C9E:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02236CE6
	add r0, r5, #0
	mov r1, #0
	bl ov40_022368EC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4d
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236CE6:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02236D52
_02236D04:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02236D36
	ldr r1, _02236D5C ; =0x0000010E
	add r0, r5, #0
	bl ov40_02237030
	add r0, r5, #0
	mov r1, #3
	bl ov40_0222BF80
_02236D36:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_02236D52:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02236D58: .word 0x000006F4
_02236D5C: .word 0x0000010E
	thumb_func_end ov40_02236C64

	thumb_func_start ov40_02236D60
ov40_02236D60: ; 0x02236D60
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02236D7C
	cmp r1, #1
	beq _02236DC6
	cmp r1, #2
	beq _02236E0C
	b _02236E12
_02236D7C:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov40_0222D980
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_02237564
	add r0, r5, #0
	bl ov40_02237410
	add r0, r5, #0
	bl ov40_022371A0
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236DC6:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02236DEE
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236DEE:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02236E12
_02236E0C:
	mov r1, #0xa
	bl ov40_0222BF80
_02236E12:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov40_02236D60

	thumb_func_start ov40_02236E18
ov40_02236E18: ; 0x02236E18
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02236E34
	cmp r1, #1
	beq _02236E60
	cmp r1, #2
	beq _02236EA6
	b _02236EAC
_02236E34:
	bl ov40_02236FE0
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov40_0222D980
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236E60:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02236E88
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236E88:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02236EAC
_02236EA6:
	mov r1, #0xd
	bl ov40_0222BF80
_02236EAC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_02236E18

	thumb_func_start ov40_02236EB4
ov40_02236EB4: ; 0x02236EB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r1, #0x86
	ldr r6, _02236F2C ; =0x00000101
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	add r0, r6, #0
	add r0, #0xb3
	ldr r5, _02236F30 ; =ov40_022452B4
	ldr r7, _02236F34 ; =ov40_02245290
	add r4, r1, r0
_02236ED2:
	add r0, r4, #0
	bl InitWindow
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #2
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl AddWindowParameterized
	ldr r1, [r7]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r4, #0x10
	add r5, r5, #4
	mul r0, r1
	add r6, r6, r0
	ldr r0, [sp, #0x18]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _02236ED2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02236F2C: .word 0x00000101
_02236F30: .word ov40_022452B4
_02236F34: .word ov40_02245290
	thumb_func_end ov40_02236EB4

	thumb_func_start ov40_02236F38
ov40_02236F38: ; 0x02236F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r1, [r0, r1]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r5, _02236FD8 ; =ov40_022452DC
	mov r6, #1
	mov r7, #0
	add r4, r1, r0
_02236F50:
	add r0, r4, #0
	bl InitWindow
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #6
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r0, #0x48]
	add r1, #0x3c
	bl NewString_ReadMsgData
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov40_022306C0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236FDC ; =0x000F0D00
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x18]
	bl String_Delete
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r7, r7, #1
	add r4, #0x10
	mul r0, r1
	add r6, r6, r0
	add r5, r5, #4
	cmp r7, #6
	blo _02236F50
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02236FD8: .word ov40_022452DC
_02236FDC: .word 0x000F0D00
	thumb_func_end ov40_02236F38

