	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022306C0
	.public ov40_02241A54
	.public ov40_02241AB0
	.public ov40_02241AFC

	.text

	thumb_func_start ov40_02241A54
ov40_02241A54: ; 0x02241A54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02241AA8 ; =0x000006D4
	add r7, r1, #0
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	add r1, r7, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AAC ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241AA8: .word 0x000006D4
_02241AAC: .word 0x000F0D00
	thumb_func_end ov40_02241A54

	thumb_func_start ov40_02241AB0
ov40_02241AB0: ; 0x02241AB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02241AF8 ; =0x000006D4
	add r0, r4, r6
	bl InitWindow
	mov r0, #3
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r2, #6
	mov r3, #8
	bl AddWindowParameterized
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	add r1, #0x79
	bl ov40_02241A54
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02241AF8: .word 0x000006D4
	thumb_func_end ov40_02241AB0

	thumb_func_start ov40_02241AFC
ov40_02241AFC: ; 0x02241AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02241BD4 ; =0x000006D4
	add r0, r4, r6
	bl InitWindow
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #4
	bl AddWindowParameterized
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0x82
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r0, r4, r6
	add r1, r7, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241BD8 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add r6, #0x10
	add r0, r4, r6
	bl InitWindow
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #0x12
	bl AddWindowParameterized
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0x83
	bl NewString_ReadMsgData
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241BD8 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02241BD4: .word 0x000006D4
_02241BD8: .word 0x000F0D00
	thumb_func_end ov40_02241AFC

