#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E83D4
	.public ov73_021E844C
	.public ov73_021E8CBC

	.text

	thumb_func_start ov73_021E8CBC
ov73_021E8CBC: ; 0x021E8CBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E8D08 ; =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E8D04
	cmp r0, #2
	bne _021E8CE4
	bl ov00_021EC5B4
	cmp r0, #0
	bne _021E8CDE
	mov r0, #0
	str r0, [r4, #0x1c]
	b _021E8D04
_021E8CDE:
	mov r0, #0x29
	str r0, [r4, #0x1c]
	b _021E8D04
_021E8CE4:
	bl ov00_021EC5B4
	cmp r0, #0
	bne _021E8CFA
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021E844C
	mov r0, #0x2e
	b _021E8CFC
_021E8CFA:
	mov r0, #0x29
_021E8CFC:
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0x20]
_021E8D04:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_021E8D08: .word 0x000012C8
	thumb_func_end ov73_021E8CBC

