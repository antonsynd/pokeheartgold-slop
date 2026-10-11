	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public NintendoWfc_Exit
	.public ov72_02238160
	.public ov72_02238800

	.text

	thumb_func_start NintendoWfc_Exit
NintendoWfc_Exit: ; 0x02238070
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _02238086
	mov r0, #0
	pop {r3, r4, r5, pc}
_02238086:
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r0, #4
	bl FontID_Release
	ldr r0, [r4, #0x24]
	bl Heap_Free
	bl UnloadOVY38
	bl UnloadDwcOverlay
	add r0, r4, #0
	bl ov72_02238800
	ldr r0, _022380F0 ; =0x00000BDC
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _022380F4 ; =0x00000BD8
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _022380F8 ; =0x00000BD4
	ldr r0, [r4, r0]
	bl DestroyMsgData
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl MessageFormat_Delete
	add r0, r4, #0
	bl ov72_02238160
	bl sub_02034DE0
	ldr r0, [r4, #4]
	bl Heap_Free
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x43
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022380F0: .word 0x00000BDC
_022380F4: .word 0x00000BD8
_022380F8: .word 0x00000BD4
	thumb_func_end NintendoWfc_Exit

