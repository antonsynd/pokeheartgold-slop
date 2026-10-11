	.include "asm/macros.inc"
	.include "overlay_88.inc"
	.include "global.inc"
	.public ov88_02258C98
	.extern ov88_02259914

	.text

	.text
	thumb_func_start ov88_02258C98
ov88_02258C98: ; 0x02258C98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
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
	ldr r0, _02258D30 ; =ov88_02259914
	ldr r1, _02258D34 ; =0x00200010
	mov r2, #0x10
	bl ObjCharTransfer_InitEx
	mov r0, #0x20
	add r1, r6, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	ldr r1, _02258D34 ; =0x00200010
	mov r0, #1
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	add r1, r5, #0
	mov r0, #0x20
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
	mov r7, #0x13
	mov r4, #0
	lsl r7, r7, #4
_02258D04:
	mov r0, #0x20
	add r1, r4, #0
	add r2, r6, #0
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02258D04
	bl sub_0203A880
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02258D30: .word ov88_02259914
_02258D34: .word 0x00200010
	thumb_func_end ov88_02258C98

