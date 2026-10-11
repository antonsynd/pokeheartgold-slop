#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224127C

	.text

	thumb_func_start ov70_0224127C
ov70_0224127C: ; 0x0224127C
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _022412BC ; =0x000011EC
	add r4, r0, #0
	mov r0, #0x54
	mov r1, #0xb
	add r2, r4, r2
	mov r3, #0x3d
	bl GfGfxLoader_GetPlttData
	ldr r3, _022412C0 ; =0x000011E8
	mov r1, #0xc
	str r0, [r4, r3]
	mov r0, #0x3d
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #0x54
	mov r2, #1
	add r3, r4, r3
	bl GfGfxLoader_GetCharData
	ldr r1, _022412C4 ; =0x000011E0
	str r0, [r4, r1]
	add r0, r1, #4
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xe
	bl DC_FlushRange
	add sp, #4
	pop {r3, r4, pc}
	nop
_022412BC: .word 0x000011EC
_022412C0: .word 0x000011E8
_022412C4: .word 0x000011E0
	thumb_func_end ov70_0224127C

