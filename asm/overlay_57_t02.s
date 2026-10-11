	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02237B20
	.extern ov57_02237CDC
	.extern ov57_02237E80
	.extern ov57_022383AC
	.extern ov57_02238714
	.extern ov57_022390F4

	.text

	.text
	thumb_func_start ov57_02237B20
ov57_02237B20: ; 0x02237B20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #1
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #2
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #3
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #4
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #5
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #6
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #7
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl Heap_Free
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #0
	bl PaletteData_FreeBuffers
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	bl PaletteData_FreeBuffers
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #2
	bl PaletteData_FreeBuffers
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #3
	bl PaletteData_FreeBuffers
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl PaletteData_Free
	mov r1, #0xfb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r0, [r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov57_02237E80
	ldr r0, _02237C94 ; =0x00000458
	ldr r0, [r4, r0]
	bl Heap_Free
	add r0, r4, #0
	bl ov57_022383AC
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PokepicManager_Delete
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02016F2C
	add r0, r4, #0
	bl ov57_02238714
	add r0, r4, #0
	add r0, #0xd4
	bl ov57_022390F4
	bl GF_DestroyVramTransferManager
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GF_3DVramMan_Delete
	mov r0, #0x34
	bl ov57_02237CDC
	ldr r0, _02237C98 ; =0x0000045C
	ldr r0, [r4, r0]
	bl NARC_Delete
	ldr r0, [r4]
	ldr r1, _02237C9C ; =0x0000040C
	ldr r0, [r0, #0x2c]
	ldr r1, [r4, r1]
	bl MenuInputStateMgr_SetState
	add r0, r5, #0
	bl OverlayManager_FreeData
	bl sub_02021238
	mov r0, #0x34
	bl Heap_Destroy
	ldr r0, _02237CA0 ; =FS_OVERLAY_ID(OVY_6)
	bl UnloadOverlayByID
	ldr r0, _02237CA4 ; =FS_OVERLAY_ID(OVY_7)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02237C94: .word 0x00000458
_02237C98: .word 0x0000045C
_02237C9C: .word 0x0000040C
_02237CA0: .word FS_OVERLAY_ID(OVY_6)
_02237CA4: .word FS_OVERLAY_ID(OVY_7)
	thumb_func_end ov57_02237B20

