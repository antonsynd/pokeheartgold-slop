#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E5BAC
	.public ov73_021E5ED4
	.public ov73_021E5F0C
	.public ov73_021E6048
	.public ov73_021E6400

	.text

	thumb_func_start ov73_021E5BAC
ov73_021E5BAC: ; 0x021E5BAC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl OverlayManager_GetData
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	bl SysTask_Destroy
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0x5f
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021E5BD8:
	ldr r0, [r5, r7]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E5BD8
	ldr r0, [r6, #0x50]
	bl SpriteList_Delete
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	add r0, r6, #0
	bl ov73_021E6400
	add r0, r6, #0
	bl ov73_021E6048
	ldr r0, [r6]
	bl ov73_021E5F0C
	mov r0, #2
	bl sub_02038C1C
	bl sub_02037FF0
	ldr r0, [r6, #8]
	ldr r0, [r0, #4]
	bl sub_0205AD24
	bl sub_02021238
	mov r0, #4
	bl FontID_Release
	ldr r0, [r6, #0x28]
	bl DestroyMsgData
	ldr r0, [r6, #0x24]
	bl MessageFormat_Delete
	ldr r0, [r6, #8]
	mov r1, #0xc5
	lsl r1, r1, #2
	ldr r0, [r0, #0x10]
	ldr r1, [r6, r1]
	bl MenuInputStateMgr_SetState
	add r0, r6, #0
	bl ov73_021E5ED4
	ldr r0, [sp]
	bl OverlayManager_FreeData
	ldr r2, _021E5C70 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	bl sub_0205A904
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x32
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5C70: .word 0x04000304
	thumb_func_end ov73_021E5BAC

