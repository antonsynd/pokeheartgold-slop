	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F134
	.public ov82_0223F1AC
	.extern ov82_0223F10C
	.extern ov82_0223F6C4

	.text

	.text
	thumb_func_start ov82_0223F134
ov82_0223F134: ; 0x0223F134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
_0223F146:
	mov r4, #0
	mov r5, #0x12
_0223F14A:
	ldr r0, [sp, #0xc]
	add r7, r4, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F18A
	cmp r0, #9
	beq _0223F18A
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov82_0223F6C4
	mov r1, #0x86
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	bl sub_02030BD0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	bls _0223F17C
	mov r2, #0xa
_0223F17C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl ov82_0223F10C
_0223F18A:
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _0223F14A
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0223F146
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223F134

	thumb_func_start ov82_0223F1AC
ov82_0223F1AC: ; 0x0223F1AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, sp, #0x18
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	add r7, r2, #0
	add r4, r3, #0
	bl FillWindowPixelBuffer
	ldr r2, _0223F220 ; =0x000001B9
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x69
	bl NewMsgDataFromNarc
	mov r1, #0x25
	str r0, [sp, #0x10]
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r2, sp, #0x18
	ldrb r0, [r2, #0x10]
	ldrb r3, [r2, #0x14]
	ldrb r1, [r2, #0x18]
	lsl r0, r0, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #8
	lsr r3, r3, #0x10
	orr r0, r3
	orr r0, r1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r1, [r2, #0x1c]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
	add r0, r5, #0
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223F220: .word 0x000001B9
	thumb_func_end ov82_0223F1AC

