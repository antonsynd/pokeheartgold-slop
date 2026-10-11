#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223ACF4
	.public ov70_022454EC

	.text

	thumb_func_start ov70_0223ACF4
ov70_0223ACF4: ; 0x0223ACF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	ldr r1, _0223AE2C ; =0x00000F18
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	add r1, r6, r1
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, _0223AE2C ; =0x00000F18
	mov r1, #0
	add r0, r6, r0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r3, #1
	ldr r1, _0223AE30 ; =0x00000F58
	str r3, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	add r1, r6, r1
	mov r2, #4
	bl AddWindowParameterized
	ldr r0, _0223AE30 ; =0x00000F58
	mov r1, #0
	add r0, r6, r0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xae
	ldr r1, _0223AE34 ; =0x00000F68
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	add r1, r6, r1
	mov r2, #4
	mov r3, #0x11
	bl AddWindowParameterized
	ldr r0, _0223AE34 ; =0x00000F68
	mov r1, #0
	add r0, r6, r0
	bl FillWindowPixelBuffer
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0223AE38 ; =0x00001058
	ldr r4, _0223AE3C ; =ov70_022454EC
	mov r7, #0xc8
	add r5, r6, r0
_0223AD8A:
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r2, #0
	bne _0223ADD6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsr r2, r2, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, [r6, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x14]
	b _0223AE10
_0223ADD6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, [r6, #4]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	add r7, r7, r0
_0223AE10:
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x18]
	add r4, #0x14
	add r0, r0, #1
	add r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #0x10
	blt _0223AD8A
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223AE2C: .word 0x00000F18
_0223AE30: .word 0x00000F58
_0223AE34: .word 0x00000F68
_0223AE38: .word 0x00001058
_0223AE3C: .word ov70_022454EC
	thumb_func_end ov70_0223ACF4

