#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239B00
	.extern ov70_02239C34
	.extern ov70_0224526C

	.text

	.text
	thumb_func_start ov70_02239B00
ov70_02239B00: ; 0x02239B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _02239B7C ; =0x00000F58
	ldrh r1, [r7, #0x36]
	add r4, r7, r0
	mov r0, #0xc
	ldr r2, _02239B80 ; =ov70_0224526C
	mul r0, r1
	mov r6, #0
	add r5, r2, r0
_02239B16:
	mov r0, #0x78
	str r0, [sp]
	mov r0, #8
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl FillWindowPixelRect
	mov r0, #0x78
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	mov r3, #8
	bl FillWindowPixelRect
	mov r0, #0x78
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	mov r3, #0xa
	bl FillWindowPixelRect
	mov r0, #0
	str r0, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r7, r1]
	ldr r3, [r5]
	add r0, r4, #0
	mov r2, #4
	bl ov70_02239C34
	add r0, r4, #0
	bl CopyWindowToVram
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #3
	blt _02239B16
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02239B7C: .word 0x00000F58
_02239B80: .word ov70_0224526C
	thumb_func_end ov70_02239B00

