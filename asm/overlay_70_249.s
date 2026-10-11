#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238F9C
	.public ov70_0223F7E4
	.public ov70_0224190C
	.public ov70_02242508
	.public ov70_02242EE4
	.public ov70_022434C0
	.public ov70_02243EB8
	.public ov70_02243F00
	.public ov70_02245D76
	.public ov70_02245D77

	.text

	thumb_func_start ov70_02242EE4
ov70_02242EE4: ; 0x02242EE4
	push {r3, r4, lr}
	sub sp, #4
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
	mov r1, #2
	bl ov70_0224190C
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _02242F20
	add r0, r4, #0
	ldr r1, [r4, #0x24]
	add r0, #0x34
	mov r2, #1
	bl ov70_0223F7E4
	str r0, [r4, #0x5c]
	b _02242F32
_02242F20:
	cmp r0, #0
	bne _02242F32
	add r0, r4, #0
	ldr r1, [r4, #0x24]
	add r0, #0x34
	mov r2, #0
	bl ov70_0223F7E4
	str r0, [r4, #0x5c]
_02242F32:
	ldr r2, [r4, #0x5c]
	add r0, r4, #0
	mov r1, #0
	bl ov70_022434C0
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
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
	mov r2, #0x20
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r4, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x48]
	add r0, #0x7e
	strb r1, [r0]
	ldr r0, [r4, #0x48]
	ldr r1, _02242FBC ; =ov70_02245D76
	lsl r3, r0, #1
	ldr r2, _02242FC0 ; =ov70_02245D77
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	bl ov70_02238F9C
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_020197F4
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	sub r2, r1, #4
	add r3, r1, #0
	bl sub_020198FC
	mov r0, #0x20
	str r0, [r4, #0x4c]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02242FBC: .word ov70_02245D76
_02242FC0: .word ov70_02245D77
	thumb_func_end ov70_02242EE4

