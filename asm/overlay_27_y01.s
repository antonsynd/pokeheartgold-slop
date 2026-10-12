	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A19C
	.extern ov27_0225BC34
	.extern ov27_0225BEB0
	.extern ov27_0225C238
	.extern ov27_0225C248
	.extern ov27_0225C24C

	.text

	.text
	thumb_func_start ov27_0225A19C
ov27_0225A19C: ; 0x0225A19C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl SysTask_GetData
	add r6, r0, #0
	ldr r1, _0225A2B0 ; =FS_OVERLAY_ID(ds_protect)
	mov r0, #0
	bl FS_LoadOverlay
	ldr r0, _0225A2B4 ; =ov27_0225C238
	bl DSProt_DetectFlashcart
	cmp r0, #0
	beq _0225A1C8
	mov r1, #0xfa
	mov r0, #3
	lsl r1, r1, #2
	bl Heap_AllocAtEnd
_0225A1C8:
	mov r0, #0x52
	lsl r0, r0, #4
	add r0, r6, r0
	bl ov27_0225BEB0
	ldr r0, _0225A2B8 ; =0x000004A8
	ldr r0, [r6, r0]
	bl DestroyMsgData
	ldr r0, _0225A2BC ; =0x000004AC
	ldr r0, [r6, r0]
	bl MessageFormat_Delete
	mov r7, #0x55
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0225A1EA:
	ldr r0, [r5, r7]
	bl SpriteTransfer_DeleteCharTransferTask
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xb
	blt _0225A1EA
	mov r7, #0x56
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0225A200:
	ldr r0, [r4, r7]
	bl SpriteTransfer_DeletePlttTransferTask
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0xb
	blt _0225A200
	mov r7, #0x51
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0225A216:
	ldr r0, [r4, r7]
	bl Destroy2DGfxResObjMan
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _0225A216
	ldr r0, _0225A2C0 ; =ov27_0225C248
	bl DSProt_DetectNotEmulator
	cmp r0, #0
	bne _0225A238
	mov r1, #0xfa
	mov r0, #3
	lsl r1, r1, #2
	bl Heap_AllocAtEnd
_0225A238:
	ldr r0, [r6, #0x18]
	bl SpriteList_Delete
	mov r0, #0x3f
	lsl r0, r0, #4
	mov r5, #0
	add r4, r6, r0
_0225A246:
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #8
	blt _0225A246
	mov r0, #0x3e
	lsl r0, r0, #4
	add r0, r6, r0
	bl RemoveWindow
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r6, r0
	bl RemoveWindow
	add r0, r6, #0
	bl ov27_0225BC34
	mov r0, #4
	bl FontID_Release
	ldr r0, [sp, #4]
	bl DestroySysTaskAndEnvironment
	ldr r0, [sp]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [sp]
	mov r1, #4
	bl FreeBgTilemapBuffer
	mov r0, #8
	bl Heap_Destroy
	ldr r0, _0225A2C4 ; =ov27_0225C24C
	bl DSProt_DetectNotDummy
	cmp r0, #0
	bne _0225A2A4
	mov r1, #0xfa
	mov r0, #3
	lsl r1, r1, #2
	bl Heap_AllocAtEnd
_0225A2A4:
	ldr r1, _0225A2B0 ; =FS_OVERLAY_ID(ds_protect)
	mov r0, #0
	bl FS_UnloadOverlay
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A2B0: .word FS_OVERLAY_ID(ds_protect)
_0225A2B4: .word ov27_0225C238
_0225A2B8: .word 0x000004A8
_0225A2BC: .word 0x000004AC
_0225A2C0: .word ov27_0225C248
_0225A2C4: .word ov27_0225C24C
	thumb_func_end ov27_0225A19C

