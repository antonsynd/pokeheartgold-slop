#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223CB1C
	.public ov70_0223CC04
	.extern ov70_02245084
	.extern ov70_022450B8

	.text

	.text
	thumb_func_start ov70_0223CB1C
ov70_0223CB1C: ; 0x0223CB1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #0x3d
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223CC00 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #0x3f
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223CC00 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x20
	add r1, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #0x41
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223CC00 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x40
	add r1, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #0xab
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223CC00 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #0x43
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223CC00 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x60
	add r1, r6, #0
	add r3, r2, #0
	bl ov70_022450B8
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #0xee
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r2, #0
	ldr r0, _0223CC00 ; =0x000F0200
	str r2, [sp]
	add r5, #0x70
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_022450B8
	add r0, r4, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CC00: .word 0x000F0200
	thumb_func_end ov70_0223CB1C

	thumb_func_start ov70_0223CC04
ov70_0223CC04: ; 0x0223CC04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r4, _0223CC60 ; =0x00010200
	cmp r3, #0
	beq _0223CC1A
	ldr r4, _0223CC64 ; =0x000F0200
	mov r1, #0
	b _0223CC1C
_0223CC1A:
	mov r1, #2
_0223CC1C:
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x12
	mov r3, #2
	bl BgTilemapRectChangePalette
	add r0, r5, #0
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add r0, r6, #0
	mov r1, #0x45
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r2, #0
	str r2, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r3, r2, #0
	str r4, [sp, #4]
	bl ov70_022450B8
	add r0, r5, #0
	bl String_Delete
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223CC60: .word 0x00010200
_0223CC64: .word 0x000F0200
	thumb_func_end ov70_0223CC04

