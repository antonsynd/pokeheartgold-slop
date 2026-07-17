	.include "asm/macros.inc"
	.include "overlay_41_0224BE34.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_0224BE34
ov41_0224BE34: ; 0x0224BE34
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ClearWindowTilemapAndCopyToVram
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl RemoveWindow
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl WindowArray_Delete
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224BE34

	thumb_func_start ov41_0224BE5C
ov41_0224BE5C: ; 0x0224BE5C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl ov41_0224BE80
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl CopyWindowToVram
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224BE5C

	thumb_func_start ov41_0224BE80
ov41_0224BE80: ; 0x0224BE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xd7
	mov r3, #0xd
	bl NewMsgDataFromNarc
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0224BE9C
	bl GF_AssertFail
_0224BE9C:
	mov r0, #0xd
	bl MessageFormat_New
	add r6, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x14
	bl Sprite_SetMatrix
	mov r0, #0xc
	mov r1, #0xd
	bl String_New
	add r7, r0, #0
	ldr r0, [r5]
	add r1, r7, #0
	bl sub_0202BE60
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r4, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r1, #0
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r4, r3, #1
	mov r3, #0x80
	ldr r0, _0224BF90 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	sub r3, r3, r4
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	ldr r0, [r5]
	bl sub_0202BE98
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl BufferECWord
	mov r0, #0xc8
	mov r1, #0xd
	bl String_New
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x2d
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r3, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r1, #0
	ldr r0, _0224BF90 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r5
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
	add r0, r6, #0
	bl MessageFormat_Delete
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BF90: .word 0x00010200
	thumb_func_end ov41_0224BE80

