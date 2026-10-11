#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBBD8
	.extern ov112_021E9750
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBBD8
ov112_021EBBD8: ; 0x021EBBD8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov112_021E9750
	cmp r0, #0
	beq _021EBBEC
	cmp r0, #1
	beq _021EBC22
	b _021EBC2C
_021EBBEC:
	add r0, r4, #0
	bl ov112_021EA570
	mov r1, #0x10
	mov r2, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, _021EBC34 ; =0x0001EA98
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _021EBC38 ; =0x0001EAA8
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	add sp, #0x10
	mov r0, #3
	pop {r4, pc}
_021EBC22:
	mov r0, #0xb
	str r0, [r4, #4]
	add sp, #0x10
	mov r0, #0x22
	pop {r4, pc}
_021EBC2C:
	mov r0, #2
	add sp, #0x10
	pop {r4, pc}
	nop
_021EBC34: .word 0x0001EA98
_021EBC38: .word 0x0001EAA8
	thumb_func_end ov112_021EBBD8

