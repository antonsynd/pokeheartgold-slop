#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223D058
	.extern ov70_02238B54
	.extern ov70_02238F9C
	.extern ov70_022456E8
	.extern ov70_02245784
	.extern ov70_02245786

	.text

	.text
	thumb_func_start ov70_0223D058
ov70_0223D058: ; 0x0223D058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r2, #0xd6
	add r7, r0, #0
	lsl r2, r2, #4
	add r0, sp, #0
	add r1, r7, #0
	add r2, r7, r2
	mov r3, #1
	bl ov70_02238B54
	ldr r0, _0223D1E8 ; =0x00000122
	ldrh r1, [r7, r0]
	lsl r2, r1, #2
	ldr r1, _0223D1EC ; =ov70_02245784
	ldrh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrh r0, [r7, r0]
	lsl r1, r0, #2
	ldr r0, _0223D1F0 ; =ov70_02245786
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223D1F4 ; =0x00000DCC
	str r0, [r7, r1]
	ldr r0, [r7, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0223D1F4 ; =0x00000DCC
	mov r1, #4
	ldr r0, [r7, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223D1E8 ; =0x00000122
	ldrh r0, [r7, r0]
	cmp r0, #0x1f
	beq _0223D0B0
	cmp r0, #5
	bhi _0223D0BC
_0223D0B0:
	ldr r0, _0223D1F4 ; =0x00000DCC
	mov r1, #0
	ldr r0, [r7, r0]
	bl Sprite_SetPriority
	b _0223D0C6
_0223D0BC:
	ldr r0, _0223D1F4 ; =0x00000DCC
	mov r1, #1
	ldr r0, [r7, r0]
	bl Sprite_SetPriority
_0223D0C6:
	ldr r4, _0223D1EC ; =ov70_02245784
	mov r6, #0
	add r5, r7, #0
_0223D0CC:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223D1F8 ; =0x00000DD8
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r6, #6
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223D1F8 ; =0x00000DD8
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetPriority
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #0x1e
	blt _0223D0CC
	ldr r4, _0223D1EC ; =ov70_02245784
	mov r6, #0
	add r5, r7, #0
_0223D10A:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	add r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl Sprite_CreateAffine
	mov r1, #0xe5
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x28
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xe5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetPriority
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #0x1e
	blt _0223D10A
	ldr r4, _0223D1EC ; =ov70_02245784
	mov r6, #0
	add r5, r7, #0
_0223D14E:
	ldrh r0, [r4]
	add r0, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	add r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223D1FC ; =0x00000EC8
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x2a
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223D1FC ; =0x00000EC8
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetPriority
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #6
	blt _0223D14E
	ldr r4, _0223D200 ; =ov70_022456E8
	mov r6, #0
	add r5, r7, #0
_0223D190:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223D204 ; =0x00000F04
	str r0, [r5, r1]
	add r0, r1, #0
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223D204 ; =0x00000F04
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetPriority
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _0223D190
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xf1
	lsl r0, r0, #4
	mov r2, #0x6a
	ldr r0, [r7, r0]
	mov r1, #0x37
	lsl r2, r2, #2
	bl ov70_02238F9C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D1E8: .word 0x00000122
_0223D1EC: .word ov70_02245784
_0223D1F0: .word ov70_02245786
_0223D1F4: .word 0x00000DCC
_0223D1F8: .word 0x00000DD8
_0223D1FC: .word 0x00000EC8
_0223D200: .word ov70_022456E8
_0223D204: .word 0x00000F04
	thumb_func_end ov70_0223D058

