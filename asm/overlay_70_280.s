#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224458C
	.public ov70_02245050

	.text

	thumb_func_start ov70_0224458C
ov70_0224458C: ; 0x0224458C
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
	mov r0, #0x94
	ldr r1, _02244634 ; =0x00000F48
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl AddWindowParameterized
	ldr r0, _02244634 ; =0x00000F48
	mov r1, #0
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
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, _02244638 ; =0x00000F38
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #4
	bl AddWindowParameterized
	ldr r0, _02244638 ; =0x00000F38
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r3, #1
	mov r1, #0x2f
	ldr r0, _0224463C ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02244638 ; =0x00000F38
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov70_02245050
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02244640 ; =0x00000F18
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, _02244640 ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02244634: .word 0x00000F48
_02244638: .word 0x00000F38
_0224463C: .word 0x000F0E00
_02244640: .word 0x00000F18
	thumb_func_end ov70_0224458C

