	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E09C
	.extern ov40_0222DAB0
	.extern ov40_022306C0
	.extern ov40_02230DCC
	.extern ov40_02244F10
	.extern ov40_02244F40

	.text

	.text
	thumb_func_start ov40_0222E09C
ov40_0222E09C: ; 0x0222E09C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd8
	ldr r3, _0222E428 ; =ov40_02244F40
	add r7, r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x88
	mov r1, #0x28
_0222E0AA:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0222E0AA
	ldr r4, _0222E42C ; =ov40_02244F10
	add r3, sp, #0x58
	mov r2, #6
_0222E0BC:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222E0BC
	mov r0, #1
	str r0, [sp, #0x24]
	mov r0, #0
	ldr r4, [sp, #0x14]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r4, #0xc
	str r0, [sp, #0x1c]
	add r5, sp, #0x88
_0222E0D6:
	ldr r1, [sp, #0x1c]
	ldr r0, [r7, #0x48]
	ldr r1, [r1]
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r4, #0
	bl InitWindow
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r3, #0
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r5, r3]
	ldr r0, [r7, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r1, r6, #0
	bl ov40_022306C0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #6
	ldrsh r0, [r5, r0]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x24]
	add r0, r0, r2
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #8
	blt _0222E0D6
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r4, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r1, #0x6d
	add r5, #0xc
	bl sub_020315B8
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl ov40_02230DCC
	ldr r0, [r7, #0x48]
	mov r1, #0xd
	bl NewString_ReadMsgData
	str r0, [sp, #0x30]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	add r0, r4, #0
	add r3, r1, #0
	bl BufferString
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r6, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x2c]
	bl String_Delete
	ldr r0, [sp, #0x30]
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	ldr r0, [sp, #0x20]
	bl sub_020316F0
	str r0, [sp, #0x34]
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	mov r1, #0xf
	add r5, #0x2c
	bl NewString_ReadMsgData
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x3c]
	add r0, r7, #0
	bl ov40_02230DCC
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	mov r1, #0
	bl BufferMonthNameAbbr
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r6, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x38]
	bl String_Delete
	ldr r0, [sp, #0x3c]
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	add r5, #0x3c
	mov r1, #0x10
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r6, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl sub_02031620
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_0203162C
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x40]
	add r5, #0x4c
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r6, #0
	bne _0222E33C
	ldr r0, [r7, #0x48]
	mov r1, #0x15
	bl NewString_ReadMsgData
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	b _0222E3F6
_0222E33C:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x44]
	ldr r0, [r7, #0x48]
	mov r1, #0x16
	bl NewString_ReadMsgData
	str r0, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl BufferCountryName
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	add r0, r4, #0
	bl StringExpandPlaceholders
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	ldr r2, [sp, #0x44]
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x44]
	bl String_Delete
	ldr r0, [sp, #0x48]
	bl String_Delete
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0222E3F6
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r0, [sp, #0x18]
	add r0, #0x5c
	str r0, [sp, #0x18]
	bl FillWindowPixelBuffer
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	ldr r0, [r7, #0x48]
	mov r1, #0x17
	bl NewString_ReadMsgData
	str r0, [sp, #0x4c]
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl BufferCityName
	ldr r2, [sp, #0x4c]
	add r0, r4, #0
	add r1, r5, #0
	bl StringExpandPlaceholders
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r3, #4
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x18]
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	ldr r0, [sp, #0x4c]
	bl String_Delete
_0222E3F6:
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	add r5, #0x6c
	mov r1, #0x11
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r6, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E430 ; =0x000F0D00
	b _0222E434
	.balign 4, 0
_0222E428: .word ov40_02244F40
_0222E42C: .word ov40_02244F10
_0222E430: .word 0x000F0D00
_0222E434:
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x14]
	add r1, sp, #0x50
	add r0, #0x7c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0x6d
	bl sub_0203164C
	add r5, r0, #0
	bne _0222E46A
	add r0, sp, #0x50
	mov r1, #0x6d
	bl MailMsg_GetExpandedString
	add r5, r0, #0
_0222E46A:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E4A0 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x14]
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_Delete
	add sp, #0xd8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E4A0: .word 0x000F0D00
	thumb_func_end ov40_0222E09C

