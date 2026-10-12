#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_02245ED8

	.text

	.text
	thumb_func_start ov02_02245ED8
ov02_02245ED8: ; 0x02245ED8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r3, [sp, #0xc]
	add r0, #0x9c
	ldrb r0, [r0]
	add r7, r2, #0
	str r1, [sp, #8]
	cmp r0, #0
	beq _02245F38
	mov r6, #0
	cmp r0, #0
	ble _02245F2E
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x8c
	add r4, r6, #0
	str r0, [sp, #0x14]
_02245F04:
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	ldr r0, [sp, #0x10]
	add r1, r1, r4
	bl Field3dObject_RemoveAnimation
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	add r0, r0, r4
	bl Field3dModelAnimation_Unload
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _02245F04
_02245F2E:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl Heap_Free
_02245F38:
	add r1, r5, #0
	ldr r0, [sp, #0xc]
	add r1, #0x9c
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x9c
	add r0, r5, #0
	ldrb r2, [r1]
	add r0, #0xa0
	mov r1, #0x14
	ldr r0, [r0]
	mul r1, r2
	bl Heap_Alloc
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	add r2, r5, #0
	add r2, #0x9c
	add r0, r5, #0
	ldrb r3, [r2]
	add r0, #0x88
	mov r2, #0x14
	ldr r0, [r0]
	mov r1, #0
	mul r2, r3
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _02245FCA
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x8c
	str r0, [sp, #0x18]
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x10
	add r4, r6, #0
	str r0, [sp, #0x1c]
_02245F8E:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	ldrh r3, [r7]
	add r0, r0, r4
	bl Field3dModelAnimation_LoadFromFilesystem
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	ldr r0, [sp, #0x1c]
	add r1, r1, r4
	bl Field3dObject_AddAnimation
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r6, r6, #1
	add r7, r7, #2
	add r4, #0x14
	cmp r6, r0
	blt _02245F8E
_02245FCA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov02_02245ED8

