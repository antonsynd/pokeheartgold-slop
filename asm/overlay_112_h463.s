#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F25FC
	.extern ov112_021F1624
	.extern ov112_021F2204
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F25FC
ov112_021F25FC: ; 0x021F25FC
	push {r3, r4, r5, lr}
	ldr r1, _021F267C ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r4, [r1]
	mov r1, #0
	bl ov112_021F2204
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0xb
	bl ManagedSprite_SetAnim
	ldr r0, _021F2680 ; =0x0000013F
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021F2640
	sub r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r1, r0
	bhi _021F2640
	mov r2, #0x1b
	b _021F2670
_021F2640:
	add r4, #0x78
	ldrh r2, [r4]
	mov r1, #0xfa
	lsl r1, r1, #4
	cmp r2, r1
	blo _021F2650
	mov r2, #0x1c
	b _021F2670
_021F2650:
	ldr r0, _021F2684 ; =0x00000BB8
	cmp r2, r0
	blo _021F265A
	mov r2, #0x1d
	b _021F2670
_021F265A:
	lsr r0, r1, #1
	cmp r2, r0
	blo _021F2664
	mov r2, #0x1e
	b _021F2670
_021F2664:
	lsr r0, r1, #2
	cmp r2, r0
	blo _021F266E
	mov r2, #0x1f
	b _021F2670
_021F266E:
	mov r2, #0x20
_021F2670:
	add r0, r5, #0
	mov r1, #0x1a
	bl ov112_021F1624
	pop {r3, r4, r5, pc}
	nop
_021F267C: .word 0x0000013D
_021F2680: .word 0x0000013F
_021F2684: .word 0x00000BB8
	thumb_func_end ov112_021F25FC

