	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223AD84
	.public ov59_0223AE20
	.public ov59_0223AE88
	.public ov59_0223AEB0
	.extern ov59_0223BA64
	.extern ov59_0223BADC
	.extern ov59_0223BC88
	.extern ov59_0223C954
	.extern ov59_0223C99C

	.text

	.text
	thumb_func_start ov59_0223AD84
ov59_0223AD84: ; 0x0223AD84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r1, #2
	bl ov59_0223AEB0
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	mov r1, #0
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _0223AE18 ; =0x00010200
	add r2, #0xe5
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, r2
	ldr r2, [r5, #0x68]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r4, _0223AE1C ; =ov59_0223C99C
	mov r6, #0
	add r7, r5, r0
_0223ADC8:
	ldr r1, [r4]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	add r1, r1, #5
	bl ReadMsgDataIntoString
	add r0, r6, #5
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AE18 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x68]
	add r0, r7, r0
	mov r3, #4
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x10]
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _0223ADC8
	add r0, r5, #0
	add r5, #0x4a
	ldrb r1, [r5]
	bl ov59_0223BC88
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223AE18: .word 0x00010200
_0223AE1C: .word ov59_0223C99C
	thumb_func_end ov59_0223AD84

	thumb_func_start ov59_0223AE20
ov59_0223AE20: ; 0x0223AE20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl SaveArray_Party_Get
	str r0, [r5, #0x10]
	bl Party_GetCount
	mov r6, #0
	add r4, r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0223AE7E
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x7c
	str r0, [sp, #8]
_0223AE44:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #0x4c
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	bne _0223AE76
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0x34
	mul r1, r0
	ldr r0, [sp, #8]
	lsl r3, r4, #0x18
	add r0, r0, r1
	ldr r1, [r5, #0x10]
	add r2, r7, #0
	lsr r3, r3, #0x18
	add r6, r6, #1
	bl ov59_0223BA64
_0223AE76:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0223AE44
_0223AE7E:
	add r5, #0x49
	strb r6, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov59_0223AE20

	thumb_func_start ov59_0223AE88
ov59_0223AE88: ; 0x0223AE88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x49
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _0223AEAE
	add r5, r6, #0
	add r5, #0x7c
_0223AE9A:
	add r0, r5, #0
	bl ov59_0223BADC
	add r0, r6, #0
	add r0, #0x49
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #0x34
	cmp r4, r0
	blt _0223AE9A
_0223AEAE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_0223AE88

	thumb_func_start ov59_0223AEB0
ov59_0223AEB0: ; 0x0223AEB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r1, #3
	bhi _0223AF74
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AEC6: ; jump table
	.short _0223AF5C - _0223AEC6 - 2 ; case 0
	.short _0223AF5C - _0223AEC6 - 2 ; case 1
	.short _0223AEF4 - _0223AEC6 - 2 ; case 2
	.short _0223AECE - _0223AEC6 - 2 ; case 3
_0223AECE:
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223AEF4:
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r6, _0223AF78 ; =ov59_0223C954
	mov r7, #0
	mov r5, #4
	str r4, [sp, #0x10]
_0223AF08:
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x68]
	add r1, r7, #1
	bl ReadMsgDataIntoString
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r6]
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r2, [r4, #0x68]
	add r0, r4, r0
	mov r3, #0
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x26
	ldr r1, [sp, #0x10]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #4
	add r6, r6, #4
	add r5, #0x18
	str r0, [sp, #0x10]
	cmp r7, #2
	blt _0223AF08
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223AF5C:
	mov r0, #0x26
	lsl r0, r0, #4
	add r5, r4, r0
	lsl r4, r1, #2
	lsl r1, r1, #1
	ldr r0, [r5, r4]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, r4]
	bl Sprite_ResetAnimCtrlState
_0223AF74:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223AF78: .word ov59_0223C954
	thumb_func_end ov59_0223AEB0

