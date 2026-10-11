#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE1E8
	.extern ov112_021E9750
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE1E8
ov112_021EE1E8: ; 0x021EE1E8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov112_021E9750
	cmp r0, #0
	beq _021EE1FC
	cmp r0, #1
	beq _021EE254
	b _021EE28E
_021EE1FC:
	add r0, r4, #0
	bl ov112_021EA570
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, _021EE294 ; =0x0001EA98
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _021EE298 ; =0x0001EAA8
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	mov r0, #0x2f
	pop {r4, pc}
_021EE254:
	mov r1, #0x10
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
	ldr r0, _021EE294 ; =0x0001EA98
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _021EE298 ; =0x0001EAA8
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	bl ov112_021EA570
	mov r0, #0
	str r0, [r4, #4]
	add sp, #0x10
	mov r0, #0x42
	pop {r4, pc}
_021EE28E:
	mov r0, #0x2e
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EE294: .word 0x0001EA98
_021EE298: .word 0x0001EAA8
	thumb_func_end ov112_021EE1E8

