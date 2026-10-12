#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA6B8
	.public ov112_021EA6D8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA6B8
ov112_021EA6B8: ; 0x021EA6B8
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021EA6D4 ; =0x0001E530
	ldr r0, [r1, r0]
	lsl r1, r2, #0x10
	lsl r2, r3, #0x10
	mov r3, #1
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, pc}
	.balign 4, 0
_021EA6D4: .word 0x0001E530
	thumb_func_end ov112_021EA6B8

	thumb_func_start ov112_021EA6D8
ov112_021EA6D8: ; 0x021EA6D8
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	ldr r2, [sp, #0x18]
	add r5, r0, #0
	add r4, r1, #0
	add r1, r3, #0
	cmp r2, #0
	ldr r0, _021EA768 ; =0x0001E530
	bge _021EA72A
	add r6, r5, r0
	add r0, r4, #0
	add r0, #0x75
	lsl r7, r0, #2
	add r2, #0xd0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	ldr r0, [r6, r7]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r1, [sp]
	ldr r0, [r6, r7]
	add r1, r1, #4
	bl ManagedSprite_SetAnim
	ldr r0, [r6, r7]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r4, #0x11
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021EA768 ; =0x0001E530
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
_021EA72A:
	add r6, r5, r0
	add r0, r4, #0
	add r0, #0x11
	lsl r7, r0, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r6, r7]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp]
	ldr r0, [r6, r7]
	add r1, #0x13
	str r1, [sp]
	bl ManagedSprite_SetAnim
	add r4, #0x75
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021EA768 ; =0x0001E530
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r6, r7]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA768: .word 0x0001E530
	thumb_func_end ov112_021EA6D8

