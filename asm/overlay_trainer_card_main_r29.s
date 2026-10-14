#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6F18
	.extern ov51_021E74F4
	.extern ov51_021E7540

	.text

	.text
	thumb_func_start ov51_021E6F18
ov51_021E6F18: ; 0x021E6F18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	ldr r0, _021E71BC ; =0x000033C4
	add r6, r1, #0
	ldr r0, [r7, r0]
	add r5, r2, #0
	str r0, [sp, #0x20]
	mov r4, #0
_021E6F2A:
	lsl r0, r4, #4
	str r0, [sp, #0x24]
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r4, #3
	bne _021E6F44
	bne _021E6F68
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E6F68
_021E6F44:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E71C0 ; =0x00010200
	lsl r2, r4, #2
	str r0, [sp, #8]
	mov r0, #0
	add r3, r7, r2
	str r0, [sp, #0xc]
	ldr r2, _021E71C4 ; =0x000033EC
	ldr r0, [sp, #0x24]
	mov r1, #0
	ldr r2, [r3, r2]
	add r0, r6, r0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
_021E6F68:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _021E6F2A
	mov r0, #0x20
	mov r1, #0x19
	bl String_New
	str r0, [sp, #0x1c]
	ldr r0, _021E71C8 ; =0x000033D0
	mov r1, #0x20
	ldr r0, [r7, r0]
	mov r2, #0x19
	str r0, [sp, #0x18]
	mov r0, #6
	bl MessageFormat_New_Custom
	add r4, r0, #0
	ldr r0, _021E71CC ; =0x000033D4
	mov r2, #0
	ldr r0, [r7, r0]
	mov r1, #0x60
	str r0, [sp, #0x14]
	str r0, [sp]
	ldrh r0, [r5, #0x28]
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xff
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov51_021E74F4
	ldr r0, _021E71C8 ; =0x000033D0
	add r1, r5, #0
	ldr r0, [r7, r0]
	add r1, #8
	bl CopyU16ArrayToString
	ldr r0, _021E71C8 ; =0x000033D0
	mov r2, #0
	ldr r0, [r7, r0]
	mov r1, #0x68
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x10
	add r3, r2, #0
	bl ov51_021E7540
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #5
	mov r3, #6
	bl BufferIntegerAsString
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	mov r1, #0x13
	bl ReadMsgDataIntoString
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x88
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E71C0 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x20
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E7076
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r5, #0x20]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl BufferIntegerAsString
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	mov r1, #0x1a
	bl ReadMsgDataIntoString
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x88
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E71C0 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x30
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
_021E7076:
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r1, #0x88
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xff
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r0, #0x40
	add r3, r2, #0
	bl ov51_021E74F4
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E70DA
	ldr r0, [r5, #0x18]
	bl GetIGTHours
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	ldr r0, [r5, #0x18]
	bl GetIGTMinutes
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r1, #1
	add r0, r4, #0
	str r1, [sp, #4]
	bl BufferIntegerAsString
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	mov r1, #0x15
	bl ReadMsgDataIntoString
	b _021E710A
_021E70DA:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r2, [r5, #0x2a]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r3, #2
	add r2, r5, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, #0x2e
	ldrb r2, [r2]
	add r0, r4, #0
	bl BufferIntegerAsString
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	mov r1, #0x14
	bl ReadMsgDataIntoString
_021E710A:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E71C0 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x50
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	mov r1, #2
	add r2, r5, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x2f
	ldrb r2, [r2]
	add r0, r4, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	add r2, r5, #0
	add r2, #0x30
	ldrb r2, [r2]
	add r0, r4, #0
	mov r1, #3
	bl BufferMonthNameAbbr
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, #0x31
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #4
	bl BufferIntegerAsString
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	mov r1, #0x16
	bl ReadMsgDataIntoString
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E71C0 ; =0x00010200
	add r6, #0x60
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_Delete
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E71BC: .word 0x000033C4
_021E71C0: .word 0x00010200
_021E71C4: .word 0x000033EC
_021E71C8: .word 0x000033D0
_021E71CC: .word 0x000033D4
	thumb_func_end ov51_021E6F18

