	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225DE84

	.text

	.text
	thumb_func_start ov31_0225DE84
ov31_0225DE84: ; 0x0225DE84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x74
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, [r5, #0x14]
	ldr r0, _0225DF90 ; =0x00000283
	ldrb r0, [r1, r0]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225DEB0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x21
	bl NewString_ReadMsgData
	b _0225DEBC
_0225DEB0:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1e
	bl NewString_ReadMsgData
_0225DEBC:
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225DF94 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x74
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #0x10
	mov r1, #0xb
	bl String_New
	add r4, r0, #0
	ldr r1, [r5, #0x14]
	ldr r0, _0225DF90 ; =0x00000283
	ldrb r0, [r1, r0]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225DF12
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x20
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl PokeathlonSave_GetAthletePoints
	b _0225DF2A
_0225DF12:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1f
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl PlayerProfile_GetMoney
_0225DF2A:
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #6
	bl BufferIntegerAsString
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r6, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225DF94 ; =0x000F0E00
	mov r3, #0x48
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x74
	add r2, r4, #0
	sub r3, r3, r6
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add r5, #0x74
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225DF90: .word 0x00000283
_0225DF94: .word 0x000F0E00
	thumb_func_end ov31_0225DE84

