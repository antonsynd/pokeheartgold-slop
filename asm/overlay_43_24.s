	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A9F4

	.text

	thumb_func_start ov43_0222A9F4
ov43_0222A9F4: ; 0x0222A9F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r6, r2, #0
	bl TextPrinterCheckActive
	cmp r0, #1
	bne _0222AA22
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0222AA22:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x54]
	ldr r2, [r5, #0x78]
	add r1, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x74]
	ldr r2, [r5, #0x78]
	bl StringExpandPlaceholders
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0222AA6C ; =0x000F0200
	mov r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	add r5, #0x84
	str r0, [r5]
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222AA6C: .word 0x000F0200
	thumb_func_end ov43_0222A9F4

