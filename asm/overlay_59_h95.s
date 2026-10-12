	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223AD84
	.extern ov59_0223AEB0
	.extern ov59_0223BC88
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

