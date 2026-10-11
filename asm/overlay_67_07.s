	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6008
	.extern ov67_021E6E98
	.extern ov67_021E7020

	.text

	.text
	thumb_func_start ov67_021E6008
ov67_021E6008: ; 0x021E6008
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _021E6030
	add r5, r6, #0
	ldr r4, _021E6078 ; =ov67_021E6E98
	mov r7, #0
	add r5, #0x6c
_021E601A:
	ldr r0, [r6, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #0xa
	blt _021E601A
	b _021E6054
_021E6030:
	add r5, r6, #0
	ldr r4, _021E607C ; =ov67_021E7020
	mov r7, #0
	add r5, #0x6c
_021E6038:
	ldr r0, [r6, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #0x23
	blt _021E6038
_021E6054:
	ldr r1, [r6]
	mov r0, #4
	bl FontID_Alloc
	mov r1, #0x1e
	ldr r2, [r6]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r1, #0x1e
	ldr r2, [r6]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6078: .word ov67_021E6E98
_021E607C: .word ov67_021E7020
	thumb_func_end ov67_021E6008

