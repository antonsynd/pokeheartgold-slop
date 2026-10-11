	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225A00C
	.extern _0225B164
	.extern ov48_0225A288
	.extern ov48_0225A5C4
	.extern ov48_0225A6DC
	.extern ov48_0225A894
	.extern ov48_0225AAAC
	.extern ov48_0225B0C4
	.extern ov48_0225B268

	.text

	.text
	thumb_func_start ov48_0225A00C
ov48_0225A00C: ; 0x0225A00C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	add r1, r0, #0
	str r0, [sp, #0x14]
	str r3, [sp, #0x20]
	str r2, [r1]
	bl ov48_0225A288
	ldr r5, [sp, #0x14]
	ldr r4, _0225A100 ; =_0225B164
	ldr r6, _0225A104 ; =ov48_0225B268
	mov r7, #0
	add r5, #0xa0
_0225A02C:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r5, #0
	add r2, r6, #0
	bl ov48_0225A894
	add r7, r7, #1
	add r4, r4, #1
	add r6, #0xc
	add r5, #0x28
	cmp r7, #5
	blt _0225A02C
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r3, #0x6a
	ldr r1, [sp, #0x14]
	lsl r3, r3, #2
	add r1, r1, r3
	ldr r0, [r0]
	mov r3, #2
	bl AddWindowParameterized
	mov r1, #0x6a
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl ov48_0225B0C4
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r0, [sp, #0x14]
	add r1, #0xa9
	add r0, r0, r1
	mov r1, #1
	str r3, [sp, #8]
	bl AddTextPrinterParameterized
	mov r1, #0x6a
	mov r2, #0xa
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	add r3, r2, #0
	bl DrawFrameAndWindow2
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov48_0225A6DC
	ldr r0, [sp, #0x20]
	mov r1, #0x51
	str r0, [sp]
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x13
	mov r2, #0
	add r3, #0x98
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	ldr r1, [sp, #0x14]
	mov r3, #0xb9
	add r1, #0x94
	str r0, [r1]
	mov r1, #0x6e
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, [sp, #0x14]
	lsl r3, r3, #2
	add r2, r2, r3
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x20]
	bl ov48_0225AAAC
	mov r1, #0xb9
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov48_0225A5C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225A100: .word _0225B164
_0225A104: .word ov48_0225B268
	thumb_func_end ov48_0225A00C

