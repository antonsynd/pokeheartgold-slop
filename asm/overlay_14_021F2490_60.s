#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F29E4
	.public ov14_021F4410
	.public ov14_021F4428
	.public ov14_021F462C

    .text

	thumb_func_start ov14_021F4428
ov14_021F4428: ; 0x021F4428
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc3
	mov r1, #0xc
	add r2, r1, #0
	ldr r4, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	sub r2, #0x21
	bl ManagedSprite_SetPositionXY
	mov r0, #0x31
	lsl r0, r0, #4
	mov r2, #0x14
	ldr r0, [r4, r0]
	mov r1, #0xf4
	mvn r2, r2
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc5
	lsl r0, r0, #2
	mov r1, #0x2b
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x40
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc6
	lsl r0, r0, #2
	mov r1, #0x80
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0xa8
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc7
	lsl r0, r0, #2
	mov r1, #0x80
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x9c
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	bl ov14_021F462C
	mov r1, #7
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F29E4
	add r0, r4, #0
	bl ov14_021F4410
	ldr r0, _021F44AC ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _021F44B0 ; =0x00000424
	mov r1, #0
	ldr r0, [r4, r0]
	bl TextOBJ_SetSpritesDrawFlag
	pop {r3, r4, r5, pc}
	nop
_021F44AC: .word 0x00000414
_021F44B0: .word 0x00000424
	thumb_func_end ov14_021F4428

