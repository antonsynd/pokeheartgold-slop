	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE784
	.public ov103_021EE7DC
	.public ov103_021EE824

	.text

	thumb_func_start ov103_021EE7DC
ov103_021EE7DC: ; 0x021EE7DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r6, #0x72
	ldr r4, [r5, #0xc]
	lsl r6, r6, #2
	add r0, r4, r6
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r5]
	bl Options_GetTextFrameDelay
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _021EE820 ; =0x0001020F
	add r2, r6, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, r6
	ldr r4, [r5, #0xc]
	add r2, #0x68
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	add r1, r6, #0
	ldr r2, [r5, #0xc]
	add r1, #0x6c
	strb r0, [r2, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EE820: .word 0x0001020F
	thumb_func_end ov103_021EE7DC

	thumb_func_start ov103_021EE824
ov103_021EE824: ; 0x021EE824
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	bl ov103_021EE784
	mov r0, #0x8a
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #9
	bl NewString_ReadMsgData
	mov r1, #0x8b
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	add r4, r0, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	bl ov103_021EE7DC
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021EE824

