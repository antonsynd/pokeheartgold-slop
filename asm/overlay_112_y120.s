#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EAF5C
	.extern ov112_021E7CA4
	.extern ov112_021E9A78
	.extern ov112_021E9C10
	.extern ov112_021E9F40
	.extern ov112_021E9FA4
	.extern ov112_021EA51C
	.extern ov112_021FF0AC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EAF5C
ov112_021EAF5C: ; 0x021EAF5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #1
	bl ov112_021E9C10
	add r0, r5, #0
	mov r1, #3
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x11
	bl ov112_021E7CA4
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x17
	bl ov112_021E7CA4
	ldr r7, _021EAFEC ; =0x000F0100
	mov r4, #0
_021EAFA2:
	ldr r0, _021EAFF0 ; =0x0001E44C
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x98
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #4
	str r7, [sp]
	bl ov112_021E9FA4
	add r0, r6, #0
	bl String_Delete
	add r4, r4, #1
	cmp r4, #4
	blt _021EAFA2
	add r0, r5, #0
	mov r1, #6
	bl ov112_021E9F40
	ldr r1, _021EAFF4 ; =0x0001EC50
	mov r0, #0
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _021EAFF8 ; =ov112_021FF0AC
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	mov r0, #3
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EAFEC: .word 0x000F0100
_021EAFF0: .word 0x0001E44C
_021EAFF4: .word 0x0001EC50
_021EAFF8: .word ov112_021FF0AC
	thumb_func_end ov112_021EAF5C

