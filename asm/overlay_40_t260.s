	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02237144
	.extern ov40_022306C0

	.text

	.text
	thumb_func_start ov40_02237144
ov40_02237144: ; 0x02237144
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	mov r6, #0x71
	mov r0, #0xff
	mov r1, #0x6d
	lsl r6, r6, #2
	bl String_New
	add r1, r5, #4
	add r4, r0, #0
	bl CopyU16ArrayToString
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, r6
	add r1, r4, #0
	bl ov40_022306C0
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223719C ; =0x000F0100
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223719C: .word 0x000F0100
	thumb_func_end ov40_02237144

