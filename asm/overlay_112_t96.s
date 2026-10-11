#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EAA34
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EAA34
ov112_021EAA34: ; 0x021EAA34
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	bge _021EAA68
	ldr r0, _021EAA90 ; =0x0001E568
	add r2, #0xd0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, _021EAA90 ; =0x0001E568
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _021EAA94 ; =0x0001E564
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
_021EAA68:
	ldr r0, _021EAA94 ; =0x0001E564
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, _021EAA94 ; =0x0001E564
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _021EAA90 ; =0x0001E568
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	nop
_021EAA90: .word 0x0001E568
_021EAA94: .word 0x0001E564
	thumb_func_end ov112_021EAA34

