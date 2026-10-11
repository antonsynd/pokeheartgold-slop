	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022398C4
	.public ov57_022399F8
	.public ov57_02239A8C
	.public ov57_02239B0C
	.extern ov57_02239868

	.text

	.text
	thumb_func_start ov57_022398C4
ov57_022398C4: ; 0x022398C4
	push {r3, r4, lr}
	sub sp, #0x14
	mov r1, #2
	add r4, r0, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xa6
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0x96
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov57_02239868
	mov r1, #2
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xae
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0x9e
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov57_02239868
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xb6
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xa6
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov57_02239868
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xbe
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xae
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov57_02239868
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xc6
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xb6
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov57_02239868
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xce
	str r1, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xe4
	add r1, #0xbe
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov57_02239868
	mov r2, #0xb
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xd6
	str r1, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	add r0, #0xe4
	add r1, #0xc6
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #3
	bl ov57_02239868
	mov r2, #0xb
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r1, #0xde
	str r1, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	add r0, #0xe4
	add r1, #0xce
	ldr r0, [r0]
	add r1, r4, r1
	mov r2, #6
	mov r3, #0xa
	bl ov57_02239868
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov57_022398C4

	thumb_func_start ov57_022399F8
ov57_022399F8: ; 0x022399F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r7, #0
	add r5, #0xec
	mov r6, #5
	add r5, #0x50
_02239A06:
	ldr r0, _02239A84 ; =0x0000044B
	add r1, r7, r6
	ldrb r0, [r1, r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02239A22
	add r0, r5, #0
	mov r1, #0xee
	bl FillWindowPixelBuffer
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	b _02239A76
_02239A22:
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x64
	mov r1, #0x34
	bl String_New
	ldr r1, [sp, #0x10]
	add r4, r0, #0
	ldr r0, [r7, #0x64]
	sub r1, r1, #1
	bl SealCaseInventory_GetSealQuantity
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r2, #3
	mov r3, #1
	bl String16_FormatInteger
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239A88 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #7
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
_02239A76:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #0xd
	blt _02239A06
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02239A84: .word 0x0000044B
_02239A88: .word 0x00010200
	thumb_func_end ov57_022399F8

	thumb_func_start ov57_02239A8C
ov57_02239A8C: ; 0x02239A8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r1, #5
	lsl r4, r0, #4
	mov r0, #0x45
	add r1, r6, r1
	lsl r0, r0, #4
	add r5, r6, #0
	ldrb r7, [r1, r0]
	add r5, #0xec
	cmp r7, #0
	bne _02239AB8
	add r0, r5, r4
	mov r1, #0xee
	bl FillWindowPixelBuffer
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02239AB8:
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x64
	mov r1, #0x34
	bl String_New
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x64]
	sub r1, r7, #1
	bl SealCaseInventory_GetSealQuantity
	add r1, r0, #0
	mov r3, #1
	ldr r0, [sp, #0x10]
	mov r2, #3
	str r3, [sp]
	bl String16_FormatInteger
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239B08 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	add r0, r5, r4
	mov r3, #7
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x10]
	bl String_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02239B08: .word 0x00010200
	thumb_func_end ov57_02239A8C

	thumb_func_start ov57_02239B0C
ov57_02239B0C: ; 0x02239B0C
	push {r3, r4, r5, lr}
	add r0, #0xec
	add r5, r0, #0
	mov r4, #5
	add r5, #0x50
_02239B16:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xd
	blt _02239B16
	pop {r3, r4, r5, pc}
	thumb_func_end ov57_02239B0C

