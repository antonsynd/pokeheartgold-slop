	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EB29C
	.public ov102_021EB2EC
	.public ov102_021EB3B4
	.public ov102_021EB46C
	.extern ov102_021EA268
	.extern ov102_021EB524
	.extern ov102_021EC808

	.text

	.text
	thumb_func_start ov102_021EB29C
ov102_021EB29C: ; 0x021EB29C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7]
	bl ov102_021EA268
	str r0, [sp]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _021EB2B2
	bl Sprite_Delete
_021EB2B2:
	add r4, r7, #0
	mov r6, #0
	add r4, #0x24
	add r5, r7, #0
_021EB2BA:
	add r0, r4, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	bl RemoveWindow
	ldr r0, [r5, #0x18]
	bl String_Delete
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #3
	blt _021EB2BA
	ldr r0, [r7, #0x58]
	bl Heap_Free
	ldr r0, [r7, #0x54]
	bl Heap_Free
	ldr r0, [sp]
	mov r1, #3
	bl BgCommitTilemapBufferToVram
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov102_021EB29C

	thumb_func_start ov102_021EB2EC
ov102_021EB2EC: ; 0x021EB2EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl ov102_021EA268
	mov r1, #0xd
	str r1, [sp]
	mov r1, #9
	str r1, [sp, #4]
	mov r1, #7
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	mov r1, #0
	add r2, r1, #0
	mov r3, #0x17
	str r0, [sp, #0x1c]
	bl FillBgTilemapRect
	add r0, r5, #0
	add r1, r6, #0
	bl ov102_021EB524
	cmp r4, #0
	bne _021EB330
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl BgCommitTilemapBufferToVram
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021EB330:
	ldr r0, [r5, #0x5c]
	mov r1, #9
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	mov r3, #0xd
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x17
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl CopyToBgTilemapRect
	add r4, r5, #0
	mov r6, #0
	add r4, #0x24
_021EB366:
	add r0, r4, #0
	mov r1, #0xe
	bl FillWindowPixelBuffer
	ldr r1, [r5, #0x18]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x38
	sub r3, r1, r0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EB3B0 ; =0x0003010E
	lsr r7, r3, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r7, r3, r7
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #4
	asr r3, r7, #1
	bl AddTextPrinterParameterizedWithColor
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #2
	blt _021EB366
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl BgCommitTilemapBufferToVram
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EB3B0: .word 0x0003010E
	thumb_func_end ov102_021EB2EC

	thumb_func_start ov102_021EB3B4
ov102_021EB3B4: ; 0x021EB3B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov102_021EA268
	add r6, r0, #0
	cmp r4, #0
	bne _021EB3F6
	mov r1, #0x14
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	mov r1, #0
	add r2, r1, #0
	mov r3, #0x18
	bl FillBgTilemapRect
	add r5, #0x44
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r6, #0
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021EB3F6:
	ldr r2, [r5, #0x5c]
	mov r1, #8
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r2, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r3, #7
	str r3, [sp, #0x10]
	ldrh r3, [r2]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x14]
	ldrh r2, [r2, #2]
	mov r3, #0x14
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x18]
	mov r2, #0x18
	bl CopyToBgTilemapRect
	add r0, r5, #0
	add r0, #0x44
	mov r1, #0xe
	bl FillWindowPixelBuffer
	ldr r1, [r5, #0x20]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x30
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	lsr r4, r3, #0x1f
	add r4, r3, r4
	ldr r0, _021EB468 ; =0x0003010E
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x20]
	add r0, #0x44
	mov r1, #4
	asr r3, r4, #1
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EB468: .word 0x0003010E
	thumb_func_end ov102_021EB3B4

	thumb_func_start ov102_021EB46C
ov102_021EB46C: ; 0x021EB46C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r6, _021EB4CC ; =ov102_021EC808
	str r0, [sp]
	str r1, [sp, #4]
	mov r7, #0
	add r4, #0x24
	add r5, r0, #0
_021EB47E:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r6, #0
	bl AddWindow
	ldr r0, [sp]
	add r1, r7, #0
	ldr r0, [r0, #0x14]
	bl NewString_ReadMsgData
	str r0, [r5, #0x18]
	add r7, r7, #1
	add r6, #8
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #3
	blo _021EB47E
	ldr r0, [sp]
	add r0, #0x24
	bl PutWindowTilemap
	ldr r0, [sp]
	mov r1, #0xe
	add r0, #0x24
	bl FillWindowPixelBuffer
	ldr r0, [sp]
	add r0, #0x34
	bl PutWindowTilemap
	ldr r0, [sp]
	mov r1, #0xe
	add r0, #0x34
	str r0, [sp]
	bl FillWindowPixelBuffer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB4CC: .word ov102_021EC808
	thumb_func_end ov102_021EB46C

