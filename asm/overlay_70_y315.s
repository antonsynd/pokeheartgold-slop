#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240D74
	.public ov70_02240EF4
	.extern ov70_02238B54
	.extern ov70_02238F9C
	.extern ov70_02240F3C
	.extern ov70_02240F58
	.extern ov70_022410F0
	.extern ov70_0224127C
	.extern ov70_02245D0A

	.text

	.text
	thumb_func_start ov70_02240D74
ov70_02240D74: ; 0x02240D74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_0224127C
	ldr r2, _02240ED8 ; =0x00000D84
	add r0, sp, #4
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #2
	bl ov70_02238B54
	mov r0, #2
	str r0, [sp, #0x2c]
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	ldr r0, _02240EDC ; =0x00182000
	str r0, [sp, #0x10]
	add r0, sp, #4
	bl Sprite_CreateAffine
	ldr r1, _02240EE0 ; =0x00000EE4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02240EE0 ; =0x00000EE4
	mov r1, #2
	ldr r0, [r5, r0]
	bl Sprite_SetPriority
	ldr r0, _02240EE0 ; =0x00000EE4
	mov r1, #7
	mul r1, r4
	ldr r0, [r5, r0]
	add r1, r1, #3
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02240EE0 ; =0x00000EE4
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0
	ldr r6, _02240EE4 ; =ov70_02245D0A
	str r0, [sp]
	add r4, r5, #0
	mov r7, #0xe
_02240DD8:
	add r0, sp, #4
	bl Sprite_CreateAffine
	ldr r1, _02240EE8 ; =0x00000EE8
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02240EE8 ; =0x00000EE8
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02240EE8 ; =0x00000EE8
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _02240EE8 ; =0x00000EE8
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r0, [r4, r0]
	bl ov70_022410F0
	ldr r0, _02240EE8 ; =0x00000EE8
	mov r1, #2
	ldr r0, [r4, r0]
	bl Sprite_SetPriority
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #4
	add r6, r6, #4
	str r0, [sp]
	cmp r0, #7
	blt _02240DD8
	add r0, sp, #4
	bl Sprite_CreateAffine
	ldr r1, _02240EEC ; =0x00000F0C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02240EEC ; =0x00000F0C
	mov r1, #0x2b
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02240EEC ; =0x00000F0C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _02240EEC ; =0x00000F0C
	mov r1, #0x80
	ldr r0, [r5, r0]
	mov r2, #0x56
	bl ov70_022410F0
	ldr r0, _02240EEC ; =0x00000F0C
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetPriority
	add r0, sp, #4
	bl Sprite_CreateAffine
	mov r1, #0xf1
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x2a
	bl Sprite_SetAnimCtrlSeq
	mov r2, #0xf1
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, r2, #4
	ldr r3, [r5, r2]
	mov r2, #0x6a
	lsl r2, r2, #2
	mov r1, #0x37
	add r2, r3, r2
	bl ov70_02238F9C
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r7, _02240EF0 ; =0x0000120C
	mov r4, #0
	add r6, r7, #2
_02240EAA:
	ldr r0, _02240EE0 ; =0x00000EE4
	ldr r0, [r5, r0]
	bl Sprite_GetMatrixPtr
	ldr r1, [r0]
	add r4, r4, #1
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	strh r1, [r5, r7]
	ldr r1, [r0, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, r6]
	add r5, r5, #4
	cmp r4, #8
	blt _02240EAA
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02240ED8: .word 0x00000D84
_02240EDC: .word 0x00182000
_02240EE0: .word 0x00000EE4
_02240EE4: .word ov70_02245D0A
_02240EE8: .word 0x00000EE8
_02240EEC: .word 0x00000F0C
_02240EF0: .word 0x0000120C
	thumb_func_end ov70_02240D74

	thumb_func_start ov70_02240EF4
ov70_02240EF4: ; 0x02240EF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02240D74
	ldr r0, _02240F30 ; =ov70_02240F58
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x3d
	bl CreateSysTaskAndEnvironment
	ldr r1, _02240F34 ; =0x000011D8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl SysTask_GetData
	mov r1, #0
	add r2, r1, #0
	str r1, [r0]
	sub r2, #0x28
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	bl ov70_02240F3C
	ldr r0, _02240F38 ; =0x0000062E
	bl PlaySE
	pop {r3, r4, r5, pc}
	nop
_02240F30: .word ov70_02240F58
_02240F34: .word 0x000011D8
_02240F38: .word 0x0000062E
	thumb_func_end ov70_02240EF4

