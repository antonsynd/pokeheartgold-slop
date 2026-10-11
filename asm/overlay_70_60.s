#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239D44
	.public ov70_0223A0D4
	.public ov70_022453B8

	.text

	thumb_func_start ov70_0223A0D4
ov70_0223A0D4: ; 0x0223A0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _0223A190 ; =0x00000F18
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl AddWindowParameterized
	ldr r0, _0223A190 ; =0x00000F18
	mov r1, #0
	add r0, r7, r0
	bl FillWindowPixelBuffer
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5e
	ldr r1, _0223A194 ; =0x00000F58
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	mov r3, #0x15
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0223A198 ; =0x00001058
	ldr r4, _0223A19C ; =ov70_022453B8
	mov r6, #0x86
	add r5, r7, r0
_0223A132:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, [r7, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r4, #0x10
	mul r0, r1
	add r6, r6, r0
	ldr r0, [sp, #0x14]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xe
	blt _0223A132
	add r0, r7, #0
	mov r1, #2
	bl ov70_02239D44
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A190: .word 0x00000F18
_0223A194: .word 0x00000F58
_0223A198: .word 0x00001058
_0223A19C: .word ov70_022453B8
	thumb_func_end ov70_0223A0D4

