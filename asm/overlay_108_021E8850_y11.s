	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E8CD4
	.public ov108_021E8E10
	.extern ov108_021E9144
	.extern ov108_021E9230

	.text

	.text
	thumb_func_start ov108_021E8CD4
ov108_021E8CD4: ; 0x021E8CD4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0xf4
	add r5, r0, #0
	bl MI_CpuFill8
	bl NNS_G3dInit
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r0, _021E8DF4 ; =0x04000060
	ldr r1, _021E8DF8 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021E8DFC ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _021E8E00 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021E8E04 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _021E8E08 ; =0xBFFF0000
	str r0, [r1, #0x40]
	add r0, r5, #0
	str r4, [r5, #0x14]
	add r0, #0xf1
	strb r6, [r0]
	mov r0, #0x80
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl Heap_Alloc
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	mov r0, #1
	add r2, r5, #0
	str r0, [sp]
	add r2, #0xec
	ldr r2, [r2]
	lsl r0, r0, #0x11
	mov r1, #0
	add r3, r6, #0
	bl GF_3DVramMan_InitLinkedListTexVramManager
	mov r0, #1
	lsl r0, r0, #8
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl Heap_Alloc
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe8
	mov r0, #1
	ldr r1, [r1]
	lsl r0, r0, #0xe
	add r2, r6, #0
	mov r3, #1
	bl GF_3DVramMan_InitLinkedListPlttVramManager
	add r0, r5, #4
	add r1, r4, #0
	mov r2, #0x20
	bl HeapExp_FndInitAllocator
	mov r0, #0x28
	add r1, r4, #0
	bl NARC_New
	str r0, [r5, #0x18]
	mov r0, #0x6b
	add r1, r4, #0
	bl NARC_New
	str r0, [r5, #0x1c]
	mov r0, #0x6a
	add r1, r4, #0
	bl NARC_New
	str r0, [r5, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl ov108_021E9230
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r1, _021E8E0C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E8DF4: .word 0x04000060
_021E8DF8: .word 0xFFFFCFFD
_021E8DFC: .word 0x0000CFFB
_021E8E00: .word 0x00007FFF
_021E8E04: .word 0x04000540
_021E8E08: .word 0xBFFF0000
_021E8E0C: .word 0x04000008
	thumb_func_end ov108_021E8CD4

	thumb_func_start ov108_021E8E10
ov108_021E8E10: ; 0x021E8E10
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	bl NNS_G3dGeFlushBuffer
	ldr r2, _021E8E58 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2]
	add r1, #0x14
	str r3, [r1]
	mov r0, #2
	str r0, [r2]
	add r0, r4, #0
	str r3, [r1]
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021E8E4E
	add r0, r4, #0
	add r0, #0xd8
	ldrh r0, [r0]
	cmp r0, #0
	beq _021E8E4E
	add r4, #0x24
	add r0, r4, #0
	bl ov108_021E9144
_021E8E4E:
	ldr r0, _021E8E5C ; =0x04000540
	mov r1, #1
	str r1, [r0]
	pop {r4, pc}
	nop
_021E8E58: .word 0x04000440
_021E8E5C: .word 0x04000540
	thumb_func_end ov108_021E8E10

