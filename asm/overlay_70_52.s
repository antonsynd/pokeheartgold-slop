#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239D8C
	.public ov70_02239EAC
	.public ov70_02239FA4
	.public ov70_0223A06C
	.public ov70_0223A0D4
	.public ov70_0223A1E4
	.public ov70_0223A578
	.public ov70_0223A72C
	.public ov70_0223A7E4
	.public ov70_0223F470
	.public ov70_0223F864

	.text

	thumb_func_start ov70_02239D8C
ov70_02239D8C: ; 0x02239D8C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_0223A1E4
	ldr r0, [r4, #4]
	bl ov70_02239EAC
	add r0, r4, #0
	bl ov70_02239FA4
	add r0, r4, #0
	bl ov70_0223A0D4
	add r0, r4, #0
	bl ov70_0223A06C
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl Mon_GetBoxMon
	str r0, [sp]
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r2, #0xba
	add r0, r4, r0
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _02239E58 ; =0x00001058
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov70_0223A578
	ldr r1, _02239E5C ; =0x00001118
	mov r2, #0x92
	add r0, r4, r1
	str r0, [sp]
	mov r0, #0xba
	lsl r0, r0, #4
	mov r3, #0x4f
	sub r1, #0x50
	lsl r2, r2, #2
	lsl r3, r3, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov70_0223A72C
	ldr r1, _02239E60 ; =0x0000022F
	mov r2, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov70_0223F864
	mov r1, #0x8b
	lsl r1, r1, #2
	ldrsh r2, [r4, r1]
	ldr r3, _02239E64 ; =0x000010E8
	add r1, r1, #2
	str r2, [sp]
	ldrsb r1, [r4, r1]
	mov r2, #0xba
	lsl r2, r2, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov70_0223F470
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0223A7E4
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02239E58: .word 0x00001058
_02239E5C: .word 0x00001118
_02239E60: .word 0x0000022F
_02239E64: .word 0x000010E8
	thumb_func_end ov70_02239D8C

