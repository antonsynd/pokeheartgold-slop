	.include "macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6320
	.extern ov68_021E6234
	.extern ov68_021E7028

	.text

	.text
	thumb_func_start ov68_021E6320
ov68_021E6320: ; 0x021E6320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0x24
	add r2, r1, #0
	add r5, r0, #0
	add r0, #0xf8
	add r2, #0xdc
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r2, #0
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r3, _021E666C ; =0x00010200
	add r0, r5, #0
	mov r1, #7
	bl ov68_021E6234
	add r0, r5, #0
	add r0, #0x78
	bl ScheduleWindowCopyToVram
	mov r1, #0x23
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xdd
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r0, #2
	str r0, [sp]
	mov r2, #4
	ldr r3, _021E6670 ; =0x000F0E00
	add r0, r5, #0
	mov r1, #8
	str r2, [sp, #4]
	bl ov68_021E6234
	mov r1, #0x22
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xde
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r0, #2
	str r0, [sp]
	mov r2, #4
	ldr r3, _021E6670 ; =0x000F0E00
	add r0, r5, #0
	mov r1, #9
	str r2, [sp, #4]
	bl ov68_021E6234
	add r0, r5, #0
	add r0, #0x98
	bl ScheduleWindowCopyToVram
	mov r1, #0x16
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xea
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	ldr r3, _021E6670 ; =0x000F0E00
	add r0, r5, #0
	add r2, r1, #0
	str r1, [sp, #4]
	bl ov68_021E6234
	add r0, r5, #0
	add r0, #8
	bl ScheduleWindowCopyToVram
	mov r1, #0x17
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe9
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r2, #0
	str r2, [sp]
	ldr r3, _021E6670 ; =0x000F0E00
	add r0, r5, #0
	mov r1, #1
	str r2, [sp, #4]
	bl ov68_021E6234
	add r0, r5, #0
	add r0, #0x18
	bl ScheduleWindowCopyToVram
	mov r1, #0x18
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe8
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r2, #0
	str r2, [sp]
	ldr r3, _021E6670 ; =0x000F0E00
	add r0, r5, #0
	mov r1, #2
	str r2, [sp, #4]
	bl ov68_021E6234
	add r0, r5, #0
	add r0, #0x28
	bl ScheduleWindowCopyToVram
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x42
	bl String_New
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [sp, #0x20]
	mov r1, #0x27
	bl ReadMsgDataIntoString
	ldr r0, [r5]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r0, r5, #0
	mov r1, #1
	add r0, #0xfc
	lsl r1, r1, #8
	ldr r0, [r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x20]
	bl StringExpandPlaceholders
	mov r2, #0
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r3, _021E666C ; =0x00010200
	add r0, r5, #0
	mov r1, #0xc
	bl ov68_021E6234
	add r0, r5, #0
	add r0, #0xc8
	bl ScheduleWindowCopyToVram
	ldr r2, _021E6674 ; =0x000002EE
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x42
	bl NewMsgDataFromNarc
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r4, #0
	str r0, [sp, #0x24]
	add r0, #0xd8
	add r7, r5, #0
	str r4, [sp, #0x10]
	mov r6, #0x10
	str r0, [sp, #0x24]
_021E64A2:
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	bne _021E64C4
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _021E659C
_021E64C4:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r2, r4, #4
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov68_021E7028
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, _021E6670 ; =0x000F0E00
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ov68_021E6234
	mov r2, #0x41
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E666C ; =0x00010200
	lsl r2, r2, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r2, [r5, r2]
	mov r1, #0
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x3a
	mov r2, #0
	bl GetBoxMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	mov r3, #2
	bl BufferIntegerAsString
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x42
	mov r2, #0
	bl GetBoxMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	mov r3, #2
	bl BufferIntegerAsString
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x42
	add r0, #0xfc
	lsl r1, r1, #8
	lsl r2, r2, #2
	ldr r0, [r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl StringExpandPlaceholders
	mov r2, #1
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E666C ; =0x00010200
	lsl r2, r2, #8
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r2, [r5, r2]
	mov r1, #0
	mov r3, #0x2d
	bl AddTextPrinterParameterizedWithColor
_021E659C:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, #0x20
	add r7, r7, #4
	add r6, #0x20
	str r0, [sp, #0x10]
	cmp r4, #4
	bhs _021E65AE
	b _021E64A2
_021E65AE:
	add r0, r5, #0
	add r0, #0xd8
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [sp, #0x20]
	mov r1, #0x25
	bl ReadMsgDataIntoString
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r2, [sp, #0x18]
	mov r1, #0
	bl BufferBoxMonSpeciesName
	add r0, r5, #0
	mov r1, #1
	add r0, #0xfc
	lsl r1, r1, #8
	ldr r0, [r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x20]
	bl StringExpandPlaceholders
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E666C ; =0x00010200
	add r2, r2, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0xe8
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [sp, #0x20]
	mov r1, #0x26
	bl ReadMsgDataIntoString
	ldr r0, [sp, #0x18]
	mov r1, #0xa1
	mov r2, #0
	bl GetBoxMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	add r0, r5, #0
	mov r1, #1
	add r0, #0xfc
	lsl r1, r1, #8
	ldr r0, [r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x20]
	bl StringExpandPlaceholders
	mov r0, #1
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r3, _021E666C ; =0x00010200
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ov68_021E6234
	add r5, #0xe8
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x1c]
	bl DestroyMsgData
	ldr r0, [sp, #0x20]
	bl String_Delete
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E666C: .word 0x00010200
_021E6670: .word 0x000F0E00
_021E6674: .word 0x000002EE
	thumb_func_end ov68_021E6320

