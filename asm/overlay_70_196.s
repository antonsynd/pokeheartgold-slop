#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_02238F64
	.public ov70_0223FC68
	.public ov70_02244FA4

	.text

	thumb_func_start ov70_0223FC68
ov70_0223FC68: ; 0x0223FC68
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0xc
	bhi _0223FD4C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FC80: ; jump table
	.short _0223FD4C - _0223FC80 - 2 ; case 0
	.short _0223FD4C - _0223FC80 - 2 ; case 1
	.short _0223FD4C - _0223FC80 - 2 ; case 2
	.short _0223FD4C - _0223FC80 - 2 ; case 3
	.short _0223FD4C - _0223FC80 - 2 ; case 4
	.short _0223FD4C - _0223FC80 - 2 ; case 5
	.short _0223FD4C - _0223FC80 - 2 ; case 6
	.short _0223FC9A - _0223FC80 - 2 ; case 7
	.short _0223FCB8 - _0223FC80 - 2 ; case 8
	.short _0223FCD6 - _0223FC80 - 2 ; case 9
	.short _0223FCF4 - _0223FC80 - 2 ; case 10
	.short _0223FD18 - _0223FC80 - 2 ; case 11
	.short _0223FD30 - _0223FC80 - 2 ; case 12
_0223FC9A:
	ldr r1, _0223FD5C ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #2
	bl ov70_02238D84
	b _0223FD50
_0223FCB8:
	ldr r1, _0223FD5C ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #7
	bl ov70_02238D84
	b _0223FD50
_0223FCD6:
	ldr r1, _0223FD5C ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0xc
	bl ov70_02238D84
	b _0223FD50
_0223FCF4:
	ldr r1, _0223FD5C ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x12
	bl ov70_02238D84
	ldr r0, _0223FD60 ; =0x000011FC
	mov r1, #1
	str r1, [r4, r0]
	b _0223FD50
_0223FD18:
	ldr r1, _0223FD5C ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #0
	bl ov70_02244FA4
	mov r0, #0x18
	str r0, [r4, #0x2c]
	b _0223FD50
_0223FD30:
	ldr r1, _0223FD5C ; =0x00000F0F
	mov r2, #0x94
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #0x1d
	str r0, [r4, #0x2c]
	b _0223FD50
_0223FD4C:
	bl GF_AssertFail
_0223FD50:
	add r0, r4, #0
	bl ov70_02238F64
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223FD5C: .word 0x00000F0F
_0223FD60: .word 0x000011FC
	thumb_func_end ov70_0223FC68

