	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259D00
	.public ov48_0225B0C4

	.text

	thumb_func_start ov48_02259D00
ov48_02259D00: ; 0x02259D00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x2c
	add r5, r0, #0
	add r7, r3, #0
	bl memset
	mov r0, #0x15
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r2, #1
	add r1, r5, #0
	str r2, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, #0x1c
	mov r3, #0x19
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r6, #0
	mov r1, #1
	bl ov48_0225B0C4
	add r4, r0, #0
	mov r0, #2
	add r1, r7, #0
	bl FontID_Alloc
	mov r0, #2
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x30
	bl FontID_String_GetCenterAlignmentX
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02259D90 ; =0x0002010F
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #0x1c
	mov r1, #2
	bl AddTextPrinterParameterizedWithColor
	mov r0, #2
	bl FontID_Release
	add r5, #0x1c
	mov r1, #0
	add r0, r5, #0
	mov r2, #0x1f
	add r3, r1, #0
	bl DrawFrameAndWindow1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02259D90: .word 0x0002010F
	thumb_func_end ov48_02259D00

