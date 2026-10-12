	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E66F0
	.extern ov68_021E66A0

	.text

	.text
	thumb_func_start ov68_021E66F0
ov68_021E66F0: ; 0x021E66F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r3, r1, r2
	mov r1, #0x6e
	add r5, r0, #0
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	lsl r4, r2, #5
	cmp r3, r1
	blt _021E6720
	mov r3, #4
	lsl r2, r2, #2
	add r2, r2, #4
	lsl r2, r2, #0x18
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021E6720:
	str r4, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E67D8 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	lsl r6, r3, #3
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r2, #0x11
	ldr r2, [r5, r2]
	add r0, #0xa8
	ldr r2, [r2, r6]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E67DC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r2, r2, #5
	ldr r2, [r5, r2]
	add r0, #0xa8
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, r0, r6
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GetMoveMaxPP
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #2
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0xfc
	ldr r0, [r0]
	add r2, r6, #0
	mov r3, #2
	bl BufferIntegerAsString
	mov r2, #1
	add r0, r5, #0
	lsl r2, r2, #8
	add r0, #0xfc
	ldr r1, [r5, r2]
	add r2, #8
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl StringExpandPlaceholders
	add r4, #0x10
	str r4, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E67DC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r2, r2, #1
	ldr r2, [r5, r2]
	add r0, #0xa8
	mov r3, #0x2d
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E67D8: .word 0x000F0E00
_021E67DC: .word 0x00010200
	thumb_func_end ov68_021E66F0

