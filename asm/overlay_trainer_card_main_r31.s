#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E7208
	.extern ov51_021E74F4

	.text

	.text
	thumb_func_start ov51_021E7208
ov51_021E7208: ; 0x021E7208
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	ldr r1, _021E74C4 ; =0x000033C4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	str r2, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r4, #7
	mov r6, #0
_021E721C:
	lsl r7, r4, #4
	add r0, r5, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	lsl r3, r4, #2
	add r3, r2, r3
	ldr r2, _021E74CC ; =0x000033EC
	str r6, [sp, #0xc]
	ldr r2, [r3, r2]
	add r0, r5, r7
	add r1, r6, #0
	add r3, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _021E721C
	mov r0, #0x20
	mov r1, #0x19
	bl String_New
	add r7, r0, #0
	ldr r1, _021E74D0 ; =0x000033D0
	ldr r0, [sp, #0x14]
	mov r2, #0x19
	ldr r4, [r0, r1]
	mov r0, #6
	mov r1, #0x20
	bl MessageFormat_New_Custom
	ldr r1, [sp, #0x18]
	add r6, r0, #0
	add r1, #0x33
	ldrb r1, [r1]
	cmp r1, #0
	beq _021E72EC
	mov r1, #2
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	add r3, r1, #0
	add r2, #0x32
	ldrb r2, [r2]
	bl BufferIntegerAsString
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r2, #0x33
	ldrb r2, [r2]
	mov r1, #3
	bl BufferMonthNameAbbr
	mov r3, #2
	ldr r2, [sp, #0x18]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x34
	ldrb r2, [r2]
	add r0, r6, #0
	mov r1, #4
	bl BufferIntegerAsString
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	ldrh r2, [r2, #0x2c]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r3, #2
	ldr r2, [sp, #0x18]
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, #0x35
	ldrb r2, [r2]
	add r0, r6, #0
	bl BufferIntegerAsString
	ldr r0, [sp, #0x1c]
	mov r1, #0x16
	add r2, r7, #0
	bl ReadMsgDataIntoString
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	b _021E7324
_021E72EC:
	ldr r0, [sp, #0x1c]
	mov r1, #0xc
	add r2, r7, #0
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r1, #0
	bl BufferString
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl BufferString
	ldr r0, [sp, #0x1c]
	mov r1, #0x19
	add r2, r4, #0
	bl ReadMsgDataIntoString
_021E7324:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x70
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r2, r7, #0
	bl ReadMsgDataIntoString
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x70
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	ldr r2, [r2, #0x38]
	mov r1, #5
	mov r3, #6
	bl BufferIntegerAsString
	ldr r0, [sp, #0x1c]
	mov r1, #0x1b
	add r2, r7, #0
	bl ReadMsgDataIntoString
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	mov r1, #0x17
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x90
	mov r3, #0x70
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	mov r2, #0
	ldr r0, [sp, #0x18]
	str r4, [sp]
	ldr r0, [r0, #0x40]
	mov r1, #0xe0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xff
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x90
	add r3, r2, #0
	bl ov51_021E74F4
	ldr r0, [sp, #0x1c]
	mov r1, #0x18
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x90
	mov r3, #0xb0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x18]
	str r4, [sp]
	ldr r0, [r0, #0x3c]
	mov r1, #0xe0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xff
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x90
	mov r2, #0x40
	mov r3, #0
	bl ov51_021E74F4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	ldr r2, [r2, #0x44]
	mov r1, #5
	mov r3, #6
	bl BufferIntegerAsString
	ldr r0, [sp, #0x1c]
	mov r1, #0x1b
	add r2, r7, #0
	bl ReadMsgDataIntoString
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E74C8 ; =0x00010200
	add r5, #0xa0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E74C4: .word 0x000033C4
_021E74C8: .word 0x00010200
_021E74CC: .word 0x000033EC
_021E74D0: .word 0x000033D0
	thumb_func_end ov51_021E7208

