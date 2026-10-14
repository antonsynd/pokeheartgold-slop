	.include "macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225AC00
	.extern ov27_0225CEEC
	.extern ov27_0225CEF0
	.extern ov27_0225CEF4
	.extern ov27_0225D074

	.text

	.text
	thumb_func_start ov27_0225AC00
ov27_0225AC00: ; 0x0225AC00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	mov r0, #0
	str r0, [sp]
	ldr r1, _0225ACFC ; =ov27_0225CEF0
	str r0, [sp, #4]
	mov r0, #1
	add r5, r2, #0
	str r0, [sp, #8]
	mov r0, #8
	add r6, r3, #0
	str r0, [sp, #0xc]
	ldr r1, [r1, r4]
	ldr r2, [sp, #0x14]
	mov r0, #0xe
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	ldr r1, _0225AD00 ; =ov27_0225CEF4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r1, [r1, r4]
	ldr r2, [sp, #0x14]
	mov r0, #0xe
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	mov r0, #2
	ldr r1, _0225AD04 ; =ov27_0225CEEC
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r1, [r1, r4]
	mov r0, #0xe
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xd2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	mov r2, #5
	mov r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xe2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	mov r2, #5
	mov r3, #9
	bl AddWindowParameterized
	add r0, r6, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r4, _0225AD08 ; =ov27_0225D074
	ldr r5, [sp, #0x30]
	mov r7, #0
	mov r6, #0xf6
_0225ACB8:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	mov r2, #5
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, #0x12
	add r4, #8
	add r5, #0x10
	cmp r7, #8
	blt _0225ACB8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ACFC: .word ov27_0225CEF0
_0225AD00: .word ov27_0225CEF4
_0225AD04: .word ov27_0225CEEC
_0225AD08: .word ov27_0225D074
	thumb_func_end ov27_0225AC00

