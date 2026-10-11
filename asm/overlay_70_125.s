#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223D3BC

	.text

	thumb_func_start ov70_0223D3BC
ov70_0223D3BC: ; 0x0223D3BC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	mov r1, #0x3d
	bl String_New
	ldr r1, _0223D400 ; =0x00000BB4
	str r0, [r4, r1]
	mov r0, #0xb4
	mov r1, #0x3d
	bl String_New
	ldr r1, _0223D404 ; =0x00000BBC
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x6d
	bl NewString_ReadMsgData
	ldr r1, _0223D408 ; =0x00000BB8
	str r0, [r4, r1]
	ldr r0, _0223D40C ; =0x00000122
	ldrh r1, [r4, r0]
	cmp r1, #0x1e
	bne _0223D3F2
	mov r1, #0
	strh r1, [r4, r0]
_0223D3F2:
	mov r0, #0x3d
	mov r1, #0x78
	bl Heap_Alloc
	ldr r1, _0223D410 ; =0x000011F4
	str r0, [r4, r1]
	pop {r4, pc}
	.balign 4, 0
_0223D400: .word 0x00000BB4
_0223D404: .word 0x00000BBC
_0223D408: .word 0x00000BB8
_0223D40C: .word 0x00000122
_0223D410: .word 0x000011F4
	thumb_func_end ov70_0223D3BC

