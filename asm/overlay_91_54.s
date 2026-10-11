	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225FA9C
	.public ov91_02261C64

	.text

	thumb_func_start ov91_0225FA9C
ov91_0225FA9C: ; 0x0225FA9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
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
	ldr r4, _0225FB40 ; =ov91_02261C64
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _0225FB44 ; =0x00200010
	add r0, r2, #0
	add r2, r1, #0
	str r6, [sp, #0x20]
	bl ObjCharTransfer_InitEx
	mov r0, #0x10
	add r1, r6, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	ldr r1, _0225FB44 ; =0x00200010
	mov r0, #1
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	add r1, r7, #0
	mov r0, #0x80
	add r1, #0x20
	add r2, r6, #0
	bl G2dRenderer_Init
	str r0, [r7, #0x1c]
	add r0, r7, #0
	mov r2, #2
	add r0, #0x20
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r4, #0
	add r5, r7, #0
_0225FB16:
	mov r0, #0x10
	add r1, r4, #0
	add r2, r6, #0
	bl Create2DGfxResObjMan
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225FB16
	mov r0, #8
	add r1, r6, #0
	bl FontSystem_NewInit
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r7, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FB40: .word ov91_02261C64
_0225FB44: .word 0x00200010
	thumb_func_end ov91_0225FA9C

