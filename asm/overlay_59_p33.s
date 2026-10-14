	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238AB0
	.extern ov59_02238834
	.extern ov59_02238A04

	.text

	.text
	thumb_func_start ov59_02238AB0
ov59_02238AB0: ; 0x02238AB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	beq _02238B6E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #6
	str r0, [sp, #0xc]
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x54]
	mov r3, #1
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r1, r5, #0
	add r1, #0x4e
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov59_02238A04
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov59_02238834
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov59_02238834
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02238C20 ; =0x00010200
	add r2, #0x79
	str r0, [sp, #8]
	add r0, r5, r2
	add r2, r5, #0
	str r1, [sp, #0xc]
	add r2, #0x4d
	ldrb r2, [r2]
	add r3, r1, #0
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0xd0
	ldr r2, [r2]
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	mov r1, #0x1a
	bl ReadMsgDataIntoString
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02238C20 ; =0x00010200
	add r2, #0xc9
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, r2
	ldr r2, [r5, #0x68]
	mov r3, #2
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	b _02238BB2
_02238B6E:
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x54]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x54]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
_02238BB2:
	add r4, r5, #0
	mov r6, #9
	add r4, #0x24
_02238BB8:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0xe
	ble _02238BB8
	add r0, r5, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r5, r0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0xa
	bhs _02238C02
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x19
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1b
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02238C02:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238C20: .word 0x00010200
	thumb_func_end ov59_02238AB0

