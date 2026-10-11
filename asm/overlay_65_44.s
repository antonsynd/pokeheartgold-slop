#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DE24
	.public ov65_0221F0C4
	.public ov65_0221F0D8
	.public ov65_0221F2A8
	.public ov65_0221F354
	.public ov65_0221FB90
	.public ov65_0221FC54

	.text

	thumb_func_start ov65_0221F2A8
ov65_0221F2A8: ; 0x0221F2A8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221F344 ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221F33E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221F2DA: ; jump table
	.short _0221F33E - _0221F2DA - 2 ; case 0
	.short _0221F2E4 - _0221F2DA - 2 ; case 1
	.short _0221F2FC - _0221F2DA - 2 ; case 2
	.short _0221F2E4 - _0221F2DA - 2 ; case 3
	.short _0221F2FC - _0221F2DA - 2 ; case 4
_0221F2E4:
	add r0, r4, #0
	bl ov65_0221F0C4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x14
	bl ov65_0221F0D8
	ldr r1, _0221F348 ; =ov65_0221F354
	ldr r0, _0221F34C ; =0x00002220
	str r1, [r4, r0]
	b _0221F33E
_0221F2FC:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221F350 ; =0x000005B4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221F348 ; =ov65_0221F354
	ldr r0, _0221F34C ; =0x00002220
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov65_0221DE24
_0221F33E:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0221F344: .word 0x00000664
_0221F348: .word ov65_0221F354
_0221F34C: .word 0x00002220
_0221F350: .word 0x000005B4
	thumb_func_end ov65_0221F2A8

