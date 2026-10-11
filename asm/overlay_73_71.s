#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8A08
	.public ov73_021EA088

	.text

	thumb_func_start ov73_021E8A08
ov73_021E8A08: ; 0x021E8A08
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xa4
	ldr r1, _021E8B04 ; =0x00000E18
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl AddWindowParameterized
	ldr r0, _021E8B04 ; =0x00000E18
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	ldr r1, _021E8B08 ; =0x00000DF8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x1a
	bl AddWindowParameterized
	ldr r0, _021E8B08 ; =0x00000DF8
	mov r1, #0xf
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x9c
	ldr r1, _021E8B0C ; =0x00000DE8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x1a
	bl AddWindowParameterized
	ldr r0, _021E8B0C ; =0x00000DE8
	mov r1, #0xf
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #1
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r1, _021E8B10 ; =0x00000E08
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #4
	bl AddWindowParameterized
	ldr r0, _021E8B10 ; =0x00000E08
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r3, #1
	ldr r0, _021E8B14 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021E8B18 ; =0x00000BE4
	ldr r0, _021E8B10 ; =0x00000E08
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov73_021EA088
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _021E8B1C ; =0x00000DD8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, _021E8B1C ; =0x00000DD8
	mov r1, #0xf
	add r0, r4, r0
	bl FillWindowPixelBuffer
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E8B04: .word 0x00000E18
_021E8B08: .word 0x00000DF8
_021E8B0C: .word 0x00000DE8
_021E8B10: .word 0x00000E08
_021E8B14: .word 0x000F0E00
_021E8B18: .word 0x00000BE4
_021E8B1C: .word 0x00000DD8
	thumb_func_end ov73_021E8A08

