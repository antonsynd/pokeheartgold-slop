	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225D7E0
	.extern ov28_0225EB52
	.extern ov28_0225EB7C

	.text

	.text
	thumb_func_start ov28_0225D7E0
ov28_0225D7E0: ; 0x0225D7E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #4
	mov r1, #8
	bl FontID_Alloc
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r6, _0225D86C ; =ov28_0225EB52
	add r4, r7, r0
	add r5, r7, #0
_0225D7FC:
	ldr r0, [r7, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	bl AddWindow
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D870 ; =0x000F0100
	mov r2, #0x1a
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [sp, #0x10]
	add r6, #8
	add r0, r0, #1
	add r4, #0x10
	add r5, r5, #4
	str r0, [sp, #0x10]
	cmp r0, #5
	blo _0225D7FC
	mov r0, #0x6d
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	ldr r0, _0225D874 ; =ov28_0225EB7C
	ldrb r0, [r0, r1]
	lsl r0, r0, #4
	add r0, r2, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225D86C: .word ov28_0225EB52
_0225D870: .word 0x000F0100
_0225D874: .word ov28_0225EB7C
	thumb_func_end ov28_0225D7E0

