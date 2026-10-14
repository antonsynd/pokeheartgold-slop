	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022371E4
	.extern ov40_022306C0
	.extern ov40_022371D4

	.text

	.text
	thumb_func_start ov40_022371E4
ov40_022371E4: ; 0x022371E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r7, #0x6d
	lsl r7, r7, #2
	add r0, r4, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	lsl r0, r5, #1
	add r0, r4, r0
	ldrh r6, [r0, #0x2c]
	cmp r6, #0
	bne _02237214
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_02237214:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r2, r7, #0
	sub r2, #0x5c
	add r5, r0, #0
	ldr r0, [r4, r2]
	add r2, #0x58
	ldr r2, [r4, r2]
	mov r1, #1
	lsl r1, r2
	bl ov40_022371D4
	cmp r0, #1
	bne _02237238
	add r6, r7, #0
	add r6, #0x3a
_02237238:
	add r0, r6, #0
	mov r1, #0x6d
	add r2, sp, #0x10
	bl GetSpeciesNameIntoArray
	add r0, r5, #0
	add r1, sp, #0x10
	bl CopyU16ArrayToString
	add r0, r4, r7
	add r1, r5, #0
	bl ov40_022306C0
	add r3, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02237280 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237280: .word 0x000F0D00
	thumb_func_end ov40_022371E4

