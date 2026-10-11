#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F29E4
	.public ov14_021F46F4
	.public ov14_021F4720
	.public ov14_021F49E0

    .text

	thumb_func_start ov14_021F4720
ov14_021F4720: ; 0x021F4720
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc3
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0xc
	add r2, r1, #0
	sub r2, #0x21
	bl ManagedSprite_SetPositionXY
	mov r0, #0x31
	mov r2, #0x14
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf4
	mvn r2, r2
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc5
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x2b
	add r2, r1, #0
	sub r2, #0x40
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc6
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x80
	add r2, r1, #0
	sub r2, #0xa8
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc7
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x80
	add r2, r1, #0
	sub r2, #0x9c
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F49E0
	ldr r0, [r4, #0x34]
	mov r1, #7
	mov r2, #5
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	bl ov14_021F46F4
	ldr r1, [r4, #0x34]
	ldr r0, _021F47B0 ; =0x00000414
	ldr r0, [r1, r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r1, [r4, #0x34]
	ldr r0, _021F47B4 ; =0x00000424
	ldr r0, [r1, r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	pop {r4, pc}
	nop
_021F47B0: .word 0x00000414
_021F47B4: .word 0x00000424
	thumb_func_end ov14_021F4720

