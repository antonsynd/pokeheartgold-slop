	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02242E4C
	.extern ov40_0222DAB0

	.text

	.text
	thumb_func_start ov40_02242E4C
ov40_02242E4C: ; 0x02242E4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	mov r0, #0x6d
	add r5, r1, #0
	bl ov40_0222DAB0
	add r6, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r7, [r4, r0]
	add r0, r0, #4
	ldr r4, [r4, r0]
	mov r0, #0xff
	mov r1, #0x6d
	str r4, [sp, #0x14]
	bl String_New
	str r0, [sp, #0x18]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x1c]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x20]
	ldr r2, _02242F9C ; =0x000186A0
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #0
	bl _ll_udiv
	str r0, [sp, #0x24]
	add r4, r1, #0
	ldr r0, [r5, #0x48]
	ldr r1, _02242FA0 ; =0x00000127
	bl NewString_ReadMsgData
	str r0, [sp, #0x28]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x14]
	ldr r2, _02242F9C ; =0x000186A0
	add r0, r7, #0
	mov r3, #0
	bl _ull_mod
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r2, #5
	mov r3, #2
	bl String16_FormatInteger
	ldr r0, [sp, #0x24]
	ldr r2, _02242F9C ; =0x000186A0
	add r1, r4, #0
	mov r3, #0
	bl _ull_mod
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #5
	mov r3, #2
	bl String16_FormatInteger
	ldr r0, [sp, #0x24]
	ldr r2, _02242F9C ; =0x000186A0
	add r1, r4, #0
	mov r3, #0
	bl _ll_udiv
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [sp, #0x20]
	add r3, r2, #0
	bl String16_FormatInteger
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	mov r3, #0
	str r1, [sp, #4]
	bl BufferString
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	mov r3, #0
	bl BufferString
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r3, r1, #0
	bl BufferString
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	bl StringExpandPlaceholders
	ldr r0, _02242FA4 ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02242FA8 ; =0x000F0D00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, _02242FA4 ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _02242FA4 ; =0x000008A4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x18]
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl String_Delete
	ldr r0, [sp, #0x28]
	bl String_Delete
	ldr r0, [sp, #0x2c]
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_ResetBuffers
	add r0, r6, #0
	bl MessageFormat_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242F9C: .word 0x000186A0
_02242FA0: .word 0x00000127
_02242FA4: .word 0x000008A4
_02242FA8: .word 0x000F0D00
	thumb_func_end ov40_02242E4C

