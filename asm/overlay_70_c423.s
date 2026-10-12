#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022438D4
	.extern ov70_02238F9C
	.extern ov70_02242D44
	.extern ov70_02245DF8
	.extern ov70_02245DF9

	.text

	.text
	thumb_func_start ov70_022438D4
ov70_022438D4: ; 0x022438D4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #6
	mov r2, #0x10
	bl ov70_02242D44
	ldr r0, [r4, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	ldr r1, _02243920 ; =ov70_02245DF8
	ldr r2, _02243924 ; =ov70_02245DF9
	lsl r3, r0, #1
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [r4, #0x48]
	add r1, #0x10
	ldr r0, [r4, #0xc]
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02243918
	mov r1, #1
	bl Sprite_SetDrawFlag
_02243918:
	mov r0, #0x11
	str r0, [r4, #0x4c]
	sub r0, #0x12
	pop {r4, pc}
	.balign 4, 0
_02243920: .word ov70_02245DF8
_02243924: .word ov70_02245DF9
	thumb_func_end ov70_022438D4

