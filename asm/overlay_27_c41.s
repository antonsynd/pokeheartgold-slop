	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225BED8

	.text

	.text
	thumb_func_start ov27_0225BED8
ov27_0225BED8: ; 0x0225BED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r5, [sp, #0x44]
	add r4, r0, #0
	str r3, [sp]
	add r0, sp, #0x28
	add r7, r1, #0
	ldrb r1, [r0, #0x10]
	add r6, r2, #0
	mov r2, #5
	str r1, [sp, #4]
	ldrb r0, [r0, #0x14]
	add r1, sp, #0x14
	add r3, r6, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl AddWindowParameterized
	add r0, sp, #0x14
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _0225BF7C ; =0x000004AC
	add r2, r7, #0
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0225BF48
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r1, sp, #0x28
	ldrb r1, [r1, #0x10]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r5, r0, #0x10
_0225BF48:
	add r1, sp, #0x28
	mov r0, #0x20
	ldrsh r0, [r1, r0]
	mov r1, #0
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225BF80 ; =0x000E0200
	add r3, r5, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, sp, #0x14
	bl CopyWindowToVram
	add r0, sp, #0x14
	bl RemoveWindow
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BF7C: .word 0x000004AC
_0225BF80: .word 0x000E0200
	thumb_func_end ov27_0225BED8

