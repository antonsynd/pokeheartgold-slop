#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F44B4
	.extern ov14_021F4410

    .text

	.text
	thumb_func_start ov14_021F44B4
ov14_021F44B4: ; 0x021F44B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r6, r1, #0
	mov r7, #4
	add r4, #0x10
_021F44C0:
	mov r0, #0xbf
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0
	mov r1, #2
	mov r0, #0xbf
	lsl r0, r0, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	add r2, r2, r6
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #8
	bls _021F44C0
	add r0, r5, #0
	bl ov14_021F4410
	mov r4, #0
	add r7, sp, #0
_021F44FE:
	mov r0, #0x35
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r2, #0
	ldrsh r2, [r7, r2]
	mov r0, #0x35
	mov r1, #2
	lsl r0, r0, #4
	add r2, r2, r6
	lsl r2, r2, #0x10
	ldrsh r1, [r7, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _021F44FE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F44B4

