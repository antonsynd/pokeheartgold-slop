	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A5EC
	.extern ov49_0225A854
	.extern ov49_02269724
	.extern ov49_02269734
	.extern ov49_02269744
	.extern ov49_022697CC
	.extern ov49_0226981C

    .text

	.text
	thumb_func_start ov49_0225A5EC
ov49_0225A5EC: ; 0x0225A5EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r0, _0225A798 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0225A79C ; =0x04001050
	add r6, r2, #0
	strh r1, [r0]
	mov r0, #0x20
	add r1, r6, #0
	bl GF_CreateVramTransferManager
	ldr r0, _0225A7A0 ; =ov49_022697CC
	bl GfGfx_SetBanks
	ldr r0, _0225A7A4 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0
	add r1, r0, #0
	bl BG_SetMaskColor
	ldr r0, _0225A7A8 ; =ov49_02269724
	bl SetBothScreensModesAndDisable
	add r0, r6, #0
	bl BgConfig_Alloc
	str r0, [r5]
	mov r0, #0
	ldr r7, _0225A7AC ; =ov49_0226981C
	ldr r4, _0225A7B0 ; =ov49_02269734
	str r0, [sp, #0x18]
_0225A636:
	ldr r1, [r4]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r6, #0
	bl BG_ClearCharDataRange
	ldr r1, [r4]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	ldr r0, [sp, #0x18]
	add r7, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225A636
	ldr r0, [sp, #0x14]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0
	mov r1, #0xa0
	add r2, r6, #0
	bl LoadFontPal0
	mov r0, #0
	mov r1, #0x80
	add r2, r6, #0
	bl LoadFontPal1
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl LoadUserFrameGfx1
	mov r1, #1
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	add r2, r1, #0
	add r3, r1, #0
	bl LoadUserFrameGfx2
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl LoadMapSignpostFrameAndGraphic
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xd1
	mov r1, #0x5a
	mov r2, #0
	mov r3, #0x40
	str r6, [sp, #4]
	bl GfGfxLoader_GXLoadPal
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl OamManager_Create
	ldr r0, _0225A7B4 ; =ov49_02269744
	ldr r2, _0225A7B8 ; =0x00100010
	mov r1, #0x10
	bl ObjCharTransfer_InitEx
	mov r0, #0x18
	add r1, r6, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
	add r1, r5, #0
	mov r0, #0x18
	add r1, #8
	add r2, r6, #0
	bl G2dRenderer_Init
	str r0, [r5, #4]
	add r0, r5, #0
	mov r2, #1
	add r0, #8
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r7, #0
	add r4, r5, #0
_0225A742:
	mov r0, #0x18
	add r1, r7, #0
	add r2, r6, #0
	bl Create2DGfxResObjMan
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #4
	blt _0225A742
	mov r0, #0x18
	add r1, r6, #0
	bl sub_02020654
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	str r0, [sp]
	ldr r0, _0225A7BC ; =ov49_0225A854
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #2
	add r3, r1, #0
	bl GF_3DVramMan_Create
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225A798: .word 0x04000050
_0225A79C: .word 0x04001050
_0225A7A0: .word ov49_022697CC
_0225A7A4: .word gSystem + 0x60
_0225A7A8: .word ov49_02269724
_0225A7AC: .word ov49_0226981C
_0225A7B0: .word ov49_02269734
_0225A7B4: .word ov49_02269744
_0225A7B8: .word 0x00100010
_0225A7BC: .word ov49_0225A854
	thumb_func_end ov49_0225A5EC

