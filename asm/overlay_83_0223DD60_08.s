	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FA74

    .text

	thumb_func_start ov83_0223FA74
ov83_0223FA74: ; 0x0223FA74
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb7
	mov r1, #0x9c
	add r2, sp, #0
	mov r3, #0x6b
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0xe0
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0xe0
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FA74

