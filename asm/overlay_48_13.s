	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_022594F0
	.public ov48_0225B190
	.public ov48_0225B1B0
	.public ov48_0225B2A4

	.text

	thumb_func_start ov48_022594F0
ov48_022594F0: ; 0x022594F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0225963C ; =ov48_0225B190
	add r7, r2, #0
	str r1, [sp, #0x10]
	bl SetBothScreensModesAndDisable
	add r0, r7, #0
	bl BgConfig_Alloc
	str r0, [r5]
	ldr r0, _02259640 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0
	ldr r6, _02259644 ; =ov48_0225B2A4
	ldr r4, _02259648 ; =ov48_0225B1B0
	str r0, [sp, #0x14]
_0225951A:
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
	ldr r0, [sp, #0x14]
	add r6, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _0225951A
	mov r3, #0
	str r3, [sp]
	mov r0, #0x51
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #4
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r7, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #0xb
	mov r3, #4
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r7, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #0xc
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r7, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #4
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r7, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	mov r1, #0x12
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	mov r1, #0x20
	add r2, r7, #0
	bl LoadFontPal1
	mov r1, #0x16
	mov r0, #4
	lsl r1, r1, #4
	add r2, r7, #0
	bl LoadFontPal1
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0x1f
	bl LoadUserFrameGfx1
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0x1f
	bl LoadUserFrameGfx1
	ldr r0, [sp, #0x10]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	str r4, [sp]
	str r7, [sp, #4]
	mov r2, #0xa
	ldr r0, [r5]
	mov r1, #4
	add r3, r2, #0
	bl LoadUserFrameGfx2
	str r4, [sp]
	str r7, [sp, #4]
	mov r1, #1
	ldr r0, [r5]
	add r2, r1, #0
	mov r3, #2
	bl LoadUserFrameGfx2
	ldr r1, _0225964C ; =0x000072CA
	mov r0, #0
	bl BG_SetMaskColor
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225963C: .word ov48_0225B190
_02259640: .word gSystem + 0x60
_02259644: .word ov48_0225B2A4
_02259648: .word ov48_0225B1B0
_0225964C: .word 0x000072CA
	thumb_func_end ov48_022594F0

