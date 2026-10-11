	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238D90
	.public ov59_02238E98
	.public ov59_02239E0C
	.public ov59_0223C630
	.public ov59_0223C668
	.public ov59_0223C66A
	.public ov59_0223C66B

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

	thumb_func_start ov59_02238E98
ov59_02238E98: ; 0x02238E98
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _02238F14 ; =ov59_0223C630
	add r2, sp, #0xc
	ldrh r3, [r0, #0xc]
	ldr r5, _02238F18 ; =ov59_0223C66A
	add r1, sp, #0xc
	strh r3, [r2]
	ldrh r3, [r0, #0xe]
	strh r3, [r2, #2]
	ldrh r3, [r0, #0x10]
	strh r3, [r2, #4]
	ldrh r3, [r0, #0x12]
	strh r3, [r2, #6]
	ldrh r3, [r0, #0x14]
	ldrh r0, [r0, #0x16]
	strh r3, [r2, #8]
	strh r0, [r2, #0xa]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x54]
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r3, r0, #3
	ldr r0, _02238F1C ; =ov59_0223C668
	ldrh r0, [r0, r3]
	strb r0, [r2, #0x14]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r3, r0, #3
	ldr r0, _02238F20 ; =ov59_0223C66B
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x58]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl TouchscreenListMenu_Create
	mov r1, #0xa6
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_02238F14: .word ov59_0223C630
_02238F18: .word ov59_0223C66A
_02238F1C: .word ov59_0223C668
_02238F20: .word ov59_0223C66B
	thumb_func_end ov59_02238E98

