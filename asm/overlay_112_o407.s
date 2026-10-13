#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F06CC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F06CC
ov112_021F06CC: ; 0x021F06CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x28
	ldrb r7, [r0]
	ldrh r0, [r4, #0x26]
	add r1, #0xa
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x70]
	bl CopyU16ArrayToString
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F0900 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x70]
	add r0, #0x38
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0x38
	bl CopyWindowToVram
	ldrh r0, [r4, #4]
	ldr r1, [r5]
	bl GetSpeciesName
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r5, #0x6c]
	mov r1, #0
	add r2, r6, #0
	bl BufferString
	add r0, r6, #0
	bl String_Delete
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x68]
	ldr r3, [r5]
	mov r2, #0
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F0900 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #8
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #8
	bl CopyWindowToVram
	add r0, r6, #0
	bl String_Delete
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x6c]
	mov r1, #0
	add r2, r7, #0
	mov r3, #3
	bl BufferIntegerAsString
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x68]
	ldr r3, [r5]
	mov r2, #3
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x18
	bl GetWindowWidth
	add r7, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r1, r7, #3
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F0900 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x18
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0x18
	bl CopyWindowToVram
	add r0, r6, #0
	bl String_Delete
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _021F0820
	ldr r0, [r5, #0x68]
	mov r1, #1
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F0904 ; =0x00070800
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x48
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0x48
	bl CopyWindowToVram
	add r0, r4, #0
	bl String_Delete
	b _021F0876
_021F0820:
	cmp r0, #1
	bne _021F0864
	ldr r0, [r5, #0x68]
	mov r1, #2
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x48
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0x48
	bl CopyWindowToVram
	add r0, r4, #0
	bl String_Delete
	b _021F0876
_021F0864:
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x48
	bl CopyWindowToVram
_021F0876:
	ldr r0, [r5, #0x68]
	mov r1, #4
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F0900 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x28
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0x28
	bl CopyWindowToVram
	add r0, r4, #0
	bl String_Delete
	ldr r0, [r5, #0x6c]
	ldr r2, [sp, #0x10]
	mov r1, #0
	bl BufferItemName
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x68]
	ldr r3, [r5]
	mov r2, #5
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F0900 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x58
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r5, #0x58
	add r0, r5, #0
	bl CopyWindowToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0900: .word 0x00010200
_021F0904: .word 0x00070800
	thumb_func_end ov112_021F06CC

