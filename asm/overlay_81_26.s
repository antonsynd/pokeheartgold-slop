	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240458
	.public ov81_022409B0
	.public ov81_02240AD8
	.public ov81_02240BB0
	.public ov81_02241364
	.public ov81_02241FC0
	.public ov81_02242170
	.public ov81_0224275C
	.public ov81_02242B38
	.public ov81_02242D74
	.public ov81_02242EA4
	.public ov81_0224300C

	.text

	thumb_func_start ov81_022409B0
ov81_022409B0: ; 0x022409B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r1, sp, #0x28
	ldrb r1, [r1, #0x1c]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x4c]
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x64
	bl String_New
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	mov r1, #0x1c
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl BufferBoxMonSpeciesName
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	bl StringExpandPlaceholders
	add r0, sp, #0x48
	ldrb r6, [r0]
	ldr r0, [sp, #0x38]
	add r2, sp, #0x28
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x14]
	ldrb r1, [r2, #0x1c]
	ldrb r2, [r2, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl String_Delete
	add r0, r7, #0
	mov r1, #0xb0
	mov r2, #0
	bl GetMonData
	cmp r0, #1
	bne _02240AC8
	add r0, r7, #0
	bl GetMonGender
	add r7, r0, #0
	add r0, r4, #0
	bl GetWindowWidth
	sub r0, r0, #1
	lsl r0, r0, #3
	sub r0, r0, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r7, #0
	bne _02240A96
	ldr r0, [r5, #0x1c]
	mov r1, #0x1a
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240AD4 ; =0x00070800
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	b _02240AC8
_02240A96:
	cmp r7, #1
	bne _02240AC8
	ldr r0, [r5, #0x1c]
	mov r1, #0x1b
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	add r2, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
_02240AC8:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240AD4: .word 0x00070800
	thumb_func_end ov81_022409B0

	thumb_func_start ov81_02240AD8
ov81_02240AD8: ; 0x02240AD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r1, sp, #0x28
	ldrb r1, [r1, #0x18]
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r2, [sp, #0x14]
	add r6, r3, #0
	bl FillWindowPixelBuffer
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	mov r3, #0x64
	bl NewMsgDataFromNarc
	add r1, sp, #0x28
	ldrh r1, [r1, #0x20]
	add r7, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r7, #0
	bl DestroyMsgData
	add r2, sp, #0x28
	ldrb r0, [r2, #0x1c]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	ldrb r2, [r2, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl GetWindowWidth
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02240B58
	mov r0, #0x1a
	str r0, [sp, #0x18]
	b _02240B5C
_02240B58:
	mov r0, #0x1b
	str r0, [sp, #0x18]
_02240B5C:
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02240B68
	ldr r7, _02240BAC ; =0x00070800
	b _02240B6C
_02240B68:
	mov r7, #0xc1
	lsl r7, r7, #0xa
_02240B6C:
	add r0, r4, #0
	bl String_SetEmpty
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #2
	beq _02240BA0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	add r2, r4, #0
	bl ReadMsgDataIntoString
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	lsl r3, r3, #3
	bl AddTextPrinterParameterizedWithColor
_02240BA0:
	add r0, r4, #0
	bl String_Delete
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02240BAC: .word 0x00070800
	thumb_func_end ov81_02240AD8

	thumb_func_start ov81_02240BB0
ov81_02240BB0: ; 0x02240BB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov81_0224275C
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02240BE0
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_02240BC6:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240BD6
	bl ov81_02242EA4
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r4, r1]
_02240BD6:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _02240BC6
_02240BE0:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	add r0, r5, #0
	bl ov81_02241364
	add r0, r5, #0
	bl ov81_02241FC0
	add r0, r5, #0
	bl ov81_02242170
	bl sub_0203A914
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl PaletteData_FreeBuffers
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl PaletteData_FreeBuffers
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl PaletteData_Free
	mov r0, #0x1a
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, #0x24
	add r0, r5, r0
	bl ov81_02242B38
	mov r7, #0x6b
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02240C62:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240C6C
	bl Pokepic_Delete
_02240C6C:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02240C62
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl PokepicManager_Delete
	ldr r0, [r5, #0x1c]
	bl DestroyMsgData
	ldr r0, [r5, #0x20]
	bl MessageFormat_Delete
	ldr r0, [r5, #0x24]
	bl String_Delete
	ldr r0, [r5, #0x28]
	bl String_Delete
	mov r6, #0
	add r4, r5, #0
_02240C9A:
	ldr r0, [r4, #0x2c]
	bl String_Delete
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02240C9A
	mov r0, #4
	bl FontID_Release
	add r0, r5, #0
	add r0, #0x50
	bl ov81_0224300C
	ldr r0, [r5, #0x4c]
	bl ov81_02240458
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl NARC_Delete
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GF_3DVramMan_Delete
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_02240BB0

