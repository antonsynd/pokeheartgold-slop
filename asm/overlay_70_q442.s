#include "config.h"
#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243598
	.extern ov70_02238F9C
	.extern ov70_0224190C
	.extern ov70_02242508
	.extern ov70_02243458
	.extern ov70_022434C0
	.extern ov70_02243EB8
	.extern ov70_02243F00
	.extern ov70_02245D76
	.extern ov70_02245D77
	.extern ov70_02245E84

	.text

	.text
	thumb_func_start ov70_02243598
ov70_02243598: ; 0x02243598
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x23
	bl sub_02019688
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r4, #0
	mov r1, #0
	bl ov70_0224190C
	mov r0, #0x3e
	ldrsh r2, [r4, r0]
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _0224367C ; =ov70_02245E84
	ldr r0, [r0, r1]
	add r0, r2, r0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x30]
	add r0, #0x34
	bl ov70_02243458
	str r0, [r4, #0x5c]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r2, [r4, #0x5c]
	add r0, r4, #0
	bl ov70_022434C0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r4, #4]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	add r2, #0x40
	bl ov70_02243F00
	ldr r2, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r4, #0x1c]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r4, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0
	ldr r1, _02243680 ; =ov70_02245D76
	lsl r3, r0, #1
	ldr r2, _02243684 ; =ov70_02245D77
	str r0, [r4, #0x48]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	bl ov70_02238F9C
	ldr r0, [r4, #0x10]
	mov r1, #0xe4
	mov r2, #0x78
	bl ov70_02238F9C
	ldr r0, [r4, #0x14]
	mov r1, #0x9a
	mov r2, #0x78
	bl ov70_02238F9C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xd
	str r0, [r4, #0x4c]
	sub r0, #0xe
	add sp, #8
	pop {r4, pc}
	nop
_0224367C: .word ov70_02245E84
_02243680: .word ov70_02245D76
_02243684: .word ov70_02245D77
	thumb_func_end ov70_02243598

