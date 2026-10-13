#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB780
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB780
ov112_021EB780: ; 0x021EB780
	push {r4, lr}
	add r4, r0, #0
	bl ov112_021EA570
	ldr r0, _021EB7D4 ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #3
	bhi _021EB7C8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB79C: ; jump table
	.short _021EB7A4 - _021EB79C - 2 ; case 0
	.short _021EB7AE - _021EB79C - 2 ; case 1
	.short _021EB7B8 - _021EB79C - 2 ; case 2
	.short _021EB7C2 - _021EB79C - 2 ; case 3
_021EB7A4:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x10]
	b _021EB7D0
_021EB7AE:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x10]
	b _021EB7D0
_021EB7B8:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0x10]
	b _021EB7D0
_021EB7C2:
	mov r0, #0xb
	str r0, [r4, #4]
	b _021EB7D0
_021EB7C8:
	cmp r1, #4
	blt _021EB7D0
	bl GF_AssertFail
_021EB7D0:
	mov r0, #0x1a
	pop {r4, pc}
	.balign 4, 0
_021EB7D4: .word 0x0001EC50
	thumb_func_end ov112_021EB780

