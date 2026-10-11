	.include "asm/macros.inc"
	.include "overlay_41_0224B21C.inc"
	.include "global.inc"
	.public ov41_0224BC04
	.public ov41_0224BCA4

    .text

	.text
	thumb_func_start ov41_0224BC04
ov41_0224BC04: ; 0x0224BC04
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x7e
	mov r2, #0
	mov r3, #0x60
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x54]
	mov r1, #0x7d
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x1a
	mov r1, #0x80
	mov r2, #0
	add r3, sp, #0x10
	bl GfGfxLoader_GetScrnData
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl LoadRectToBgTilemapRect
	ldr r1, [sp, #0x10]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	bl Heap_Free
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov41_0224BC04

	thumb_func_start ov41_0224BCA4
ov41_0224BCA4: ; 0x0224BCA4
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xef
	mov r2, #4
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xef
	mov r1, #9
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xef
	mov r1, #1
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov41_0224BCA4

