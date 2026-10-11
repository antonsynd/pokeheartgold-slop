#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E264
	.extern ov70_0223E114
	.extern ov70_0223E120
	.extern ov70_0223E170
	.extern ov70_0223E738
	.extern ov70_02245084

	.text

	.text
	thumb_func_start ov70_0223E264
ov70_0223E264: ; 0x0223E264
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	ldr r0, [r5]
	str r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	ldr r1, _0223E46C ; =0x00003D68
	str r0, [sp, #0x20]
	mov r0, #3
	bl Heap_AllocAtEnd
	mov r1, #0x12
	lsl r1, r1, #8
	str r0, [r5, r1]
	str r0, [sp, #0x18]
	mov r0, #0x14
	mov r1, #0x3d
	bl NARC_New
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _0223E326
	cmp r0, #0x12
	bge _0223E326
	ldr r6, _0223E470 ; =0x000011F4
	mov r4, #0
_0223E29A:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl PCStorage_GetMonByIndexPair
	ldr r2, [r5, r6]
	lsl r1, r4, #2
	add r1, r2, r1
	bl ov70_0223E114
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _0223E29A
	mov r4, #0
_0223E2BA:
	ldr r0, _0223E470 ; =0x000011F4
	lsl r6, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	strh r0, [r1, r6]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r7, r5, r6
	bl PCStorage_GetMonByIndexPair
	ldr r1, [sp, #0x1c]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, _0223E470 ; =0x000011F4
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r3, sp, #0x2c
	add r1, r1, r6
	str r1, [sp, #8]
	mov r1, #0x83
	lsl r1, r1, #2
	mul r2, r1
	ldr r1, [sp, #0x18]
	lsl r6, r4, #1
	add r1, r1, r2
	str r1, [sp, #0xc]
	ldr r1, _0223E474 ; =0x00000DD8
	mov r2, #0xe5
	lsl r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	add r3, r3, r6
	bl ov70_0223E170
	cmp r4, #6
	bhs _0223E30E
	ldr r0, _0223E478 ; =0x00000EC8
	mov r1, #0
	ldr r0, [r7, r0]
	bl Sprite_SetDrawFlag
_0223E30E:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _0223E2BA
	ldr r2, _0223E47C ; =0x00000BB4
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r2]
	bl PCStorage_GetBoxName
	b _0223E414
_0223E326:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl Party_GetCount
	mov r4, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _0223E3B6
_0223E336:
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl Party_GetMonByIndex
	str r0, [sp, #0x24]
	bl Mon_GetBoxMon
	ldr r1, _0223E470 ; =0x000011F4
	lsl r6, r4, #2
	ldr r1, [r5, r1]
	str r0, [sp, #0x28]
	add r1, r1, r6
	bl ov70_0223E114
	mov r2, #0xe5
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E470 ; =0x000011F4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r7, r5, r6
	add r0, r0, r6
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #2
	mul r1, r0
	ldr r0, [sp, #0x18]
	lsl r2, r2, #4
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, _0223E474 ; =0x00000DD8
	ldr r0, [sp, #0x28]
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	lsl r6, r4, #1
	add r3, sp, #0x2c
	add r3, r3, r6
	bl ov70_0223E170
	ldr r0, [sp, #0x24]
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	ldr r0, _0223E478 ; =0x00000EC8
	beq _0223E3A2
	ldr r0, [r7, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	b _0223E3AA
_0223E3A2:
	ldr r0, [r7, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0223E3AA:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt _0223E336
_0223E3B6:
	cmp r4, #0x1e
	bhs _0223E404
	mov r7, #0
_0223E3BC:
	ldr r0, _0223E470 ; =0x000011F4
	lsl r1, r4, #2
	ldr r0, [r5, r0]
	add r6, r5, r1
	strh r7, [r0, r1]
	ldr r0, _0223E474 ; =0x00000DD8
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0xe5
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x83
	lsl r0, r0, #2
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r1, r0, r1
	mov r0, #0
	str r0, [r1, #8]
	cmp r4, #6
	bhs _0223E3FA
	ldr r0, _0223E478 ; =0x00000EC8
	mov r1, #0
	ldr r0, [r6, r0]
	bl Sprite_SetDrawFlag
_0223E3FA:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _0223E3BC
_0223E404:
	mov r2, #0xba
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x14
	ldr r2, [r5, r2]
	mov r1, #0x5c
	bl ReadMsgDataIntoString
_0223E414:
	ldr r0, [sp, #0x1c]
	bl NARC_Delete
	ldr r0, _0223E480 ; =0x00000F48
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223E484 ; =0x00010200
	ldr r1, _0223E47C ; =0x00000BB4
	str r0, [sp, #4]
	ldr r0, _0223E480 ; =0x00000F48
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0
	mov r3, #5
	bl ov70_02245084
	ldr r0, [r5, #0x24]
	cmp r0, #6
	bne _0223E462
	mov r2, #0x35
	lsl r2, r2, #4
	add r4, r5, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r0, _0223E470 ; =0x000011F4
	ldr r3, [r5, r2]
	ldr r1, _0223E474 ; =0x00000DD8
	sub r2, #8
	mul r2, r3
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x18]
	add r1, r5, r1
	add r2, r4, r2
	bl ov70_0223E738
_0223E462:
	ldr r1, _0223E488 ; =ov70_0223E120
	ldr r0, _0223E48C ; =0x00001204
	str r1, [r5, r0]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223E46C: .word 0x00003D68
_0223E470: .word 0x000011F4
_0223E474: .word 0x00000DD8
_0223E478: .word 0x00000EC8
_0223E47C: .word 0x00000BB4
_0223E480: .word 0x00000F48
_0223E484: .word 0x00010200
_0223E488: .word ov70_0223E120
_0223E48C: .word 0x00001204
	thumb_func_end ov70_0223E264

