#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F028
	.public ov65_0221F120
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221F028
ov65_0221F028: ; 0x0221F028
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
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
	ldr r0, _0221F0B0 ; =0x00002224
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r1, r4, #0
	ldr r0, _0221F0B4 ; =0x00002228
	add r1, #0x98
	ldr r1, [r1]
	ldr r0, [r4, r0]
	sub r1, r1, #6
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl BufferBoxMonNickname
	mov r3, #0x62
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #8
	str r0, [sp]
	ldr r0, _0221F0B8 ; =0x000005B4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x15
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221F0BC ; =ov65_0221F120
	ldr r0, _0221F0C0 ; =0x00002220
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0221F0B0: .word 0x00002224
_0221F0B4: .word 0x00002228
_0221F0B8: .word 0x000005B4
_0221F0BC: .word ov65_0221F120
_0221F0C0: .word 0x00002220
	thumb_func_end ov65_0221F028

