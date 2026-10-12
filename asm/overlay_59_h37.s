	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238D90
	.extern ov59_02239E0C

	.text

	.text
	thumb_func_start ov59_02238D90
ov59_02238D90: ; 0x02238D90
	push {r4, r5, lr}
	sub sp, #0xc
	mov r4, #0x4a
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r1, #1
	add r0, r5, r4
	add r2, r1, #0
	mov r3, #0xd
	bl DrawFrameAndWindow2
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x2a
	mov r2, #0
	bl ov59_02239E0C
	add r1, r0, #0
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x68]
	add r0, r5, r4
	mov r1, #1
	bl AddTextPrinterParameterized
	ldrh r0, [r5, #0x2a]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #5
	bne _02238DEC
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
_02238DEC:
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #1
	bls _02238E22
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x2c
	mov r2, #1
	bl ov59_02239E0C
	add r1, r0, #0
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	bl ReadMsgDataIntoString
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	ldr r2, [r5, #0x68]
	add r0, r5, r4
	mov r1, #1
	bl AddTextPrinterParameterized
_02238E22:
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #2
	bls _02238E5A
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x2e
	mov r2, #2
	bl ov59_02239E0C
	add r1, r0, #0
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	bl ReadMsgDataIntoString
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	ldr r2, [r5, #0x68]
	add r0, r5, r4
	mov r1, #1
	bl AddTextPrinterParameterized
	b _02238E8E
_02238E5A:
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02238E8E
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	mov r1, #0x7a
	bl ReadMsgDataIntoString
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	mov r3, #0
	mov r1, #1
	sub r0, r0, #1
	lsl r0, r0, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x68]
	add r0, r5, r4
	bl AddTextPrinterParameterized
_02238E8E:
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov59_02238D90

