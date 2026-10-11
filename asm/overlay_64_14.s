	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public ov64_021E6170
	.extern ov64_021E7040

	.text

	.text
	thumb_func_start ov64_021E6170
ov64_021E6170: ; 0x021E6170
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x3b
	bl FontID_Alloc
	add r5, r6, #0
	ldr r4, _021E6204 ; =ov64_021E7040
	mov r7, #0
	add r5, #8
_021E6186:
	ldr r0, [r6, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #0x11
	blo _021E6186
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r2, #0x46
	lsl r2, r2, #2
	ldr r0, [r6, r2]
	add r2, #0x10
	ldr r2, [r6, r2]
	mov r1, #6
	bl ReadMsgDataIntoString
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	add r3, r0, #0
	mov r1, #0
	lsr r4, r3, #1
	mov r3, #0x18
	str r1, [sp]
	mov r2, #0xff
	ldr r0, _021E6208 ; =0x000F0100
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0
	str r1, [sp, #0xc]
	add r2, #0x29
	add r0, #9
	ldr r2, [r6, r2]
	add r0, r6, r0
	mov r1, #4
	sub r3, r3, r4
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r6, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r6, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6204: .word ov64_021E7040
_021E6208: .word 0x000F0100
	thumb_func_end ov64_021E6170

