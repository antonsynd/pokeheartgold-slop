#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F2810
	.public ov112_021F2874
	.extern ov112_021F1624
	.extern ov112_021F2204
	.extern ov112_021F22B0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F2810
ov112_021F2810: ; 0x021F2810
	push {r4, r5, r6, lr}
	ldr r1, _021F2870 ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r4, #0
	mov r2, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r6, [r1]
	add r1, r4, #0
	bl ov112_021F2204
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0xc
	bl ManagedSprite_SetAnim
	add r6, #0x77
	ldrb r0, [r6]
	cmp r0, #0xfa
	blo _021F284E
	mov r4, #0x2f
	b _021F2864
_021F284E:
	cmp r0, #0xc8
	blo _021F2856
	mov r4, #0x30
	b _021F2864
_021F2856:
	cmp r0, #0x96
	blo _021F285E
	mov r4, #0x31
	b _021F2864
_021F285E:
	cmp r0, #0x5a
	blo _021F2864
	mov r4, #0x32
_021F2864:
	add r0, r5, #0
	mov r1, #0x2e
	add r2, r4, #0
	bl ov112_021F1624
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2870: .word 0x0000013D
	thumb_func_end ov112_021F2810

	thumb_func_start ov112_021F2874
ov112_021F2874: ; 0x021F2874
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F28D8 ; =0x0000013D
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc0
	ldr r1, [r0]
	add r0, r1, #0
	add r1, #0x84
	ldrb r1, [r1]
	add r0, #0x77
	ldrb r2, [r0]
	sub r1, #0x12
	lsl r0, r1, #1
	add r4, r1, r0
	add r4, #0x33
	cmp r2, #0xc8
	bge _021F28A8
	cmp r2, #0x3c
	blt _021F28A2
	add r4, r4, #1
	b _021F28A8
_021F28A2:
	cmp r2, #0
	blt _021F28A8
	add r4, r4, #2
_021F28A8:
	cmp r4, #0x35
	bne _021F28AE
	mov r4, #0x34
_021F28AE:
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov112_021F2204
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x84
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov112_021F22B0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov112_021F1624
	pop {r3, r4, r5, pc}
	nop
_021F28D8: .word 0x0000013D
	thumb_func_end ov112_021F2874

