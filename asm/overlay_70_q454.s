#include "config.h"
#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243B2C
	.extern ov70_02238F9C
	.extern ov70_0223F904
	.extern ov70_0224190C
	.extern ov70_02242508
	.extern ov70_0224352C
	.extern ov70_02243EB8
	.extern ov70_02243F00
	.extern ov70_02245D8A
	.extern ov70_02245D8B
	.extern ov70_02245E84

	.text

	.text
	thumb_func_start ov70_02243B2C
ov70_02243B2C: ; 0x02243B2C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x1e
	bl sub_02019688
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r4, #0
	mov r1, #3
	bl ov70_0224190C
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	mov r2, #0x3e
	add r0, r4, #0
	lsl r5, r3, #2
	ldr r3, _02243BFC ; =ov70_02245E84
	ldrsh r2, [r4, r2]
	ldr r3, [r3, r5]
	ldr r1, [r4, #0x2c]
	add r0, #0x34
	add r2, r2, r3
	bl ov70_0223F904
	str r0, [r4, #0x5c]
	ldr r2, [r4, #0x5c]
	add r0, r4, #0
	mov r1, #0
	bl ov70_0224352C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r0, [r4, #0x5c]
	mov r1, #5
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r4, #4]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	add r2, #0x50
	bl ov70_02243F00
	ldr r2, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r4, #0x1c]
	mov r2, #1
	add r3, r1, #0
	bl sub_020196E8
	mov r0, #0
	ldr r1, _02243C00 ; =ov70_02245D8A
	lsl r3, r0, #1
	ldr r2, _02243C04 ; =ov70_02245D8B
	str r0, [r4, #0x48]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	bl ov70_02238F9C
	ldr r0, [r4, #0x10]
	mov r1, #0xb0
	mov r2, #0x88
	bl ov70_02238F9C
	ldr r0, [r4, #0x14]
	mov r1, #0x58
	mov r2, #0x88
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
	mov r0, #0x19
	str r0, [r4, #0x4c]
	sub r0, #0x1a
	pop {r3, r4, r5, pc}
	nop
_02243BFC: .word ov70_02245E84
_02243C00: .word ov70_02245D8A
_02243C04: .word ov70_02245D8B
	thumb_func_end ov70_02243B2C

