	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02237030

	.text

	.text
	thumb_func_start ov40_02237030
ov40_02237030: ; 0x02237030
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r5, [r0, r2]
	mov r6, #0x75
	ldr r0, [r0, #0x48]
	lsl r6, r6, #2
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, r6
	mov r1, #0xcc
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02237078 ; =0x000F0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02237078: .word 0x000F0D00
	thumb_func_end ov40_02237030

