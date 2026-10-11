#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241184
	.extern ov70_022412C8

	.text

	.text
	thumb_func_start ov70_02241184
ov70_02241184: ; 0x02241184
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r1, #0
	beq _0224119E
	add r0, r2, #0
	cmp r0, #1
	bne _0224119E
	ldr r0, _02241218 ; =0x0000064E
	bl PlaySE
_0224119E:
	ldr r4, [sp, #4]
	mov r0, #0xe
	mov r6, #0
	str r0, [sp, #0x10]
	add r5, r4, #0
	mov r7, #0x11
_022411AA:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _022411F4
	ldr r0, _0224121C ; =0x00000356
	ldr r1, [sp, #4]
	ldrb r0, [r4, r0]
	mov r3, #0xe
	add r2, r1, #0
	str r0, [sp]
	ldr r0, _02241220 ; =0x000011E4
	lsl r3, r3, #6
	ldr r0, [r1, r0]
	ldr r1, _02241224 ; =0x000011EC
	ldrb r3, [r4, r3]
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl ov70_022412C8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldr r0, _02241228 ; =0x00000EE8
	beq _022411E0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	bl Sprite_SetAnimCtrlSeq
	b _022411E8
_022411E0:
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Sprite_SetAnimCtrlSeq
_022411E8:
	ldr r0, _02241228 ; =0x00000EE8
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	b _022411FE
_022411F4:
	ldr r0, _02241228 ; =0x00000EE8
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
_022411FE:
	mov r0, #0x49
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	add r5, r5, #4
	add r7, r7, #4
	cmp r6, #7
	blt _022411AA
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02241218: .word 0x0000064E
_0224121C: .word 0x00000356
_02241220: .word 0x000011E4
_02241224: .word 0x000011EC
_02241228: .word 0x00000EE8
	thumb_func_end ov70_02241184

