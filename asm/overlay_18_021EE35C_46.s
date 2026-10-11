	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EFC3C
	.public ov18_021EFC9C
	.public ov18_021EFD00
	.public ov18_021EFDB4
	.extern ov18_021EE3AC
	.extern ov18_021F9DC0

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021EFC3C
ov18_021EFC3C: ; 0x021EFC3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r5, #0
	lsl r6, r1, #4
	add r7, #0xc
	add r0, r7, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _021EFC90 ; =0x0000186C
	ldr r4, [r5, r0]
	cmp r4, #0x1a
	bne _021EFC5C
	mov r4, #0x71
	b _021EFC5E
_021EFC5C:
	add r4, #0x45
_021EFC5E:
	add r0, r7, r6
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFC94 ; =0x00020100
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #2
	lsl r4, r3, #3
	str r0, [sp, #0xc]
	ldr r1, _021EFC98 ; =0x0000065C
	lsr r3, r4, #0x1f
	add r3, r4, r3
	ldr r1, [r5, r1]
	add r0, r7, r6
	asr r3, r3, #1
	bl ov18_021F9648
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFC90: .word 0x0000186C
_021EFC94: .word 0x00020100
_021EFC98: .word 0x0000065C
	thumb_func_end ov18_021EFC3C

	thumb_func_start ov18_021EFC9C
ov18_021EFC9C: ; 0x021EFC9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r7, #0
	add r5, #0xc
	lsl r4, r2, #4
	str r1, [sp, #0x10]
	add r0, r5, r4
	mov r1, #0
	add r6, r3, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021EFCCA
	add r0, r5, r4
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
_021EFCCA:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021EFCF4 ; =0x00020100
	lsl r3, r2, #1
	ldr r2, _021EFCF8 ; =ov18_021F9DC0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EFCFC ; =0x0000065C
	ldrh r2, [r2, r3]
	ldr r1, [r7, r1]
	add r0, r5, r4
	add r3, r6, #0
	bl ov18_021F9648
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EFCF4: .word 0x00020100
_021EFCF8: .word ov18_021F9DC0
_021EFCFC: .word 0x0000065C
	thumb_func_end ov18_021EFC9C

	thumb_func_start ov18_021EFD00
ov18_021EFD00: ; 0x021EFD00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _021EFDA4 ; =0x000003E7
	add r5, r0, #0
	add r6, r2, #0
	cmp r1, r4
	bne _021EFD12
	add r4, #0xbd
	b _021EFD26
_021EFD12:
	ldr r0, _021EFDA8 ; =0x00002710
	mul r0, r1
	mov r1, #0xfe
	bl _u32_div_f
	add r0, r0, #5
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
_021EFD26:
	add r7, r5, #0
	lsl r0, r6, #4
	add r7, #0xc
	str r0, [sp, #0x14]
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	mov r1, #0xc
	bl _u32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r3, #3
	bl BufferIntegerAsString
	add r0, r4, #0
	mov r1, #0xc
	bl _u32_div_f
	mov r3, #2
	add r2, r1, #0
	mov r0, #0x66
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl BufferIntegerAsString
	ldr r0, [sp, #0x14]
	add r0, r7, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021EFDAC ; =0x00020100
	ldr r1, _021EFDB0 ; =0x0000065C
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xaf
	bl ov18_021EE3AC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EFDA4: .word 0x000003E7
_021EFDA8: .word 0x00002710
_021EFDAC: .word 0x00020100
_021EFDB0: .word 0x0000065C
	thumb_func_end ov18_021EFD00

	thumb_func_start ov18_021EFDB4
ov18_021EFDB4: ; 0x021EFDB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021EFE58 ; =0x0000270F
	add r4, r2, #0
	cmp r1, r0
	bne _021EFDC6
	ldr r6, _021EFE5C ; =0x00018696
	b _021EFDD6
_021EFDC6:
	ldr r0, _021EFE60 ; =0x00035D2E
	mul r0, r1
	ldr r1, _021EFE64 ; =0x0000C350
	add r0, r0, r1
	lsl r1, r1, #1
	bl _u32_div_f
	add r6, r0, #0
_021EFDD6:
	add r7, r5, #0
	lsl r0, r4, #4
	add r7, #0xc
	str r0, [sp, #0x14]
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r3, #4
	bl BufferIntegerAsString
	add r0, r6, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x66
	str r1, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl BufferIntegerAsString
	ldr r0, [sp, #0x14]
	add r0, r7, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021EFE68 ; =0x00020100
	ldr r1, _021EFE6C ; =0x0000065C
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x26
	bl ov18_021EE3AC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFE58: .word 0x0000270F
_021EFE5C: .word 0x00018696
_021EFE60: .word 0x00035D2E
_021EFE64: .word 0x0000C350
_021EFE68: .word 0x00020100
_021EFE6C: .word 0x0000065C
	thumb_func_end ov18_021EFDB4

