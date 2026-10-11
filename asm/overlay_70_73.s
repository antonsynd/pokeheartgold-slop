#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223A72C
	.public ov70_02245084

	.text

	thumb_func_start ov70_0223A72C
ov70_0223A72C: ; 0x0223A72C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x10
	mov r1, #0x3d
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl String_New
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #0x3d
	bl String_New
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x31
	bl NewString_ReadMsgData
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl CopyU16ArrayToString
	add r0, r7, #0
	mov r1, #0xb4
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x91
	add r2, r6, #0
	bl GetMonData
	mov r2, #0
	ldr r0, _0223A7DC ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A7E0 ; =0x00010200
	str r2, [sp]
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A7DC ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A7E0 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	add r0, #0x10
	add r3, r2, #0
	bl ov70_02245084
	ldr r0, [sp, #0x10]
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223A7DC: .word 0x000F0200
_0223A7E0: .word 0x00010200
	thumb_func_end ov70_0223A72C

