	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DAB0
	.public ov40_0222E7F0
	.public ov40_0222E8C4
	.public ov40_0222E9B8
	.public ov40_0222EB9C
	.public ov40_0222EED0
	.public ov40_0222EFD8
	.public ov40_0222F09C
	.public ov40_0222F38C
	.public ov40_0222F488
	.public ov40_0222F5EC
	.public ov40_0222F6D0
	.public ov40_0222F878
	.public ov40_0222F8C0
	.public ov40_022307B0
	.public ov40_02230944
	.public ov40_02230DCC
	.public ov40_02244E10
	.public ov40_02244E1C

	.text

	thumb_func_start ov40_0222E7F0
ov40_0222E7F0: ; 0x0222E7F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0222E8BC ; =0x0000088C
	add r4, r1, #0
	ldr r0, [r4, r0]
	bl sub_02031620
	str r0, [sp, #0x10]
	ldr r0, _0222E8BC ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_0203162C
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	add r5, #0x18
	cmp r0, #0
	bne _0222E824
	cmp r6, #0
	bne _0222E824
	ldr r0, [r4, #0x48]
	mov r1, #0x7d
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	b _0222E890
_0222E824:
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r7, r0, #0
	cmp r6, #0
	beq _0222E85C
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	mov r1, #0x17
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	add r3, r6, #0
	bl BufferCityName
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	b _0222E884
_0222E85C:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	mov r1, #0x16
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	bl BufferCountryName
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
_0222E884:
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl MessageFormat_Delete
_0222E890:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E8C0 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x14]
	bl String_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E8BC: .word 0x0000088C
_0222E8C0: .word 0x000F0D00
	thumb_func_end ov40_0222E7F0

	thumb_func_start ov40_0222E8C4
ov40_0222E8C4: ; 0x0222E8C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	add r4, r2, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	str r1, [sp, #0x14]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x24]
	str r0, [r5, #0x10]
	str r4, [r5, #0x28]
	add r0, r1, #0
	ldr r0, [r0, #0x48]
	str r0, [r5, #0x34]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _0222E90A
	str r1, [r5, #0x10]
	sub r0, r1, #1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	sub r0, r0, #1
	str r0, [r5, #0x44]
_0222E90A:
	ldr r0, [sp, #0x18]
	bl InitWindow
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _0222E9A8
	add r6, r7, #0
_0222E95C:
	ldr r1, [r4]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r6]
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	ldr r0, [r4, #8]
	mov r1, #0
	lsl r0, r0, #4
	mul r0, r7
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E9B4 ; =0x000F0D00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [r4]
	ldr r0, [r0, r6]
	cmp r0, #0x10
	bne _0222E99E
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov40_0222E7F0
_0222E99E:
	ldr r0, [r5, #0x10]
	add r7, r7, #1
	add r6, #0x10
	cmp r7, r0
	blt _0222E95C
_0222E9A8:
	ldr r0, [sp, #0x18]
	bl ScheduleWindowCopyToVram
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E9B4: .word 0x000F0D00
	thumb_func_end ov40_0222E8C4

	thumb_func_start ov40_0222E9B8
ov40_0222E9B8: ; 0x0222E9B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	str r0, [sp, #0x20]
	add r0, #0x18
	add r5, r3, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	str r1, [sp, #0x14]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	cmp r2, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	beq _0222E9E0
	str r2, [r4, #0x34]
	b _0222E9E6
_0222E9E0:
	add r0, r1, #0
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x34]
_0222E9E6:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x44]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _0222EA1A
	str r1, [r4, #0x10]
	sub r0, r1, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x44]
_0222EA1A:
	ldr r0, [sp, #0x20]
	bl InitWindow
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5]
	cmp r0, #0
	beq _0222EAB0
	ldr r0, [r4, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0222EAAE
	add r7, r6, #0
_0222EA72:
	ldr r1, [r5]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, r7]
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	ldr r0, [r5, #8]
	mov r1, #0
	lsl r0, r0, #4
	mul r0, r6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EB94 ; =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x24]
	bl String_Delete
	ldr r0, [r4, #0x10]
	add r6, r6, #1
	add r7, #0x10
	cmp r6, r0
	blt _0222EA72
_0222EAAE:
	b _0222EB8A
_0222EAB0:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _0222EB8A
	ldr r0, [sp, #0x14]
	mov r5, #4
	str r0, [sp, #0x1c]
_0222EAC0:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	mov r1, #0x63
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x28]
	mov r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r1, #1
	mov r2, #2
	mov r3, #1
	bl String16_FormatInteger
	ldr r2, [sp, #0x1c]
	ldr r1, _0222EB98 ; =0x00002608
	add r0, r7, #0
	ldr r1, [r2, r1]
	bl CopyU16ArrayToString
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl ov40_02230DCC
	mov r0, #0
	ldr r1, [sp, #0x2c]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov ip, r0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EB94 ; =0x000F0D00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r3, #0x10
	mov r6, ip
	mov r1, #0
	sub r3, r3, r6
	bl AddTextPrinterParameterizedWithColor
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EB94 ; =0x000F0D00
	ldr r2, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, #0
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EB94 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r2, r7, #0
	mov r3, #0x16
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x2c]
	bl String_Delete
	ldr r0, [sp, #0x28]
	bl String_Delete
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0222EAC0
_0222EB8A:
	ldr r0, [sp, #0x20]
	bl ScheduleWindowCopyToVram
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222EB94: .word 0x000F0D00
_0222EB98: .word 0x00002608
	thumb_func_end ov40_0222E9B8

	thumb_func_start ov40_0222EB9C
ov40_0222EB9C: ; 0x0222EB9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe0
	add r4, r0, #0
	ldr r0, [sp, #0x2f4]
	add r5, r3, #0
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x2f8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x2f8]
	mov r0, #0
	str r0, [sp, #0x40]
	add r6, sp, #0x264
	add r1, r0, #0
	mov r3, #7
_0222EBBA:
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r3, r3, #1
	bne _0222EBBA
	stmia r6!, {r0, r1}
	add r0, r4, #0
	str r0, [sp, #0x50]
	add r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	cmp r2, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	beq _0222EBE4
	str r2, [r4, #0x34]
	b _0222EBEA
_0222EBE4:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x34]
_0222EBEA:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _0222EC0A
	str r1, [r4, #0x10]
	sub r0, r1, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x44]
_0222EC0A:
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x50]
	bl InitWindow
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x50]
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r2, sp, #0x58
	ldr r3, _0222EEC8 ; =ov40_02244E10
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r6, #1
	str r0, [r2]
	ldr r0, [r4, #0x28]
	ldr r1, [r0]
	ldr r0, [r1, #8]
	str r0, [sp, #0x38]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x2f4]
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #1
	ble _0222ECD4
	add r0, r1, #0
	mov r2, #0x10
	add r3, sp, #0x268
	mov ip, r0
_0222ECA0:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	add r0, r0, r2
	ldr r1, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	eor r1, r0
	ldr r0, [sp, #0x38]
	eor r0, r7
	orr r0, r1
	bne _0222ECBE
	ldr r0, [sp, #0x40]
	str r0, [r3]
	b _0222ECC8
_0222ECBE:
	ldr r0, [sp, #0x54]
	str r7, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r6, [r3]
	str r6, [sp, #0x40]
_0222ECC8:
	add r6, r6, #1
	mov r0, ip
	add r2, #0x10
	add r3, r3, #4
	cmp r6, r0
	blt _0222ECA0
_0222ECD4:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bgt _0222ECE0
	b _0222EEB4
_0222ECE0:
	add r0, sp, #0x264
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2f4]
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, #0x58
	str r0, [sp, #0x1c]
_0222ECEE:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x4c]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x48]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0222ED28
	cmp r0, #1
	beq _0222ED4E
	cmp r0, #2
	beq _0222ED6E
	b _0222EDA8
_0222ED28:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	add r1, r1, r6
	ldr r1, [r1, #4]
	bl NewString_ReadMsgData
	str r0, [sp, #0x44]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl BufferString
	b _0222EDA8
_0222ED4E:
	ldr r0, [r4, #0x28]
	mov r1, #0x6d
	ldr r0, [r0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x30]
	mov r0, #0xff
	bl String_New
	str r0, [sp, #0x44]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl BufferMonthNameAbbr
	b _0222EDA8
_0222ED6E:
	ldr r0, [r4, #0x28]
	mov r1, #0x6d
	ldr r0, [r0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	mov r0, #0xff
	bl String_New
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	mov r1, #0x6d
	add r2, sp, #0x64
	bl GetSpeciesNameIntoArray
	ldr r0, [sp, #0x44]
	add r1, sp, #0x64
	bl CopyU16ArrayToString
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl BufferString
_0222EDA8:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	add r1, r0, r6
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov40_022307B0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl String16_FormatUnsignedLongLong
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x48]
	ldr r1, [r1]
	mov r2, #2
	add r1, r1, #1
	mov r3, #1
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	add r3, r1, #0
	bl BufferString
	ldr r2, [sp, #0x4c]
	add r0, r5, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	lsl r1, r0, #4
	ldr r0, [sp, #0x18]
	mul r1, r0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EECC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _0222EE7A
	ldr r0, [sp, #0x2f8]
	cmp r0, #0
	beq _0222EE7A
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0
	bl BufferString
	ldr r2, [sp, #0x2f8]
	add r0, r5, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	mov r3, #0x10
	lsl r1, r0, #4
	ldr r0, [sp, #0x18]
	mul r1, r0
	add r1, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EECC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	bl AddTextPrinterParameterizedWithColor
_0222EE7A:
	ldr r0, [sp, #0x4c]
	bl String_Delete
	ldr r0, [sp, #0x48]
	bl String_Delete
	ldr r0, [sp, #0x44]
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x34]
	bl String_Delete
	add r0, r5, #0
	bl MessageFormat_ResetBuffers
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	bge _0222EEB4
	b _0222ECEE
_0222EEB4:
	ldr r0, [sp, #0x50]
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl MessageFormat_Delete
	add sp, #0x1fc
	add sp, #0xe0
	pop {r4, r5, r6, r7, pc}
	nop
_0222EEC8: .word ov40_02244E10
_0222EECC: .word 0x000F0D00
	thumb_func_end ov40_0222EB9C

	thumb_func_start ov40_0222EED0
ov40_0222EED0: ; 0x0222EED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r0, [sp, #0x14]
	add r0, #0x18
	add r7, r2, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	add r4, r1, #0
	str r0, [r6, #4]
	mov r0, #0
	str r0, [r6]
	str r0, [r6, #0xc]
	ldr r0, [r7, #0x24]
	add r5, r3, #0
	str r0, [r6, #0x10]
	str r7, [r6, #0x28]
	ldr r0, [r4, #0x48]
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r6, #0x40]
	ldr r1, [r6, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r6, #0x44]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bge _0222EF2A
	str r1, [r6, #0x10]
	sub r0, r1, #1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x10]
	sub r0, r0, #1
	str r0, [r6, #0x44]
_0222EF2A:
	mov r0, #1
	str r0, [r6, #0x48]
	ldr r0, [sp, #0x14]
	bl InitWindow
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r7, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r7, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0222EFCA
_0222EF7C:
	ldr r0, [r7, #8]
	mov r1, #0
	lsl r0, r0, #3
	mul r0, r4
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EFD4 ; =0x000F0D00
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [r7, #8]
	mov r1, #0
	lsl r0, r0, #3
	mul r0, r4
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EFD4 ; =0x000F0D00
	mov r3, #0x88
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #4]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _0222EF7C
_0222EFCA:
	ldr r0, [sp, #0x14]
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222EFD4: .word 0x000F0D00
	thumb_func_end ov40_0222EED0

	thumb_func_start ov40_0222EFD8
ov40_0222EFD8: ; 0x0222EFD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0xc]
	add r4, r2, #0
	cmp r1, r0
	bne _0222EFEE
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222EFEE:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _0222EFFC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222EFFC:
	add r7, r5, #0
	add r7, #0x18
	add r0, r7, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r3, [r5, #0x40]
	ldr r1, [r5, #0x3c]
	mov r0, #0
	cmp r1, r3
	blt _0222F024
	ldr r2, [r5, #0x38]
	ldr r1, [r5, #4]
	sub r0, r2, r3
	add r3, r3, #1
	sub r3, r1, r3
	cmp r2, r3
	blt _0222F024
	ldr r0, [r5, #0x10]
	sub r0, r1, r0
_0222F024:
	ldr r1, [r5, #0x10]
	mov r6, #0
	cmp r1, #0
	ble _0222F086
	lsl r0, r0, #3
	add r4, r4, r0
_0222F030:
	ldr r2, [r4]
	cmp r2, #0
	beq _0222F07C
	ldr r0, [r5, #0x28]
	mov r1, #0
	ldr r0, [r0, #8]
	add r3, r1, #0
	lsl r0, r0, #3
	mul r0, r6
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F098 ; =0x000F0D00
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [r5, #0x28]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r3, #0x88
	lsl r0, r0, #3
	mul r0, r6
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F098 ; =0x000F0D00
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	add r0, r7, #0
	bl AddTextPrinterParameterizedWithColor
_0222F07C:
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _0222F030
_0222F086:
	add r0, r7, #0
	bl CopyWindowToVram
	ldr r0, [r5, #0x38]
	str r0, [r5, #0xc]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F098: .word 0x000F0D00
	thumb_func_end ov40_0222EFD8

	thumb_func_start ov40_0222F09C
ov40_0222F09C: ; 0x0222F09C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe8
	add r4, r0, #0
	ldr r0, [sp, #0x2f8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x2f8]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	str r3, [sp, #0x14]
	cmp r1, r0
	bne _0222F0BE
	add sp, #0x1fc
	add sp, #0xe8
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222F0BE:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _0222F0CE
	add sp, #0x1fc
	add sp, #0xe8
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222F0CE:
	add r0, r4, #0
	str r0, [sp, #0x58]
	add r0, #0x18
	str r0, [sp, #0x58]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r5, r0, #0
	ldr r0, [sp, #0x58]
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	mov r0, #8
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x10]
	add r3, sp, #0x26c
	str r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	mov r2, #7
	add r1, r0, #0
_0222F100:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222F100
	stmia r3!, {r0, r1}
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	blt _0222F11A
	ldr r0, [r4, #0x10]
	str r1, [sp, #0x34]
	sub r0, r1, r0
	str r0, [sp, #0x18]
_0222F11A:
	ldr r3, _0222F384 ; =ov40_02244E1C
	add r2, sp, #0x60
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r6, #1
	str r0, [r2]
	ldr r0, [r4, #0x28]
	ldr r1, [r0]
	ldr r0, [r1, #8]
	str r0, [sp, #0x38]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #1
	ble _0222F180
	add r0, r1, #0
	mov r2, #0x10
	add r3, sp, #0x270
	mov ip, r0
_0222F14C:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	add r0, r0, r2
	ldr r1, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x5c]
	eor r1, r0
	ldr r0, [sp, #0x38]
	eor r0, r7
	orr r0, r1
	bne _0222F16A
	ldr r0, [sp, #0x40]
	str r0, [r3]
	b _0222F174
_0222F16A:
	ldr r0, [sp, #0x5c]
	str r7, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r6, [r3]
	str r6, [sp, #0x40]
_0222F174:
	add r6, r6, #1
	mov r0, ip
	add r2, #0x10
	add r3, r3, #4
	cmp r6, r0
	blt _0222F14C
_0222F180:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	blt _0222F18A
	b _0222F36A
_0222F18A:
	add r0, r1, #0
	lsl r6, r0, #4
	add r1, sp, #0x26c
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	add r0, #0x58
	str r0, [sp, #0x1c]
_0222F19E:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x54]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x50]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0222F1D8
	cmp r0, #1
	beq _0222F1FE
	cmp r0, #2
	beq _0222F21E
	b _0222F258
_0222F1D8:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	add r1, r1, r6
	ldr r1, [r1, #4]
	bl NewString_ReadMsgData
	str r0, [sp, #0x4c]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl BufferString
	b _0222F258
_0222F1FE:
	ldr r0, [r4, #0x28]
	mov r1, #0x6d
	ldr r0, [r0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x30]
	mov r0, #0xff
	bl String_New
	str r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl BufferMonthNameAbbr
	b _0222F258
_0222F21E:
	ldr r0, [r4, #0x28]
	mov r1, #0x6d
	ldr r0, [r0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	mov r0, #0xff
	bl String_New
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	mov r1, #0x6d
	add r2, sp, #0x6c
	bl GetSpeciesNameIntoArray
	ldr r0, [sp, #0x4c]
	add r1, sp, #0x6c
	bl CopyU16ArrayToString
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl BufferString
_0222F258:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	add r1, r0, r6
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov40_022307B0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl String16_FormatUnsignedLongLong
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	ldr r1, [r1]
	mov r2, #2
	add r1, r1, #1
	mov r3, #1
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x50]
	add r0, r5, #0
	add r3, r1, #0
	bl BufferString
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	lsl r1, r0, #4
	ldr r0, [sp, #0x44]
	mul r1, r0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F388 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _0222F32A
	ldr r0, [sp, #0x2f8]
	cmp r0, #0
	beq _0222F32A
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0
	bl BufferString
	ldr r2, [sp, #0x2f8]
	add r0, r5, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	mov r3, #0x10
	lsl r1, r0, #4
	ldr r0, [sp, #0x44]
	mul r1, r0
	add r1, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F388 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	bl AddTextPrinterParameterizedWithColor
_0222F32A:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x54]
	bl String_Delete
	ldr r0, [sp, #0x50]
	bl String_Delete
	ldr r0, [sp, #0x4c]
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x48]
	bl String_Delete
	add r0, r5, #0
	bl MessageFormat_ResetBuffers
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x18]
	cmp r1, r0
	bge _0222F36A
	b _0222F19E
_0222F36A:
	ldr r0, [sp, #0x58]
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl MessageFormat_Delete
	mov r0, #8
	ldrsh r0, [r4, r0]
	str r0, [r4, #0xc]
	mov r0, #0
	add sp, #0x1fc
	add sp, #0xe8
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222F384: .word ov40_02244E1C
_0222F388: .word 0x000F0D00
	thumb_func_end ov40_0222F09C

	thumb_func_start ov40_0222F38C
ov40_0222F38C: ; 0x0222F38C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x28]
	add r7, r1, #0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0222F3DA
	ldr r0, [r5, #0x10]
	ldr r6, [sp, #0x1c]
	cmp r0, #0
	ble _0222F3DA
	add r4, r6, #0
_0222F3AA:
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x28]
	add r0, r0, r4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0222F3D0
	add r0, r7, #0
	bl ov40_02230944
	mov r1, #8
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x28]
	add r1, r1, r6
	ldr r0, [r0]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r0, [r0, #4]
	str r0, [sp, #0x1c]
_0222F3D0:
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0222F3AA
_0222F3DA:
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bne _0222F3EA
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0222F3EA:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _0222F3F8
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0222F3F8:
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	mov r1, #0
	str r0, [sp, #0x18]
	bl FillWindowPixelBuffer
	mov r0, #8
	ldrsh r0, [r5, r0]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #4]
	str r0, [sp, #0x10]
	add r0, r0, r2
	mov r6, #0
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0222F420
	sub r0, r1, r2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
_0222F420:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _0222F472
	add r0, r1, #0
	lsl r4, r0, #4
_0222F42C:
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x34]
	ldr r1, [r1]
	ldr r1, [r1, r4]
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r7, #0
	lsl r0, r0, #4
	mul r0, r6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F484 ; =0x000F0D00
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	add r4, #0x10
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _0222F42C
_0222F472:
	ldr r0, [sp, #0x18]
	bl CopyWindowToVram
	mov r0, #8
	ldrsh r0, [r5, r0]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222F484: .word 0x000F0D00
	thumb_func_end ov40_0222F38C

	thumb_func_start ov40_0222F488
ov40_0222F488: ; 0x0222F488
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bne _0222F49E
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222F49E:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0222F4AE
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222F4AE:
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #0x28]
	add r0, #0x18
	str r0, [sp, #0x28]
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x3c]
	cmp r1, r0
	blt _0222F4E8
	ldr r1, [sp, #0x10]
	ldr r2, [r1, #0x38]
	sub r1, r2, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	ldr r1, [r1, #4]
	sub r0, r1, r0
	cmp r2, r0
	blt _0222F4E8
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
_0222F4E8:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _0222F5D2
	ldr r0, [sp, #0x1c]
	mov r4, #4
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x18]
_0222F500:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x63
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	add r1, r2, r1
	add r1, r1, #1
	mov r2, #2
	mov r3, #1
	bl String16_FormatInteger
	ldr r2, [sp, #0x18]
	ldr r1, _0222F5E4 ; =0x00002608
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl CopyU16ArrayToString
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl ov40_02230DCC
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov ip, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5E8 ; =0x000F0D00
	mov r3, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r6, ip
	ldr r0, [sp, #0x28]
	mov r1, #0
	add r2, r7, #0
	sub r3, r3, r6
	bl AddTextPrinterParameterizedWithColor
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5E8 ; =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	mov r1, #0
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5E8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	mov r3, #0x16
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x24]
	bl String_Delete
	ldr r0, [sp, #0x18]
	add r4, #0x18
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _0222F500
_0222F5D2:
	ldr r0, [sp, #0x28]
	bl CopyWindowToVram
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0xc]
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222F5E4: .word 0x00002608
_0222F5E8: .word 0x000F0D00
	thumb_func_end ov40_0222F488

	thumb_func_start ov40_0222F5EC
ov40_0222F5EC: ; 0x0222F5EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xff
	cmp r1, #0
	bge _0222F60C
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ble _0222F624
	sub r0, r0, #1
	str r0, [r5, #0x38]
	ldr r0, _0222F6CC ; =0x00000572
	add r6, r4, #0
	bl PlaySE
	b _0222F624
_0222F60C:
	ble _0222F624
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x38]
	sub r0, r0, #1
	cmp r1, r0
	bge _0222F624
	add r0, r1, #1
	str r0, [r5, #0x38]
	ldr r0, _0222F6CC ; =0x00000572
	mov r6, #1
	bl PlaySE
_0222F624:
	cmp r6, #0
	beq _0222F62E
	cmp r6, #1
	beq _0222F66A
	b _0222F68E
_0222F62E:
	ldr r2, [r5, #0x44]
	ldr r1, [r5, #0x38]
	cmp r1, r2
	bge _0222F63C
	lsl r0, r1, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F63C:
	ldr r0, [r5, #4]
	sub r0, r0, r2
	cmp r1, r0
	blt _0222F658
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r4, r2, #0x10
	cmp r1, r0
	blt _0222F68E
	sub r0, r1, r0
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F658:
	lsl r0, r2, #0x10
	asr r4, r0, #0x10
	cmp r1, r2
	bgt _0222F68E
	sub r0, r1, r2
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F66A:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	cmp r0, r2
	bgt _0222F678
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F678:
	lsl r1, r2, #0x10
	asr r4, r1, #0x10
	ldr r1, [r5, #4]
	sub r1, r1, r2
	cmp r0, r1
	blt _0222F68E
	sub r1, r1, #1
	sub r0, r0, r1
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0222F68E:
	cmp r4, #0
	bge _0222F696
	bl GF_AssertFail
_0222F696:
	cmp r6, #0xff
	beq _0222F69C
	str r4, [r5, #0x3c]
_0222F69C:
	ldr r2, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	mov r3, #0
	cmp r0, r2
	blt _0222F6C0
	ldr r1, [r5, #0x38]
	sub r0, r1, r2
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	ldr r0, [r5, #4]
	add r2, r2, #1
	sub r2, r0, r2
	cmp r1, r2
	blt _0222F6C0
	ldr r1, [r5, #0x10]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
_0222F6C0:
	add r0, r5, #0
	strh r3, [r5, #8]
	bl ov40_0222F8C0
	pop {r4, r5, r6, pc}
	nop
_0222F6CC: .word 0x00000572
	thumb_func_end ov40_0222F5EC

	thumb_func_start ov40_0222F6D0
ov40_0222F6D0: ; 0x0222F6D0
	push {r4, lr}
	add r4, r0, #0
	mov r2, #8
	ldrsh r0, [r4, r2]
	add r1, r0, r1
	strh r1, [r4, #8]
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0222F6E6
	mov r1, #0
	strh r1, [r4, #8]
_0222F6E6:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r2, r1
	bne _0222F6F2
	mov r1, #0
	strh r1, [r4, #8]
_0222F6F2:
	mov r1, #8
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #4]
	add r1, r1, r3
	cmp r1, r2
	ble _0222F704
	sub r1, r2, r3
	strh r1, [r4, #8]
_0222F704:
	mov r1, #8
	ldrsh r1, [r4, r1]
	cmp r0, r1
	beq _0222F712
	ldr r0, _0222F71C ; =0x00000572
	bl PlaySE
_0222F712:
	add r0, r4, #0
	bl ov40_0222F878
	pop {r4, pc}
	nop
_0222F71C: .word 0x00000572
	thumb_func_end ov40_0222F6D0

