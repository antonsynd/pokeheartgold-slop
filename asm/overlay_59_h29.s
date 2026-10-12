	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223892C
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

