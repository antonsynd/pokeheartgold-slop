	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238C7C
	.public ov59_02238CFC
	.extern ov59_02239D08
	.extern ov59_02239EA8

	.text

	.text
	thumb_func_start ov59_02238C7C
ov59_02238C7C: ; 0x02238C7C
	push {r4, r5, lr}
	sub sp, #0xc
	mov r5, #0x5a
	add r4, r0, #0
	lsl r5, r5, #2
	add r0, r4, r5
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl ov59_02239EA8
	add r1, r0, #0
	cmp r1, #8
	bne _02238CA4
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
_02238CA4:
	cmp r1, #6
	bhi _02238CC4
	add r0, r4, r1
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02238CBA
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
_02238CBA:
	add r0, r4, #0
	add r1, #0xd
	bl ov59_02239D08
	b _02238CDC
_02238CC4:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _02238CD4
	add r0, r4, #0
	mov r1, #0x15
	bl ov59_02239D08
	b _02238CDC
_02238CD4:
	add r0, r4, #0
	mov r1, #0x14
	bl ov59_02239D08
_02238CDC:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r4, #0x68]
	add r0, r4, r5
	add r3, r1, #0
	bl AddTextPrinterParameterized
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov59_02238C7C

	thumb_func_start ov59_02238CFC
ov59_02238CFC: ; 0x02238CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0x4a
	add r5, r0, #0
	lsl r6, r6, #2
	add r7, r1, #0
	add r0, r5, r6
	mov r1, #0xf
	add r4, r2, #0
	bl FillWindowPixelBuffer
	mov r1, #1
	add r0, r5, r6
	add r2, r1, #0
	mov r3, #0xd
	bl DrawFrameAndWindow2
	add r0, r5, #0
	add r1, r7, #0
	bl ov59_02239D08
	cmp r4, #0xff
	beq _02238D4E
	cmp r4, #0
	beq _02238D4E
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x68]
	add r0, r5, r6
	mov r1, #1
	bl AddTextPrinterParameterized
	add r1, r5, #0
	add r1, #0x47
	strb r0, [r1]
	b _02238D68
_02238D4E:
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x68]
	add r0, r5, r6
	mov r1, #1
	bl AddTextPrinterParameterized
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x47
	strb r1, [r0]
_02238D68:
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov59_02238CFC

