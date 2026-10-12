#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBE78
	.extern ov112_021E9750
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBE78
ov112_021EBE78: ; 0x021EBE78
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov112_021E9750
	cmp r0, #0
	beq _021EBE8C
	cmp r0, #1
	beq _021EBEC8
	b _021EBF04
_021EBE8C:
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
	ldr r0, _021EBF0C ; =0x0001EA98
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _021EBF10 ; =0x0001EAA8
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _021EBF14 ; =0x0001F2E4
	mov r1, #0
	strh r1, [r4, r0]
	add sp, #0x10
	mov r0, #0xb
	pop {r4, pc}
_021EBEC8:
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
	ldr r0, _021EBF0C ; =0x0001EA98
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _021EBF10 ; =0x0001EAA8
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	bl ov112_021EA570
	ldr r0, _021EBF14 ; =0x0001F2E4
	mov r1, #1
	strh r1, [r4, r0]
	add sp, #0x10
	mov r0, #0xb
	pop {r4, pc}
_021EBF04:
	mov r0, #0xa
	add sp, #0x10
	pop {r4, pc}
	nop
_021EBF0C: .word 0x0001EA98
_021EBF10: .word 0x0001EAA8
_021EBF14: .word 0x0001F2E4
	thumb_func_end ov112_021EBE78

