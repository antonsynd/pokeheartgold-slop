#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239D44
	.public ov70_0223D26C
	.public ov70_02245084

	.text

	thumb_func_start ov70_0223D26C
ov70_0223D26C: ; 0x0223D26C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xd
	ldr r1, _0223D358 ; =0x00000F48
	str r0, [sp, #4]
	mov r2, #3
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r3, #4
	bl AddWindowParameterized
	ldr r0, _0223D358 ; =0x00000F48
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	ldr r0, _0223D358 ; =0x00000F48
	add r0, r4, r0
	bl CopyWindowToVram
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _0223D35C ; =0x00000F18
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, #0xfc
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl AddWindowParameterized
	ldr r0, _0223D35C ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0223D360 ; =0x0000013F
	ldr r1, _0223D364 ; =0x00001158
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, _0223D364 ; =0x00001158
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0223D368 ; =0x00000165
	ldr r1, _0223D36C ; =0x00000F68
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #1
	mov r3, #0x18
	bl AddWindowParameterized
	ldr r0, _0223D36C ; =0x00000F68
	mov r1, #6
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r3, #1
	ldr r0, _0223D370 ; =0x00010306
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _0223D374 ; =0x00000BB8
	ldr r0, _0223D36C ; =0x00000F68
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov70_02245084
	ldr r0, [r4, #0x24]
	cmp r0, #5
	bne _0223D34C
	add r0, r4, #0
	mov r1, #3
	bl ov70_02239D44
	add sp, #0x14
	pop {r3, r4, pc}
_0223D34C:
	add r0, r4, #0
	mov r1, #1
	bl ov70_02239D44
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_0223D358: .word 0x00000F48
_0223D35C: .word 0x00000F18
_0223D360: .word 0x0000013F
_0223D364: .word 0x00001158
_0223D368: .word 0x00000165
_0223D36C: .word 0x00000F68
_0223D370: .word 0x00010306
_0223D374: .word 0x00000BB8
	thumb_func_end ov70_0223D26C

