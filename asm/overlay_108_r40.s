	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E7700
	.public ov108_021E77D4

	.text

	.text
	thumb_func_start ov108_021E7700
ov108_021E7700: ; 0x021E7700
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	lsl r5, r0, #4
	mov r0, #0xed
	lsl r0, r0, #2
	add r4, r7, r0
	add r0, r4, r5
	bl GetWindowWidth
	lsl r0, r0, #0x1b
	lsr r6, r0, #0x18
	add r0, r4, r5
	bl GetWindowHeight
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, _021E77CC ; =0x00030102
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	cmp r0, #2
	beq _021E778A
	mov r0, #0xc9
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r7, #4
	cmp r0, #1
	bhi _021E7780
	ldr r0, _021E77D0 ; =0x000D0C0E
	mov r1, #0xe
	str r0, [sp, #0x18]
	add r0, r4, r5
	bl FillWindowPixelBuffer
	mov r2, #0
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, r5
	mov r1, #6
	add r3, r2, #0
	bl FillWindowPixelRect
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [sp, #0x1c]
	add r0, r4, r5
	sub r3, r3, #2
	lsl r3, r3, #0x10
	mov r1, #6
	mov r2, #0
	lsr r3, r3, #0x10
	bl FillWindowPixelRect
	b _021E77AC
_021E7780:
	add r0, r4, r5
	mov r1, #2
	bl FillWindowPixelBuffer
	b _021E77AC
_021E778A:
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r7, r0
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	lsl r2, r1, #2
	ldr r1, [sp, #0x24]
	mov r0, #0
	ldr r1, [r1, r2]
	add r2, r0, #0
	bl FontID_String_GetWidth
	sub r0, r6, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	mov r7, #4
_021E77AC:
	str r7, [sp]
	mov r1, #0
	ldr r0, [sp, #0x18]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r4, r5
	lsl r3, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x20]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E77CC: .word 0x00030102
_021E77D0: .word 0x000D0C0E
	thumb_func_end ov108_021E7700

	thumb_func_start ov108_021E77D4
ov108_021E77D4: ; 0x021E77D4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xf9
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #2
	bl FillWindowPixelBuffer
	mov r3, #1
	str r3, [sp]
	mov r0, #0xc2
	ldr r2, _021E78B8 ; =0x000184DE
	str r3, [sp, #4]
	ldrb r2, [r5, r2]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r2, #1
	bl BufferIntegerAsString
	mov r2, #0xc2
	lsl r2, r2, #2
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x2c
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl StringExpandPlaceholders
	mov r0, #0xf9
	lsl r0, r0, #2
	add r0, r5, r0
	bl GetWindowWidth
	mov r1, #0xc3
	lsl r1, r1, #2
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r1, r4, #3
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r2, #0xf9
	ldr r0, _021E78BC ; =0x00030102
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r5, r2
	str r1, [sp, #0xc]
	sub r2, #0xd8
	ldr r2, [r5, r2]
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	ldr r0, _021E78B8 ; =0x000184DE
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021E7878
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl Sprite_SetAnimCtrlSeq
	b _021E7884
_021E7878:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
_021E7884:
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	ldr r0, _021E78B8 ; =0x000184DE
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021E78A8
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021E78A8:
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E78B8: .word 0x000184DE
_021E78BC: .word 0x00030102
	thumb_func_end ov108_021E77D4

