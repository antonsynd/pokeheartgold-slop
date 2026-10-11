#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB950
	.extern ov112_021E9A78
	.extern ov112_021E9C10
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB950
ov112_021EB950: ; 0x021EB950
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021EB9BC ; =0x0001E440
	add r4, r1, #0
	add r1, sp, #0x10
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0x10
	bl sub_02032688
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	cmp r0, #2
	beq _021EB974
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, pc}
_021EB974:
	mov r0, #3
	str r0, [r5, #4]
	mov r0, #4
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov112_021E9C10
	add r0, r5, #0
	mov r1, #1
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
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add r0, r5, #0
	bl ov112_021EA570
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021EB9BC: .word 0x0001E440
	thumb_func_end ov112_021EB950

