	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223EF1C
	.public ov82_0223EF7C

	.text

	.text
	thumb_func_start ov82_0223EF1C
ov82_0223EF1C: ; 0x0223EF1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223EF1C

	thumb_func_start ov82_0223EF7C
ov82_0223EF7C: ; 0x0223EF7C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0x4c
	add r2, r4, #0
	bl ov82_0223EF1C
	add r5, #0x4c
	add r4, r0, #0
	add r0, r5, #0
	bl CopyWindowToVram
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov82_0223EF7C

