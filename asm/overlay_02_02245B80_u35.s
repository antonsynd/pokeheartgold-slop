#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_022469D8
	.public ov02_02246A34

	.text

	.text
	thumb_func_start ov02_022469D8
ov02_022469D8: ; 0x022469D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x1c
	add r7, r2, #0
	bl Heap_Alloc
	add r4, r0, #0
	bne _022469F8
	bl GF_AssertFail
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022469F8:
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r5, [r4, #8]
	str r6, [r4, #0x10]
	str r7, [r4, #0x14]
	mov r0, #4
	str r0, [r4]
	bl AllocMonZeroed
	str r0, [r4, #0xc]
	bl ZeroMonData
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0x95
	mov r2, #0x64
	mov r3, #0x20
	bl CreateMon
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov02_022469D8

	thumb_func_start ov02_02246A34
ov02_02246A34: ; 0x02246A34
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02246A48
	cmp r0, #1
	beq _02246A5E
	b _02246A7E
_02246A48:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	bl ov02_022494C4
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02246A7E
_02246A5E:
	ldr r0, [r4, #0x18]
	bl ov02_0224953C
	cmp r0, #0
	beq _02246A7E
	ldr r0, [r4, #0x18]
	bl ov02_02249548
	ldr r0, [r4, #0xc]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	mov r0, #1
	pop {r4, pc}
_02246A7E:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov02_02246A34

