	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B388
	.public ov49_0225BB14
	.public ov49_0225C970
	.public ov49_0225CAD4

    .text

	thumb_func_start ov49_0225C970
ov49_0225C970: ; 0x0225C970
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r4, [sp, #0x34]
	str r0, [sp, #8]
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x14]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [r6]
	add r0, r7, #0
	mov r1, #0x37
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	strh r0, [r5, #8]
	ldr r0, [sp, #0x14]
	bl ov45_0222AAC8
	strh r0, [r5, #0xa]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r2, [r6]
	add r0, r7, #0
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r2, [r5, #0xa]
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x1b
	mov r3, #6
	bl ov49_0225BB14
	ldr r0, [sp, #0x10]
	mov r1, #1
	mov r2, #0x3f
	bl ov49_0225B388
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _0225CA2C ; =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	str r1, [sp, #0xc]
	add r0, #0xc
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0225CA1A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov49_0225CAD4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0225CA1A:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov49_0225CAD4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225CA2C: .word 0x000F0E00
	thumb_func_end ov49_0225C970

