	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E94CC
	.public ov102_021E95E0
	.public ov102_021E9694
	.public ov102_021E978C
	.extern ov102_021E91C4
	.extern ov102_021E937C
	.extern ov102_021E94A4
	.extern ov102_021EA314
	.extern ov102_021EA380
	.extern ov102_021EA41C
	.extern ov102_021EB1A4
	.extern ov102_021EB1E0
	.extern ov102_021EB1F8
	.extern ov102_021EB694
	.extern ov102_021EB6C8
	.extern ov102_021EB6E0
	.extern ov102_021EBC34
	.extern ov102_021EBCBC
	.extern ov102_021EBD00
	.extern ov102_021EC20C
	.extern ov102_021EC240
	.extern ov102_021EC248
	.extern ov102_021EC6A8
	.extern ov102_021EC6B8
	.extern ov102_021EC6D4
	.extern ov102_021EC6F0
	.extern ov102_021EC70C
	.extern ov102_021EC728
	.extern ov102_021EC744
	.extern ov102_021EC760

	.text

	.text
	thumb_func_start ov102_021E94CC
ov102_021E94CC: ; 0x021E94CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _021E95D0 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _021E95D4 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r2, [r1]
	ldr r3, _021E95D8 ; =0xFFCFFFEF
	add r5, r2, #0
	ldr r2, _021E95DC ; =0x00100010
	and r5, r3
	orr r2, r5
	str r2, [r1]
	ldr r1, [r0]
	add r2, r1, #0
	and r2, r3
	mov r1, #0x10
	orr r1, r2
	str r1, [r0]
	mov r0, #0x4c
	mov r1, #0x23
	bl NARC_New
	add r5, r0, #0
	add r0, r4, #0
	bl ov102_021E978C
	add r0, r4, #0
	add r1, r5, #0
	bl ov102_021E95E0
	ldr r0, [r4]
	bl ov102_021E91C4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EA314
	mov r1, #0x1e
	ldr r2, [r4]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EA41C
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EB1A4
	mov r1, #0x79
	ldr r2, [r4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EB1F8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EB694
	mov r1, #0x7a
	ldr r2, [r4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EB6E0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EBC34
	mov r1, #0x7b
	ldr r2, [r4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	bl ov102_021EBD00
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EC20C
	mov r1, #0x1f
	ldr r2, [r4]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EC248
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	bl GX_DispOn
	add r0, r5, #0
	bl NARC_Delete
	add r0, r4, #0
	bl ov102_021E94A4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E95D0: .word 0xFFFFE0FF
_021E95D4: .word 0x04001000
_021E95D8: .word 0xFFCFFFEF
_021E95DC: .word 0x00100010
	thumb_func_end ov102_021E94CC

	thumb_func_start ov102_021E95E0
ov102_021E95E0: ; 0x021E95E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [r0]
	mov r0, #0x66
	lsl r0, r0, #2
	add r5, r1, #0
	add r1, r4, r0
	str r1, [sp, #0x1c]
	add r1, r0, #0
	sub r1, #0x48
	add r7, r4, r1
	add r1, r0, #0
	add r1, #0x28
	add r0, #0x30
	add r1, r4, r1
	add r0, r4, r0
	mov r6, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
_021E9606:
	ldr r0, [sp, #0x1c]
	bl NNS_G2dInitImagePaletteProxy
	add r0, r7, #0
	bl NNS_G2dInitImageProxy
	mov r0, #0
	str r0, [sp]
	add r0, r6, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	mov r3, #0
	str r7, [sp, #0x10]
	bl GfGfxLoader_LoadImageMappingFromOpenNarc
	mov r0, #0x23
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #1
	mov r3, #0
	bl GfGfxLoader_PartiallyLoadPaletteFromOpenNarc
	mov r0, #0x23
	str r0, [sp]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	mov r1, #7
	mov r2, #1
	bl GfGfxLoader_GetCellBankFromOpenNarc
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x23
	str r0, [sp]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	mov r1, #8
	mov r2, #1
	bl GfGfxLoader_GetAnimBankFromOpenNarc
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	add r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r7, #0x24
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, r0, #4
	str r0, [sp, #0x14]
	cmp r6, #2
	blt _021E9606
	bl sub_0203A964
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov102_021E95E0

	thumb_func_start ov102_021E9694
ov102_021E9694: ; 0x021E9694
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r7, [r6]
	cmp r0, #0
	beq _021E96AA
	cmp r0, #1
	beq _021E96CC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E96AA:
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x23
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r6, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, r7, pc}
_021E96CC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9784
	mov r0, #0x1e
	ldr r1, [r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov102_021EA380
	mov r0, #0x79
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov102_021EB1E0
	mov r0, #0x7a
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov102_021EB6C8
	mov r0, #0x7b
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov102_021EBCBC
	mov r0, #0x1f
	ldr r1, [r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov102_021EC240
	ldr r0, [r6]
	bl ov102_021E937C
	mov r4, #0
	add r5, r7, #0
_021E971A:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9728
	bl Heap_Free
_021E9728:
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9736
	bl Heap_Free
_021E9736:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E971A
	mov r0, #2
	bl FontID_Release
	ldr r0, [r7, #0x20]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r2, _021E9788 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r6, #0
	bl ov102_021E94A4
_021E9784:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9788: .word 0x04000304
	thumb_func_end ov102_021E9694

	thumb_func_start ov102_021E978C
ov102_021E978C: ; 0x021E978C
	push {r3, r4, r5, lr}
	ldr r2, _021E9814 ; =0x04000304
	ldr r5, [r0]
	ldrh r1, [r2]
	ldr r0, _021E9818 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	mov r0, #1
	mov r1, #0
	add r2, r0, #0
	bl GX_SetGraphicsMode
	ldr r0, _021E981C ; =ov102_021EC760
	bl GfGfx_SetBanks
	ldr r0, _021E9820 ; =ov102_021EC6A8
	bl SetBothScreensModesAndDisable
	mov r1, #0
	ldr r0, [r5, #0x20]
	ldr r2, _021E9824 ; =ov102_021EC728
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0x20]
	ldr r2, _021E9828 ; =ov102_021EC6D4
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0x20]
	ldr r2, _021E982C ; =ov102_021EC6B8
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0x20]
	ldr r2, _021E9830 ; =ov102_021EC70C
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0x20]
	ldr r2, _021E9834 ; =ov102_021EC744
	mov r1, #4
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0x20]
	ldr r2, _021E9838 ; =ov102_021EC6F0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	mov r4, #0
_021E97FA:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	add r4, r4, #1
	cmp r4, #6
	blt _021E97FA
	mov r0, #2
	mov r1, #0x23
	bl FontID_Alloc
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9814: .word 0x04000304
_021E9818: .word 0xFFFF7FFF
_021E981C: .word ov102_021EC760
_021E9820: .word ov102_021EC6A8
_021E9824: .word ov102_021EC728
_021E9828: .word ov102_021EC6D4
_021E982C: .word ov102_021EC6B8
_021E9830: .word ov102_021EC70C
_021E9834: .word ov102_021EC744
_021E9838: .word ov102_021EC6F0
	thumb_func_end ov102_021E978C

