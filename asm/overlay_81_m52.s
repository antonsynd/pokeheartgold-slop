	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022409B0

	.text

	.text
	thumb_func_start ov81_022409B0
ov81_022409B0: ; 0x022409B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r1, sp, #0x28
	ldrb r1, [r1, #0x1c]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x4c]
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x64
	bl String_New
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	mov r1, #0x1c
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl BufferBoxMonSpeciesName
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	bl StringExpandPlaceholders
	add r0, sp, #0x48
	ldrb r6, [r0]
	ldr r0, [sp, #0x38]
	add r2, sp, #0x28
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x14]
	ldrb r1, [r2, #0x1c]
	ldrb r2, [r2, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl String_Delete
	add r0, r7, #0
	mov r1, #0xb0
	mov r2, #0
	bl GetMonData
	cmp r0, #1
	bne _02240AC8
	add r0, r7, #0
	bl GetMonGender
	add r7, r0, #0
	add r0, r4, #0
	bl GetWindowWidth
	sub r0, r0, #1
	lsl r0, r0, #3
	sub r0, r0, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r7, #0
	bne _02240A96
	ldr r0, [r5, #0x1c]
	mov r1, #0x1a
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240AD4 ; =0x00070800
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	b _02240AC8
_02240A96:
	cmp r7, #1
	bne _02240AC8
	ldr r0, [r5, #0x1c]
	mov r1, #0x1b
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	add r2, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
_02240AC8:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240AD4: .word 0x00070800
	thumb_func_end ov81_022409B0

