	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240770

	.text

	thumb_func_start ov81_02240770
ov81_02240770: ; 0x02240770
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb7
	mov r1, #0xc1
	add r2, sp, #0
	mov r3, #0x64
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x16
	ldr r0, [r0, #0xc]
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r0, [sp]
	mov r2, #0x16
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov81_02240770

