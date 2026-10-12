#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223BAE0
	.extern ov70_02239D44
	.extern ov70_0224562C
	.extern ov70_02245634
	.extern ov70_02245640

	.text

	.text
	thumb_func_start ov70_0223BAE0
ov70_0223BAE0: ; 0x0223BAE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223BC10 ; =0x00000F18
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl AddWindowParameterized
	ldr r1, _0223BC10 ; =0x00000F18
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _0223BC14 ; =0x00001058
	ldr r0, [sp, #0x14]
	ldr r4, _0223BC18 ; =ov70_02245640
	mov r7, #0
	mov r6, #1
	add r5, r0, r1
_0223BB22:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, #0x16
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #6
	blt _0223BB22
	ldr r1, _0223BC1C ; =0x00001178
	ldr r0, [sp, #0x14]
	ldr r4, _0223BC20 ; =ov70_0224562C
	mov r7, #0
	mov r6, #0x85
	add r5, r0, r1
_0223BB6E:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, #0x38
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #2
	blt _0223BB6E
	ldr r1, _0223BC14 ; =0x00001058
	ldr r0, [sp, #0x14]
	ldr r6, _0223BC24 ; =0x0000011D
	add r0, r0, r1
	ldr r4, _0223BC28 ; =ov70_02245634
	mov r5, #0
	str r0, [sp, #0x18]
_0223BBBC:
	add r0, r5, #6
	lsl r7, r0, #4
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x18]
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	add r1, r1, r7
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r0, r7
	bl FillWindowPixelBuffer
	add r5, r5, #1
	add r6, #0x14
	add r4, r4, #4
	cmp r5, #3
	blt _0223BBBC
	ldr r0, [sp, #0x14]
	mov r1, #4
	bl ov70_02239D44
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223BC10: .word 0x00000F18
_0223BC14: .word 0x00001058
_0223BC18: .word ov70_02245640
_0223BC1C: .word 0x00001178
_0223BC20: .word ov70_0224562C
_0223BC24: .word 0x0000011D
_0223BC28: .word ov70_02245634
	thumb_func_end ov70_0223BAE0

