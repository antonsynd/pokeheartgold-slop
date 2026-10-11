	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A690
	.extern ov43_0222EDD8
	.extern ov43_0222F0FC

	.text

	.text
	thumb_func_start ov43_0222A690
ov43_0222A690: ; 0x0222A690
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r1, #0
	add r6, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0x10
	add r1, r7, #0
	bl GF_CreateVramTransferManager
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1e
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r7, [sp, #0x10]
	bl OamManager_Create
	ldr r4, _0222A814 ; =ov43_0222EDD8
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	str r7, [sp, #0x38]
	bl ObjCharTransfer_InitEx
	mov r0, #0x40
	add r1, r7, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add r1, r6, #0
	mov r0, #0x40
	add r1, #0xbc
	add r2, r7, #0
	bl G2dRenderer_Init
	str r0, [r6, #4]
	add r0, r6, #0
	add r3, r6, #0
	ldr r1, _0222A818 ; =ov43_0222F0FC
	add r0, #8
	mov r2, #1
	add r3, #0xbc
	bl sub_0200B27C
	mov r4, #0
	add r5, r6, #0
_0222A706:
	mov r0, #0x40
	add r1, r4, #0
	add r2, r7, #0
	bl Create2DGfxResObjMan
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0222A706
	mov r0, #0x64
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r7, [sp, #8]
	add r0, r1, #0
	ldr r0, [r6, r0]
	ldr r1, [r6, #0x58]
	add r3, r2, #0
	bl AddCharResObjFromOpenNarc
	add r1, r6, #0
	add r1, #0xac
	str r0, [r1]
	mov r0, #0x64
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x7a
	str r7, [sp, #0xc]
	lsl r0, r0, #2
	mov r2, #0
	ldr r0, [r6, r0]
	ldr r1, [r6, #0x58]
	add r3, r2, #0
	bl AddPlttResObjFromOpenNarc
	add r1, r6, #0
	add r1, #0xb0
	str r0, [r1]
	mov r0, #0x64
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x7b
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [r6, #0x58]
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	add r1, r6, #0
	add r1, #0xb4
	str r0, [r1]
	mov r0, #0x64
	str r0, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r0, #0x1f
	str r7, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	ldr r1, [r6, #0x58]
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	add r1, r6, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r6, #0
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	cmp r0, #0
	bne _0222A7AC
	bl GF_AssertFail
_0222A7AC:
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0222A7BE
	bl GF_AssertFail
_0222A7BE:
	add r0, r6, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0200A740
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0200A740
	mov r1, #0x64
	add r0, r1, #0
	mov r3, #0x79
	str r1, [sp]
	sub r0, #0x65
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r6, r2]
	add r3, #0xc
	str r2, [sp, #0x1c]
	ldr r2, [r6, r3]
	add r6, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A814: .word ov43_0222EDD8
_0222A818: .word ov43_0222F0FC
	thumb_func_end ov43_0222A690

