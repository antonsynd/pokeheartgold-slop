	.include "asm/macros.inc"
	.include "overlay_88.inc"
	.include "global.inc"
	.public ov88_02258B34
	.extern ov88_02259934
	.extern ov88_02259944
	.extern ov88_022599C0

	.text

	.text
	thumb_func_start ov88_02258B34
ov88_02258B34: ; 0x02258B34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _02258C50 ; =ov88_02259934
	add r7, r1, #0
	bl SetBothScreensModesAndDisable
	add r0, r7, #0
	bl BgConfig_Alloc
	str r0, [r5]
	ldr r0, _02258C54 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0
	ldr r6, _02258C58 ; =ov88_022599C0
	ldr r4, _02258C5C ; =ov88_02259944
	str r0, [sp, #0x10]
_02258B5C:
	ldr r1, [r4]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r7, #0
	bl BG_ClearCharDataRange
	ldr r1, [r4]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	ldr r0, [sp, #0x10]
	add r6, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _02258B5C
	mov r1, #0
	str r1, [sp]
	mov r0, #5
	str r7, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #6
	add r2, r7, #0
	bl LoadFontPal1
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	mov r1, #1
	ldr r0, [r5, r0]
	ldr r2, [r5]
	add r3, r1, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #3
	mov r3, #1
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #4
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r1, #0
	str r1, [sp]
	mov r0, #5
	str r7, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r2, #4
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #2
	mov r3, #4
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #6
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02258C50: .word ov88_02259934
_02258C54: .word gSystem + 0x60
_02258C58: .word ov88_022599C0
_02258C5C: .word ov88_02259944
	thumb_func_end ov88_02258B34

