	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6320
	.public ov68_021E6678
	.public ov68_021E66A0
	.public ov68_021E66F0
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

	thumb_func_start ov68_021E6678
ov68_021E6678: ; 0x021E6678
	push {r3, r4}
	ldr r0, [r0]
	ldr r1, _021E669C ; =0x0000FFFF
	ldr r4, [r0, #0x10]
	mov r0, #1
	mov r3, #0
	lsl r0, r0, #8
_021E6686:
	ldrh r2, [r4]
	cmp r2, r1
	beq _021E6694
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r0
	blo _021E6686
_021E6694:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	nop
_021E669C: .word 0x0000FFFF
	thumb_func_end ov68_021E6678

	thumb_func_start ov68_021E66A0
ov68_021E66A0: ; 0x021E66A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, r1, #0
	str r3, [sp]
	add r5, r2, #0
	add r1, sp, #0x20
	ldrb r2, [r1, #0x10]
	add r3, r5, #0
	str r2, [sp, #4]
	add r2, r0, #0
	add r2, #0xc
	str r2, [sp, #8]
	ldrb r2, [r1, #0x14]
	str r2, [sp, #0xc]
	ldrb r1, [r1, #0x18]
	add r2, r6, #0
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	bl CopyToBgTilemapRect
	ldr r0, [r4, #4]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov68_021E66A0

	thumb_func_start ov68_021E66F0
ov68_021E66F0: ; 0x021E66F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r3, r1, r2
	mov r1, #0x6e
	add r5, r0, #0
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	lsl r4, r2, #5
	cmp r3, r1
	blt _021E6720
	mov r3, #4
	lsl r2, r2, #2
	add r2, r2, #4
	lsl r2, r2, #0x18
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021E6720:
	str r4, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E67D8 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	lsl r6, r3, #3
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r2, #0x11
	ldr r2, [r5, r2]
	add r0, #0xa8
	ldr r2, [r2, r6]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E67DC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r2, r2, #5
	ldr r2, [r5, r2]
	add r0, #0xa8
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, r0, r6
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GetMoveMaxPP
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #2
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0xfc
	ldr r0, [r0]
	add r2, r6, #0
	mov r3, #2
	bl BufferIntegerAsString
	mov r2, #1
	add r0, r5, #0
	lsl r2, r2, #8
	add r0, #0xfc
	ldr r1, [r5, r2]
	add r2, #8
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl StringExpandPlaceholders
	add r4, #0x10
	str r4, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E67DC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r2, r2, #1
	ldr r2, [r5, r2]
	add r0, #0xa8
	mov r3, #0x2d
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E67D8: .word 0x000F0E00
_021E67DC: .word 0x00010200
	thumb_func_end ov68_021E66F0

