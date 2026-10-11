#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6CF0
	.public ov51_021E6D44
	.public ov51_021E6DA8
	.public ov51_021E6E10
	.public ov51_021E6E60
	.public ov51_021E6EF0
	.public ov51_021E6F18
	.extern ov51_021E74F4
	.extern ov51_021E7540
	.extern ov51_021E757C
	.extern ov51_021E7664
	.extern ov51_021E78D0
	.extern ov51_021E7D44
	.extern ov51_021E7F48

	.text

	.text
	thumb_func_start ov51_021E6CF0
ov51_021E6CF0: ; 0x021E6CF0
	push {r4, r5, r6, r7}
	mov r2, #3
	mov r4, #0
	lsl r2, r2, #0xc
_021E6CF8:
	asr r3, r4, #2
	lsr r3, r3, #0x1d
	add r3, r4, r3
	asr r3, r3, #3
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1d
	sub r5, r5, r6
	mov r3, #0x1d
	ror r5, r3
	add r3, r6, r5
	asr r5, r4, #5
	lsr r5, r5, #0x1a
	lsl r3, r3, #0x18
	add r5, r4, r5
	lsr r3, r3, #0x18
	asr r5, r5, #6
	lsl r5, r5, #3
	add r3, r0, r3
	ldrb r3, [r5, r3]
	lsr r7, r4, #0x1f
	lsl r6, r4, #0x1d
	sub r6, r6, r7
	mov r5, #0x1d
	ror r6, r5
	add r5, r7, r6
	lsl r5, r5, #0x18
	add r6, r3, #0
	lsr r5, r5, #0x18
	asr r6, r5
	mov r3, #1
	and r3, r6
	strb r3, [r1, r4]
	add r4, r4, #1
	cmp r4, r2
	blt _021E6CF8
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov51_021E6CF0

	thumb_func_start ov51_021E6D44
ov51_021E6D44: ; 0x021E6D44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #1
	str r1, [sp]
	lsl r1, r7, #0x18
	mov r3, #3
	str r0, [sp, #4]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xc
	bl BG_LoadCharTilesData
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl GetBgTilemapBuffer
	mov r4, #0
	add r1, r0, #0
	add r3, r4, #0
	add r0, r4, #0
_021E6D6E:
	add r5, r3, #0
	add r5, #0xc
	lsl r5, r5, #6
	add r2, r0, #0
	add r5, r1, r5
_021E6D78:
	lsl r6, r2, #1
	add r4, r4, #1
	add r2, r2, #1
	lsl r4, r4, #0x10
	lsl r2, r2, #0x18
	lsr r4, r4, #0x10
	add r6, r5, r6
	lsr r2, r2, #0x18
	strh r4, [r6, #8]
	cmp r2, #0x18
	blo _021E6D78
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #8
	blo _021E6D6E
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov51_021E6D44

	thumb_func_start ov51_021E6DA8
ov51_021E6DA8: ; 0x021E6DA8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021E6E02
	ldr r0, _021E6E04 ; =0x000030F4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E6DF2
	ldr r2, _021E6E08 ; =0x00003439
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _021E6DE0
	add r1, r4, #0
	add r1, #0xe8
	sub r2, #0x71
	ldr r1, [r1]
	ldr r2, [r4, r2]
	add r0, r4, #4
	bl ov51_021E757C
	ldr r2, _021E6E0C ; =0x000033CC
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #1
	bl ov51_021E7664
	b _021E6DF2
_021E6DE0:
	cmp r0, #0xf
	bne _021E6DF2
	sub r2, #0x6d
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #0
	bl ov51_021E7664
_021E6DF2:
	ldr r0, _021E6E08 ; =0x00003439
	mov r1, #0x1e
	ldrb r0, [r4, r0]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _021E6E08 ; =0x00003439
	strb r1, [r4, r0]
_021E6E02:
	pop {r4, pc}
	.balign 4, 0
_021E6E04: .word 0x000030F4
_021E6E08: .word 0x00003439
_021E6E0C: .word 0x000033CC
	thumb_func_end ov51_021E6DA8

	thumb_func_start ov51_021E6E10
ov51_021E6E10: ; 0x021E6E10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #1
	ldr r0, _021E6E5C ; =0x0000311C
	bne _021E6E38
	add r0, r5, r0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl ov51_021E7D44
	mov r1, #0
	ldr r0, _021E6E5C ; =0x0000311C
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov51_021E7D44
	b _021E6E52
_021E6E38:
	mov r1, #1
	add r0, r5, r0
	mov r2, #2
	add r3, r1, #0
	bl ov51_021E7D44
	ldr r0, _021E6E5C ; =0x0000311C
	mov r1, #0
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #1
	bl ov51_021E7D44
_021E6E52:
	add r0, r5, #0
	add r1, r4, #0
	bl ov51_021E78D0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6E5C: .word 0x0000311C
	thumb_func_end ov51_021E6E10

	thumb_func_start ov51_021E6E60
ov51_021E6E60: ; 0x021E6E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r7, _021E6EE4 ; =ov51_021E7F48
	mov r4, #0
	add r6, r5, #4
_021E6E6C:
	lsl r1, r4, #4
	lsl r2, r4, #3
	ldr r0, [r5]
	add r1, r6, r1
	add r2, r7, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _021E6E6C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5]
	mov r1, #7
	mov r3, #1
	bl BG_FillCharDataRange
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5]
	mov r1, #4
	mov r3, #1
	bl BG_FillCharDataRange
	ldr r0, _021E6EE8 ; =0x0000343D
	ldr r2, _021E6EEC ; =0x000003E1
	ldrb r0, [r5, r0]
	mov r1, #4
	mov r3, #0xd
	str r0, [sp]
	mov r0, #0x19
	str r0, [sp, #4]
	ldr r0, [r5]
	bl LoadUserFrameGfx2
	mov r1, #7
	mov r0, #4
	lsl r1, r1, #6
	mov r2, #0x19
	bl LoadFontPal0
	mov r0, #0x19
	bl YesNoPrompt_Create
	mov r1, #0xcf
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6EE4: .word ov51_021E7F48
_021E6EE8: .word 0x0000343D
_021E6EEC: .word 0x000003E1
	thumb_func_end ov51_021E6E60

	thumb_func_start ov51_021E6EF0
ov51_021E6EF0: ; 0x021E6EF0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xcf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r5, #0
	add r4, r4, #4
_021E6F02:
	lsl r0, r5, #4
	add r0, r4, r0
	bl RemoveWindow
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0xe
	blo _021E6F02
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov51_021E6EF0

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

