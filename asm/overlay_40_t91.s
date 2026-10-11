	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222F488
	.public ov40_0222F5EC
	.public ov40_0222F6D0
	.extern ov40_0222F878
	.extern ov40_0222F8C0
	.extern ov40_02230DCC

	.text

	.text
	thumb_func_start ov40_0222F488
ov40_0222F488: ; 0x0222F488
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bne _0222F49E
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222F49E:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0222F4AE
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222F4AE:
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #0x28]
	add r0, #0x18
	str r0, [sp, #0x28]
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x3c]
	cmp r1, r0
	blt _0222F4E8
	ldr r1, [sp, #0x10]
	ldr r2, [r1, #0x38]
	sub r1, r2, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	ldr r1, [r1, #4]
	sub r0, r1, r0
	cmp r2, r0
	blt _0222F4E8
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
_0222F4E8:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _0222F5D2
	ldr r0, [sp, #0x1c]
	mov r4, #4
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x18]
_0222F500:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x63
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	add r1, r2, r1
	add r1, r1, #1
	mov r2, #2
	mov r3, #1
	bl String16_FormatInteger
	ldr r2, [sp, #0x18]
	ldr r1, _0222F5E4 ; =0x00002608
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl CopyU16ArrayToString
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl ov40_02230DCC
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov ip, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5E8 ; =0x000F0D00
	mov r3, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r6, ip
	ldr r0, [sp, #0x28]
	mov r1, #0
	add r2, r7, #0
	sub r3, r3, r6
	bl AddTextPrinterParameterizedWithColor
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5E8 ; =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	mov r1, #0
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5E8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	mov r3, #0x16
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x24]
	bl String_Delete
	ldr r0, [sp, #0x18]
	add r4, #0x18
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _0222F500
_0222F5D2:
	ldr r0, [sp, #0x28]
	bl CopyWindowToVram
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0xc]
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222F5E4: .word 0x00002608
_0222F5E8: .word 0x000F0D00
	thumb_func_end ov40_0222F488

	thumb_func_start ov40_0222F5EC
ov40_0222F5EC: ; 0x0222F5EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xff
	cmp r1, #0
	bge _0222F60C
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ble _0222F624
	sub r0, r0, #1
	str r0, [r5, #0x38]
	ldr r0, _0222F6CC ; =0x00000572
	add r6, r4, #0
	bl PlaySE
	b _0222F624
_0222F60C:
	ble _0222F624
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x38]
	sub r0, r0, #1
	cmp r1, r0
	bge _0222F624
	add r0, r1, #1
	str r0, [r5, #0x38]
	ldr r0, _0222F6CC ; =0x00000572
	mov r6, #1
	bl PlaySE
_0222F624:
	cmp r6, #0
	beq _0222F62E
	cmp r6, #1
	beq _0222F66A
	b _0222F68E
_0222F62E:
	ldr r2, [r5, #0x44]
	ldr r1, [r5, #0x38]
	cmp r1, r2
	bge _0222F63C
	lsl r0, r1, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F63C:
	ldr r0, [r5, #4]
	sub r0, r0, r2
	cmp r1, r0
	blt _0222F658
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r4, r2, #0x10
	cmp r1, r0
	blt _0222F68E
	sub r0, r1, r0
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F658:
	lsl r0, r2, #0x10
	asr r4, r0, #0x10
	cmp r1, r2
	bgt _0222F68E
	sub r0, r1, r2
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F66A:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	cmp r0, r2
	bgt _0222F678
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0222F68E
_0222F678:
	lsl r1, r2, #0x10
	asr r4, r1, #0x10
	ldr r1, [r5, #4]
	sub r1, r1, r2
	cmp r0, r1
	blt _0222F68E
	sub r1, r1, #1
	sub r0, r0, r1
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0222F68E:
	cmp r4, #0
	bge _0222F696
	bl GF_AssertFail
_0222F696:
	cmp r6, #0xff
	beq _0222F69C
	str r4, [r5, #0x3c]
_0222F69C:
	ldr r2, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	mov r3, #0
	cmp r0, r2
	blt _0222F6C0
	ldr r1, [r5, #0x38]
	sub r0, r1, r2
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	ldr r0, [r5, #4]
	add r2, r2, #1
	sub r2, r0, r2
	cmp r1, r2
	blt _0222F6C0
	ldr r1, [r5, #0x10]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
_0222F6C0:
	add r0, r5, #0
	strh r3, [r5, #8]
	bl ov40_0222F8C0
	pop {r4, r5, r6, pc}
	nop
_0222F6CC: .word 0x00000572
	thumb_func_end ov40_0222F5EC

	thumb_func_start ov40_0222F6D0
ov40_0222F6D0: ; 0x0222F6D0
	push {r4, lr}
	add r4, r0, #0
	mov r2, #8
	ldrsh r0, [r4, r2]
	add r1, r0, r1
	strh r1, [r4, #8]
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0222F6E6
	mov r1, #0
	strh r1, [r4, #8]
_0222F6E6:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r2, r1
	bne _0222F6F2
	mov r1, #0
	strh r1, [r4, #8]
_0222F6F2:
	mov r1, #8
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #4]
	add r1, r1, r3
	cmp r1, r2
	ble _0222F704
	sub r1, r2, r3
	strh r1, [r4, #8]
_0222F704:
	mov r1, #8
	ldrsh r1, [r4, r1]
	cmp r0, r1
	beq _0222F712
	ldr r0, _0222F71C ; =0x00000572
	bl PlaySE
_0222F712:
	add r0, r4, #0
	bl ov40_0222F878
	pop {r4, pc}
	nop
_0222F71C: .word 0x00000572
	thumb_func_end ov40_0222F6D0

