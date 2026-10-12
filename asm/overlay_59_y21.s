	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223892C
	.public ov59_02238A04
	.public ov59_02238AB0
	.extern ov59_02238834
	.extern ov59_0223C624
	.extern ov59_0223C6C4
	.extern ov59_0223C6C6

	.text

	.text
	thumb_func_start ov59_0223892C
ov59_0223892C: ; 0x0223892C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	add r5, r1, #0
	add r6, r4, r0
	add r0, r5, #0
	add r0, #0xb
	lsl r7, r0, #4
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x1a
	str r0, [sp, #0x14]
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _0223896C
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r5, #2
	lsl r1, r0, #2
	add r0, r2, r1
	str r0, [sp, #0x10]
	ldr r0, [r2, r1]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r6, r7
	bl ClearWindowTilemapAndScheduleTransfer
	b _022389E0
_0223896C:
	mov r0, #0x95
	lsl r0, r0, #2
	add r1, r5, #2
	add r0, r4, r0
	lsl r2, r1, #2
	add r1, r0, r2
	str r1, [sp, #0x10]
	ldr r0, [r0, r2]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r0, [r4, #0x60]
	ldrb r2, [r2, r5]
	mov r1, #0
	mov r3, #2
	bl BufferIntegerAsString
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x74]
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [r4, #0x64]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022389F8 ; =0x00010200
	mov r3, ip
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x64]
	mov r4, #0x10
	sub r3, r4, r3
	lsr r4, r3, #0x1f
	add r4, r3, r4
	add r0, r6, r7
	asr r3, r4, #1
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, r7
	bl ScheduleWindowCopyToVram
_022389E0:
	ldr r1, _022389FC ; =ov59_0223C6C4
	lsl r3, r5, #2
	ldr r2, _02238A00 ; =ov59_0223C6C6
	ldr r0, [sp, #0x10]
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, r3]
	ldr r0, [r0]
	bl Sprite_SetPositionXY
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022389F8: .word 0x00010200
_022389FC: .word ov59_0223C6C4
_02238A00: .word ov59_0223C6C6
	thumb_func_end ov59_0223892C

	thumb_func_start ov59_02238A04
ov59_02238A04: ; 0x02238A04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r0, sp, #0x18
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, sp, #0x18
	strb r0, [r1, #1]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r6, _02238AA8 ; =ov59_0223C624
	add r7, sp, #0x18
	add r4, r5, r0
_02238A32:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r7]
	ldr r0, [r5, #0x60]
	mov r1, #0
	mov r3, #1
	bl BufferIntegerAsString
	ldr r0, [r5, #0x60]
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x74]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x10]
	mov r1, #0
	add r0, #8
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #3
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02238AAC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldrb r3, [r6]
	ldr r2, [r5, #0x64]
	add r0, r4, r0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x14]
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r5, r0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0xa
	blo _02238AA2
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	add r6, r6, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _02238A32
_02238AA2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02238AA8: .word ov59_0223C624
_02238AAC: .word 0x00010200
	thumb_func_end ov59_02238A04

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

