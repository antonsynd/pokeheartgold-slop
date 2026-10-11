#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9C30
	.extern ov73_021E83EC
	.extern ov73_021E9FF8

	.text

	.text
	thumb_func_start ov73_021E9C30
ov73_021E9C30: ; 0x021E9C30
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9C58 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9C5C ; =0x00000BD4
	mov r2, #9
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0x18
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9C58: .word 0x00000F0F
_021E9C5C: .word 0x00000BD4
	thumb_func_end ov73_021E9C30

