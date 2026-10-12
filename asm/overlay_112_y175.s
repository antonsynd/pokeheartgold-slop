#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC2A8
	.extern ov112_021EA08C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC2A8
ov112_021EC2A8: ; 0x021EC2A8
	push {r4, lr}
	ldr r2, _021EC2D8 ; =0x0001F370
	add r4, r0, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _021EC2D4
	ldr r0, _021EC2DC ; =0x0001E448
	sub r2, #0x88
	ldr r0, [r4, r0]
	mov r1, #1
	add r2, r4, r2
	bl BufferBoxMonNickname
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x1a
	bl ov112_021EA08C
	ldr r1, _021EC2E0 ; =0x0001E524
	str r0, [r4, r1]
	mov r0, #0x17
	pop {r4, pc}
_021EC2D4:
	mov r0, #0x1d
	pop {r4, pc}
	.balign 4, 0
_021EC2D8: .word 0x0001F370
_021EC2DC: .word 0x0001E448
_021EC2E0: .word 0x0001E524
	thumb_func_end ov112_021EC2A8

