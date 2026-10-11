#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DE24
	.public ov65_0221E050
	.public ov65_0221E194
	.public ov65_0221E8EC
	.public ov65_0221FB90
	.public ov65_0221FC54

	.text

	thumb_func_start ov65_0221E194
ov65_0221E194: ; 0x0221E194
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E258 ; =0x00000664
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
	bhi _0221E250
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E1C6: ; jump table
	.short _0221E250 - _0221E1C6 - 2 ; case 0
	.short _0221E1D0 - _0221E1C6 - 2 ; case 1
	.short _0221E218 - _0221E1C6 - 2 ; case 2
	.short _0221E1D0 - _0221E1C6 - 2 ; case 3
	.short _0221E218 - _0221E1C6 - 2 ; case 4
_0221E1D0:
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
	ldr r0, _0221E25C ; =0x000005B4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x1c
	mov r2, #1
	bl ov65_0221FB90
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #1
	bl ov65_0221DE24
	ldr r1, _0221E260 ; =ov65_0221E8EC
	ldr r0, _0221E264 ; =0x00002220
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x68]
	b _0221E250
_0221E218:
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
	ldr r0, _0221E268 ; =0x00000594
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221E26C ; =ov65_0221E050
	ldr r0, _0221E264 ; =0x00002220
	str r1, [r4, r0]
_0221E250:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0221E258: .word 0x00000664
_0221E25C: .word 0x000005B4
_0221E260: .word ov65_0221E8EC
_0221E264: .word 0x00002220
_0221E268: .word 0x00000594
_0221E26C: .word ov65_0221E050
	thumb_func_end ov65_0221E194

