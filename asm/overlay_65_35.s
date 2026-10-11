#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E928
	.public ov65_0221E9A8
	.public ov65_0221EA74
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221E9A8
ov65_0221E9A8: ; 0x0221E9A8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0221EA5C ; =0x00002224
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
	mov r3, #0x62
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #8
	str r0, [sp]
	ldr r0, _0221EA60 ; =0x000005A4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x10
	mov r2, #1
	bl ov65_0221FB90
	mov r0, #3
	mov r1, #0x1a
	bl ListMenuItems_New
	ldr r1, _0221EA64 ; =0x00000668
	mov r2, #0x11
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #0
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0221EA64 ; =0x00000668
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x12
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0221EA64 ; =0x00000668
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #2
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #0
	mov r1, #3
	mov r2, #9
	bl ov65_0221E928
	ldr r1, _0221EA68 ; =0x000036C8
	str r0, [r4, r1]
	ldr r1, _0221EA6C ; =ov65_0221EA74
	ldr r0, _0221EA70 ; =0x00002220
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0221EA5C: .word 0x00002224
_0221EA60: .word 0x000005A4
_0221EA64: .word 0x00000668
_0221EA68: .word 0x000036C8
_0221EA6C: .word ov65_0221EA74
_0221EA70: .word 0x00002220
	thumb_func_end ov65_0221E9A8

