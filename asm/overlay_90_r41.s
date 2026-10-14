	.include "macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_022590CC
	.extern ov90_0225C294

	.text

	.text
	thumb_func_start ov90_022590CC
ov90_022590CC: ; 0x022590CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	str r1, [sp, #0x14]
	add r6, r2, #0
	str r3, [sp, #0x18]
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	ldr r4, [sp, #0x40]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r4, [sp, #0x10]
	bl OamManager_Create
	ldr r3, _02259154 ; =ov90_0225C294
	add r2, sp, #0x1c
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x10
	add r0, r7, #0
	add r2, r1, #0
	str r6, [sp, #0x1c]
	str r4, [sp, #0x28]
	bl ObjCharTransfer_InitEx
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	ldr r0, [sp, #0x14]
	add r1, r5, #4
	add r2, r4, #0
	bl G2dRenderer_Init
	str r0, [r5]
	bl sub_0203A880
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02259154: .word ov90_0225C294
	thumb_func_end ov90_022590CC

