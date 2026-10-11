	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02258BB4
	.extern ov47_02259E58

	.text

	.text
	thumb_func_start ov47_02258BB4
ov47_02258BB4: ; 0x02258BB4
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
	mov r1, #0x10
	ldr r0, _02258C40 ; =ov47_02259E58
	add r2, r1, #0
	bl ObjCharTransfer_InitEx
	mov r0, #0x20
	add r1, r6, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	add r1, r5, #0
	mov r0, #0x20
	add r1, #8
	add r2, r6, #0
	bl G2dRenderer_Init
	mov r7, #0x13
	str r0, [r5, #4]
	mov r4, #0
	lsl r7, r7, #4
_02258C12:
	mov r0, #0x20
	add r1, r4, #0
	add r2, r6, #0
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02258C12
	bl sub_0203A880
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02258C40: .word ov47_02259E58
	thumb_func_end ov47_02258BB4

