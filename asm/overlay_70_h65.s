#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022394B8
	.extern ov70_02239D44

	.text

	.text
	thumb_func_start ov70_022394B8
ov70_022394B8: ; 0x022394B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #1
	add r7, r0, #0
	str r2, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _022395B0 ; =0x00000F38
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	bl AddWindowParameterized
	ldr r0, _022395B0 ; =0x00000F38
	mov r1, #0
	add r0, r7, r0
	bl FillWindowPixelBuffer
	mov r0, #2
	str r0, [sp]
	mov r3, #0
	mov r2, #0x2f
	ldr r0, _022395B4 ; =0x000F0600
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022395B0 ; =0x00000F38
	str r3, [sp, #0xc]
	lsl r2, r2, #6
	ldr r2, [r7, r2]
	add r0, r7, r0
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _022395B8 ; =0x00000F58
	mov r6, #0x61
	mov r4, #6
	add r5, r7, r0
_02239510:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #9
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	add r6, #0x1e
	add r0, r0, #1
	add r4, r4, #5
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _02239510
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _022395BC ; =0x00000F18
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl AddWindowParameterized
	ldr r0, _022395BC ; =0x00000F18
	mov r1, #0xf
	add r0, r7, r0
	bl FillWindowPixelBuffer
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x96
	ldr r1, _022395C0 ; =0x00001158
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, _022395C0 ; =0x00001158
	mov r1, #0xf
	add r0, r7, r0
	bl FillWindowPixelBuffer
	add r0, r7, #0
	mov r1, #0
	bl ov70_02239D44
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022395B0: .word 0x00000F38
_022395B4: .word 0x000F0600
_022395B8: .word 0x00000F58
_022395BC: .word 0x00000F18
_022395C0: .word 0x00001158
	thumb_func_end ov70_022394B8

