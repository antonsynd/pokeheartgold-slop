	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_02246A94
	.extern ov41_0224BFA4

    .text

	.text
	thumb_func_start ov41_02246A94
ov41_02246A94: ; 0x02246A94
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _02246B30 ; =ov41_0224BFA4
	add r3, sp, #0x14
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl ObjCharTransfer_InitEx
	mov r0, #5
	mov r1, #0xe
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #0xe
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	add r1, r4, #0
	mov r0, #0x30
	add r1, #0x58
	mov r2, #0xe
	bl G2dRenderer_Init
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r2, #2
	add r0, #0x58
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #8
	mov r1, #0
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x48]
	mov r0, #5
	mov r1, #1
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x4c]
	mov r0, #0x30
	mov r1, #2
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x50]
	mov r0, #0x30
	mov r1, #3
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x54]
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02246B30: .word ov41_0224BFA4
	thumb_func_end ov41_02246A94


