#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9FA4
	.public ov112_021E9FD8
	.public ov112_021EA010
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9FA4
ov112_021E9FA4: ; 0x021E9FA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	ldr r2, _021E9FD4 ; =0x0001EA68
	lsl r4, r1, #4
	add r5, r0, r2
	add r0, r5, r4
	mov r1, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	ldr r0, [sp, #0x28]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9FD4: .word 0x0001EA68
	thumb_func_end ov112_021E9FA4

	thumb_func_start ov112_021E9FD8
ov112_021E9FD8: ; 0x021E9FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	ldr r2, _021EA008 ; =0x0001EA68
	lsl r4, r1, #4
	add r5, r0, r2
	add r0, r5, r4
	mov r1, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	ldr r0, _021EA00C ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA008: .word 0x0001EA68
_021EA00C: .word 0x00010200
	thumb_func_end ov112_021E9FD8

	thumb_func_start ov112_021EA010
ov112_021EA010: ; 0x021EA010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	ldr r2, _021EA040 ; =0x0001EBA8
	lsl r4, r1, #4
	add r5, r0, r2
	add r0, r5, r4
	mov r1, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	ldr r0, [sp, #0x28]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA040: .word 0x0001EBA8
	thumb_func_end ov112_021EA010

