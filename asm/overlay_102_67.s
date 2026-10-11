	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA80C

	.text

	thumb_func_start ov102_021EA80C
ov102_021EA80C: ; 0x021EA80C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0x23
	mov r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	add r0, r5, #0
	mov r1, #0x10
	add r2, sp, #8
	mov r3, #0x23
	bl GfGfxLoader_GetPlttDataFromOpenNarc
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, r4, #0
	mov r2, #5
	ldr r0, [r0, #0xc]
	add r1, #0xa0
	lsl r2, r2, #6
	bl MIi_CpuCopy16
	add r4, #0xa0
	mov r1, #5
	add r0, r4, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	add r0, r5, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021EA80C

