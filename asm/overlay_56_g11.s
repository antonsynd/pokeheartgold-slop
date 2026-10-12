	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E5FDC
	.extern ov56_021E5D08

	.text

	.text
	thumb_func_start ov56_021E5FDC
ov56_021E5FDC: ; 0x021E5FDC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5, #8]
	mov r0, #0
	add r4, r0, #0
	cmp r1, #0
	beq _021E5FF2
	cmp r1, #1
	beq _021E603E
	b _021E6088
_021E5FF2:
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	mov r2, #0xa
	mov r3, #6
	bl DrawFrameAndWindow2
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0xff
	bl FillWindowPixelBuffer
	ldr r1, [r5]
	mov r0, #0x4c
	bl String_New
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #2
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6094 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	b _021E6088
_021E603E:
	ldr r1, _021E6098 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _021E604E
	mov r4, #1
	strb r0, [r5, #0xa]
	b _021E6060
_021E604E:
	bl System_GetTouchNew
	cmp r0, #0
	beq _021E6060
	mov r4, #1
	add r0, r5, #0
	strb r4, [r5, #0xa]
	bl ov56_021E5D08
_021E6060:
	cmp r4, #0
	bne _021E606A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E606A:
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r5, #0
	add r0, #0x9c
	bl ClearWindowTilemapAndCopyToVram
	mov r0, #0
	strh r0, [r5, #8]
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	pop {r3, r4, r5, pc}
_021E6088:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6094: .word 0x0001020F
_021E6098: .word gSystem
	thumb_func_end ov56_021E5FDC

