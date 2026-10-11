	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225A790
	.extern ov48_0225B038
	.extern ov48_0225B0C4
	.extern ov48_0225B0E0
	.extern ov48_0225B108
	.extern ov48_0225B1D8

	.text

	.text
	thumb_func_start ov48_0225A790
ov48_0225A790: ; 0x0225A790
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #3
	blo _0225A7A4
	bl GF_AssertFail
_0225A7A4:
	mov r0, #0x5a
	lsl r0, r0, #2
	add r5, r5, r0
	lsl r4, r4, #4
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r6]
	bl ov48_0225B038
	str r0, [sp, #0x10]
	add r0, r7, #0
	mov r1, #2
	bl ov48_0225B0C4
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, _0225A82C ; =ov48_0225B1D8
	ldr r0, [r0, r1]
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, r4
	bl AddTextPrinterParameterizedWithColor
	ldr r1, [r6, #4]
	add r0, r7, #0
	bl ov48_0225B0E0
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225A830 ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, r4
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r1, [r6, #4]
	ldr r2, [r6, #8]
	add r0, r7, #0
	bl ov48_0225B108
	add r2, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225A830 ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	add r0, r5, r4
	mov r1, #1
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A82C: .word ov48_0225B1D8
_0225A830: .word 0x00010200
	thumb_func_end ov48_0225A790

