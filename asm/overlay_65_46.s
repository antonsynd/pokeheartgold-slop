#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E928
	.public ov65_0221F3F4
	.public ov65_0221F4D4
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221F3F4
ov65_0221F3F4: ; 0x0221F3F4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, _0221F498 ; =0x00002228
	add r1, #0x94
	ldr r1, [r1]
	ldr r0, [r4, r0]
	sub r1, r1, #6
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
	ldr r0, _0221F49C ; =0x000005A4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x10
	mov r2, #1
	bl ov65_0221FB90
	mov r0, #2
	mov r1, #0x1a
	bl ListMenuItems_New
	ldr r1, _0221F4A0 ; =0x00000668
	mov r2, #0x11
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #0
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0221F4A0 ; =0x00000668
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xc
	bl ov65_0221E928
	ldr r1, _0221F4A4 ; =0x000036C8
	str r0, [r4, r1]
	ldr r1, _0221F4A8 ; =ov65_0221F4D4
	ldr r0, _0221F4AC ; =0x00002220
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0221F498: .word 0x00002228
_0221F49C: .word 0x000005A4
_0221F4A0: .word 0x00000668
_0221F4A4: .word 0x000036C8
_0221F4A8: .word ov65_0221F4D4
_0221F4AC: .word 0x00002220
	thumb_func_end ov65_0221F3F4

