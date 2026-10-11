#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E050
	.public ov65_0221EA74
	.public ov65_0221EB9C
	.public ov65_0221F4B0
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221EA74
ov65_0221EA74: ; 0x0221EA74
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0221EB80 ; =0x000036C8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	cmp r0, #2
	bhi _0221EA94
	cmp r0, #0
	beq _0221EA9E
	cmp r0, #1
	beq _0221EAEA
	cmp r0, #2
	beq _0221EB32
	b _0221EB78
_0221EA94:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0221EB32
	b _0221EB78
_0221EA9E:
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
	ldr r0, _0221EB84 ; =0x00000594
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	add r0, r4, #0
	bl ov65_0221F4B0
	ldr r0, _0221EB88 ; =0x00000668
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	ldr r1, _0221EB8C ; =ov65_0221E050
	ldr r0, _0221EB90 ; =0x00002220
	add sp, #0x10
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
_0221EAEA:
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
	ldr r0, _0221EB94 ; =0x000005B4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov65_0221FB90
	add r0, r4, #0
	bl ov65_0221F4B0
	ldr r0, _0221EB88 ; =0x00000668
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	ldr r1, _0221EB98 ; =ov65_0221EB9C
	ldr r0, _0221EB90 ; =0x00002220
	str r1, [r4, r0]
	b _0221EB78
_0221EB32:
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
	ldr r0, _0221EB84 ; =0x00000594
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	add r0, r4, #0
	bl ov65_0221F4B0
	ldr r0, _0221EB88 ; =0x00000668
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	ldr r1, _0221EB8C ; =ov65_0221E050
	ldr r0, _0221EB90 ; =0x00002220
	str r1, [r4, r0]
_0221EB78:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0221EB80: .word 0x000036C8
_0221EB84: .word 0x00000594
_0221EB88: .word 0x00000668
_0221EB8C: .word ov65_0221E050
_0221EB90: .word 0x00002220
_0221EB94: .word 0x000005B4
_0221EB98: .word ov65_0221EB9C
	thumb_func_end ov65_0221EA74

