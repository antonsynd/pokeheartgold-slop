	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EC11C
	.public ov102_021EC13C
	.extern ov102_021E8FFC

	.text

	.text
	thumb_func_start ov102_021EC11C
ov102_021EC11C: ; 0x021EC11C
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0x30
	add r1, #0x8c
	str r2, [r1]
	add r1, r0, #0
	mov r3, #0
	add r1, #0x90
	str r3, [r1]
	ldr r0, [r0, #0xc]
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EC11C

	thumb_func_start ov102_021EC13C
ov102_021EC13C: ; 0x021EC13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x3c]
	add r7, r1, #0
	bl ov102_021E8FFC
	cmp r4, #0xf0
	bhi _021EC178
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EC208 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r3, #1
	add r4, r7, #0
	and r4, r3
	mov r3, #0x70
	ldr r2, [r5, #0x3c]
	add r0, #0x10
	mul r3, r4
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021EC178:
	mov r0, #1
	lsl r0, r0, #8
	sub r6, r0, r4
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EC208 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x3c]
	add r0, #0x20
	bl AddTextPrinterParameterizedWithColor
	mov r2, #0
	mov r0, #1
	add r1, r7, #0
	and r1, r0
	add r7, r1, #0
	mov r0, #0x70
	mul r7, r0
	mov r0, #0x60
	str r0, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x10
	add r3, r2, #0
	bl BlitBitmapRectToWindow
	mov r1, #0x60
	lsl r2, r7, #0x10
	lsl r3, r6, #0x10
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	lsr r2, r2, #0x10
	str r2, [sp, #8]
	mov r2, #0
	sub r0, r0, r6
	str r2, [sp, #0xc]
	lsl r0, r0, #0x10
	str r1, [sp, #0x10]
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x10
	lsr r3, r3, #0x10
	bl BlitBitmapRectToWindow
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC208: .word 0x00010200
	thumb_func_end ov102_021EC13C

