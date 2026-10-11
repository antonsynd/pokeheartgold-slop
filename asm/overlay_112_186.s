#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC99C
	.extern ov112_021E7CA4
	.extern ov112_021E9F40
	.extern ov112_021EA51C
	.extern ov112_021EC7D0
	.extern ov112_021EC950
	.extern ov112_021ECA18
	.extern ov112_021FF0C4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC99C
ov112_021EC99C: ; 0x021EC99C
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0x10
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x11
	bl ov112_021E7CA4
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x17
	bl ov112_021E7CA4
	add r0, r4, #0
	bl ov112_021EC950
	ldr r1, _021ECA08 ; =0x0001EC76
	strh r0, [r4, r1]
	add r0, r4, #0
	bl ov112_021EC7D0
	add r0, r4, #0
	mov r1, #6
	bl ov112_021E9F40
	ldr r1, _021ECA0C ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov112_021ECA18
	ldr r1, _021ECA10 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021ECA14 ; =ov112_021FF0C4
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	mov r0, #0xa
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021ECA08: .word 0x0001EC76
_021ECA0C: .word 0x0001EC54
_021ECA10: .word 0x0001EC50
_021ECA14: .word ov112_021FF0C4
	thumb_func_end ov112_021EC99C

