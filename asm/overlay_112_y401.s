#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1F80
	.extern ov112_021F1F3C
	.extern ov112_021F2000
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1F80
ov112_021F1F80: ; 0x021F1F80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x6c]
	add r0, #0x98
	mov r3, #0x68
	bl ov112_021F2000
	add r0, r4, #0
	add r0, #0x98
	mov r1, #3
	bl ov112_021F1F3C
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x6c]
	add r0, #0xac
	mov r3, #0x98
	bl ov112_021F2000
	add r4, #0xac
	add r0, r4, #0
	mov r1, #1
	bl ov112_021F1F3C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov112_021F1F80

