#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8168
	.public ov73_021E8198
	.extern ov73_021EA69C

	.text

	.text
	thumb_func_start ov73_021E8168
ov73_021E8168: ; 0x021E8168
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E8194 ; =ov73_021EA69C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #0x14
	mov r1, #0x96
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021E8194: .word ov73_021EA69C
	thumb_func_end ov73_021E8168

	thumb_func_start ov73_021E8198
ov73_021E8198: ; 0x021E8198
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #0x96
	bl NARC_New
	str r0, [sp, #0x14]
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x96
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	ldr r1, _021E8290 ; =0x00000BFC
	mov r0, #0xa
	add r1, r6, r1
	mov r2, #0x96
	bl G2dRenderer_Init
	ldr r1, _021E8294 ; =0x00000BF8
	mov r2, #1
	str r0, [r6, r1]
	add r0, r1, #4
	add r0, r6, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	ldr r7, _021E8298 ; =0x00000D24
	mov r4, #0
	add r5, r6, #0
_021E81E8:
	mov r0, #2
	add r1, r4, #0
	mov r2, #0x96
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E81E8
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x96
	str r0, [sp, #8]
	ldr r0, _021E8298 ; =0x00000D24
	ldr r1, [sp, #0x14]
	ldr r0, [r6, r0]
	mov r2, #0x2e
	bl AddCharResObjFromOpenNarc
	ldr r1, _021E829C ; =0x00000D34
	mov r3, #0
	str r0, [r6, r1]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x96
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xa
	bl AddPlttResObjFromOpenNarc
	ldr r1, _021E82A0 ; =0x00000D38
	mov r2, #0x2f
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x96
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _021E82A4 ; =0x00000D3C
	mov r2, #0x30
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x96
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x35
	lsl r1, r1, #6
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, _021E82A0 ; =0x00000D38
	ldr r0, [r6, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8290: .word 0x00000BFC
_021E8294: .word 0x00000BF8
_021E8298: .word 0x00000D24
_021E829C: .word 0x00000D34
_021E82A0: .word 0x00000D38
_021E82A4: .word 0x00000D3C
	thumb_func_end ov73_021E8198

