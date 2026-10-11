	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EADF8
	.public ov102_021EAE40
	.extern ov102_021E8F70
	.extern ov102_021EA268

	.text

	.text
	thumb_func_start ov102_021EADF8
ov102_021EADF8: ; 0x021EADF8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov102_021EA268
	mov r1, #0x14
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	ldr r0, [r5, #0x5c]
	bl ClearWindowTilemapAndCopyToVram
	add r1, r5, #0
	add r1, #0x2c
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0x7b
	str r0, [r5, #0x5c]
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	mov r2, #0xf
	bl sub_0200E948
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021EADF8

	thumb_func_start ov102_021EAE40
ov102_021EAE40: ; 0x021EAE40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	add r5, r1, #0
	mov r1, #9
	bl FillWindowPixelBuffer
	cmp r5, #3
	bhi _021EAF34
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAE60: ; jump table
	.short _021EAE68 - _021EAE60 - 2 ; case 0
	.short _021EAEEE - _021EAE60 - 2 ; case 1
	.short _021EAECA - _021EAE60 - 2 ; case 2
	.short _021EAF12 - _021EAE60 - 2 ; case 3
_021EAE68:
	mov r0, #2
	mov r1, #0x3c
	mov r2, #0
	bl MessageFormat_New_Custom
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0
	bl String_New
	mov r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl BufferPocketName
	ldr r0, [r4, #4]
	bl ov102_021E8F70
	add r1, r0, #0
	ldr r0, [r4, #0x78]
	ldr r2, [r4, #0x7c]
	bl ReadMsgDataIntoString
	ldr r2, [r4, #0x7c]
	add r0, r5, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EAF40 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	add r2, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r5, #0
	bl MessageFormat_Delete
	b _021EAF34
_021EAECA:
	ldr r0, [r4, #0x78]
	ldr r2, [r4, #0x7c]
	mov r1, #6
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EAF40 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x7c]
	bl AddTextPrinterParameterizedWithColor
	b _021EAF34
_021EAEEE:
	ldr r0, [r4, #0x78]
	ldr r2, [r4, #0x7c]
	mov r1, #7
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EAF40 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x7c]
	bl AddTextPrinterParameterizedWithColor
	b _021EAF34
_021EAF12:
	ldr r0, [r4, #0x78]
	ldr r2, [r4, #0x7c]
	mov r1, #8
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EAF40 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x7c]
	bl AddTextPrinterParameterizedWithColor
_021EAF34:
	ldr r0, [r4, #0x5c]
	bl CopyWindowToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EAF40: .word 0x00010209
	thumb_func_end ov102_021EAE40

