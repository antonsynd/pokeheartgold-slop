	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECC1C

	.text

	thumb_func_start ov103_021ECC1C
ov103_021ECC1C: ; 0x021ECC1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0xfc
	mov r1, #0x9d
	bl NARC_New
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x9d
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	mov r1, #5
	ldr r2, [r2]
	mov r3, #7
	add r4, r0, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x9d
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	ldr r2, [r2]
	mov r1, #4
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #0x9d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #4
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x9d
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	ldr r2, [r2]
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x9d
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	ldr r2, [r2]
	add r3, r1, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x9d
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	ldr r2, [r2]
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r2, #0
	str r2, [sp]
	mov r0, #0x9d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0x9d
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, sp, #0x10
	bl GfGfxLoader_GetCharDataFromOpenNarc
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [r5, #0xc]
	ldr r6, [r0, #0x14]
	add r1, #8
	add r0, r6, #0
	add r0, #0xe0
	mov r2, #0x20
	bl MIi_CpuCopy32
	mov r0, #0x16
	ldr r1, [r5, #0xc]
	lsl r0, r0, #4
	add r0, r6, r0
	add r1, #0x28
	mov r2, #0x20
	bl MIi_CpuCopy32
	add r0, r7, #0
	bl Heap_Free
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov103_021ECC1C

