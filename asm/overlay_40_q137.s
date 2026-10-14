	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FF74
	.extern ov40_0222DAB0
	.extern ov40_022306C0
	.extern ov40_02230DCC
	.extern ov40_02244E28
	.extern ov40_02244EE8

	.text

	.text
	thumb_func_start ov40_0222FF74
ov40_0222FF74: ; 0x0222FF74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	ldr r3, _022302A0 ; =ov40_02244EE8
	add r7, r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x74
	mov r1, #0x14
_0222FF82:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0222FF82
	ldr r3, _022302A4 ; =ov40_02244E28
	add r2, sp, #0x5c
	str r2, [sp, #0x20]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #1
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x40]
	add r4, sp, #0x74
	add r5, #0x3c
_0222FFAE:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0xff
	beq _02230062
	ldr r1, [sp, #0x20]
	ldr r0, [r7, #0x48]
	ldr r1, [r1]
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	bl InitWindow
	mov r0, #2
	ldrsh r0, [r4, r0]
	mov r3, #0
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r4, r3]
	ldr r0, [r7, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r6, #0
	bl ov40_022306C0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022302A8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x3c]
	add r0, r0, r2
	str r0, [sp, #0x3c]
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x20]
	add r4, #8
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #5
	blt _0222FFAE
_02230062:
	ldr r0, [sp, #0x14]
	ldr r6, [r0]
	mov r0, #0x6d
	bl ov40_0222DAB0
	ldr r5, [sp, #0x14]
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x6d
	add r5, #0x3c
	bl sub_020315B8
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	add r0, r7, #0
	bl ov40_02230DCC
	ldr r0, [r7, #0x48]
	mov r1, #7
	bl NewString_ReadMsgData
	str r0, [sp, #0x48]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	add r3, r1, #0
	bl BufferString
	ldr r2, [sp, #0x48]
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
	ldr r0, _022302A8 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x44]
	bl String_Delete
	ldr r0, [sp, #0x48]
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	ldr r0, [sp, #0x14]
	mov r1, #3
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_0203088C
	add r1, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	add r1, #0x84
	add r5, #0x4c
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022302A8 ; =0x000F0D00
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
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	ldr r0, [sp, #0x14]
	mov r1, #2
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_0203088C
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _022301F4
	ldr r5, [sp, #0x14]
	mov r0, #0xff
	mov r1, #0x6d
	add r5, #0x5c
	bl String_New
	str r0, [sp, #0x50]
	ldr r0, [r7, #0x48]
	mov r1, #9
	bl NewString_ReadMsgData
	str r0, [sp, #0x54]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	mov r2, #4
	mov r3, #0
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x50]
	add r0, r4, #0
	add r3, r1, #0
	bl BufferString
	ldr r2, [sp, #0x54]
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
	ldr r0, _022302A8 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x50]
	bl String_Delete
	ldr r0, [sp, #0x54]
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	b _02230206
_022301F4:
	ldr r5, [sp, #0x14]
	mov r1, #0
	add r5, #0x6c
	add r0, r5, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
_02230206:
	ldr r0, [sp, #0x14]
	mov r1, #4
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_0203088C
	add r5, r0, #0
	str r1, [sp, #0x1c]
	add r6, r1, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x34]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r0, #0x7c
	str r0, [sp, #0x14]
	ldr r2, _022302AC ; =0x000186A0
	add r0, r5, #0
	mov r3, #0
	bl _ull_mod
	str r0, [sp, #0x2c]
	ldr r2, _022302AC ; =0x000186A0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl _ll_udiv
	ldr r2, _022302AC ; =0x000186A0
	str r0, [sp, #0x58]
	mov r3, #0
	add r6, r1, #0
	bl _ull_mod
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	ldr r2, _022302AC ; =0x000186A0
	add r1, r6, #0
	mov r3, #0
	bl _ll_udiv
	mov r1, #0xa
	str r0, [sp, #0x24]
	bl _u32_div_f
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #0
	bne _022302B0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	eor r1, r0
	mov r2, #0
	add r0, r5, #0
	eor r0, r2
	orr r0, r1
	beq _022302B0
	ldr r0, [r7, #0x48]
	mov r1, #0xc
	bl NewString_ReadMsgData
	add r6, r0, #0
	b _022302BA
	nop
_022302A0: .word ov40_02244EE8
_022302A4: .word ov40_02244E28
_022302A8: .word 0x000F0D00
_022302AC: .word 0x000186A0
_022302B0:
	ldr r0, [r7, #0x48]
	mov r1, #0xb
	bl NewString_ReadMsgData
	add r6, r0, #0
_022302BA:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x2c]
	mov r2, #5
	mov r3, #2
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	mov r2, #5
	mov r3, #2
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	add r3, r2, #0
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	mov r3, #0
	str r1, [sp, #4]
	bl BufferString
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl BufferString
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r3, r1, #0
	bl BufferString
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230394 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x14]
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x38]
	bl String_Delete
	ldr r0, [sp, #0x34]
	bl String_Delete
	ldr r0, [sp, #0x30]
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_ResetBuffers
	add r0, r4, #0
	bl MessageFormat_Delete
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_02230394: .word 0x000F0D00
	thumb_func_end ov40_0222FF74

