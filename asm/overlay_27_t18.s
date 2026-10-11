	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225AAD4
	.public ov27_0225AC00
	.public ov27_0225AD0C
	.extern ov27_0225AA60
	.extern ov27_0225AEA8
	.extern ov27_0225BDC8
	.extern ov27_0225C1AC
	.extern ov27_0225C1EC
	.extern ov27_0225CEEC
	.extern ov27_0225CEF0
	.extern ov27_0225CEF4
	.extern ov27_0225CF10
	.extern ov27_0225D074

	.text

	.text
	thumb_func_start ov27_0225AAD4
ov27_0225AAD4: ; 0x0225AAD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0225ABF4 ; =0x00000514
	mov r1, #7
	add r0, r5, r0
	bl ov27_0225AA60
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x3f
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r4, _0225ABF8 ; =ov27_0225CF10
	mov r6, #0
	add r7, r5, #0
	str r0, [sp, #0xc]
_0225AAF6:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl FieldSystem_ShouldDrawStartMenuIcon
	cmp r0, #1
	bne _0225AB62
	ldr r0, _0225ABF4 ; =0x00000514
	add r1, r5, r6
	ldrb r0, [r1, r0]
	str r1, [sp]
	cmp r0, #0
	bne _0225AB62
	ldrh r0, [r4]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldrh r0, [r4]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrh r1, [r4, #2]
	bl Sprite_SetAnimCtrlSeq
	ldrb r0, [r4, #4]
	lsl r1, r0, #4
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	bl CopyWindowToVram
	ldr r1, [sp]
	ldr r0, _0225ABF4 ; =0x00000514
	mov r2, #1
	strb r2, [r1, r0]
	add r1, r2, #0
	sub r0, #0xa4
	strb r1, [r7, r0]
	ldr r0, [r5, #0x10]
	add r1, r0, #0
	add r1, #0xd2
	ldrb r2, [r1]
	mov r1, #0x80
	add r0, #0xd2
	orr r1, r2
	strb r1, [r0]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0225AB62:
	add r6, r6, #1
	add r4, r4, #6
	add r7, #8
	cmp r6, #7
	blt _0225AAF6
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0225AB8E
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0225AB8E
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x3e
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowToVram
_0225AB8E:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _0225ABB2
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r0, #0xd3
	strb r1, [r0]
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	add r1, #0xd3
	ldrb r1, [r1]
	bl ov27_0225C1AC
	str r0, [r5, #0x14]
	add r0, r5, #0
	bl ov27_0225C1EC
_0225ABB2:
	add r0, r5, #0
	bl ov27_0225BDC8
	cmp r0, #1
	bne _0225ABEE
	ldr r0, _0225ABFC ; =0x0000050C
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0225ABEE
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0225ABFC ; =0x0000050C
	mov r1, #1
	strb r1, [r5, r0]
_0225ABEE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ABF4: .word 0x00000514
_0225ABF8: .word ov27_0225CF10
_0225ABFC: .word 0x0000050C
	thumb_func_end ov27_0225AAD4

	thumb_func_start ov27_0225AC00
ov27_0225AC00: ; 0x0225AC00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	mov r0, #0
	str r0, [sp]
	ldr r1, _0225ACFC ; =ov27_0225CEF0
	str r0, [sp, #4]
	mov r0, #1
	add r5, r2, #0
	str r0, [sp, #8]
	mov r0, #8
	add r6, r3, #0
	str r0, [sp, #0xc]
	ldr r1, [r1, r4]
	ldr r2, [sp, #0x14]
	mov r0, #0xe
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	ldr r1, _0225AD00 ; =ov27_0225CEF4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r1, [r1, r4]
	ldr r2, [sp, #0x14]
	mov r0, #0xe
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	mov r0, #2
	ldr r1, _0225AD04 ; =ov27_0225CEEC
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r1, [r1, r4]
	mov r0, #0xe
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xd2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	mov r2, #5
	mov r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xe2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	mov r2, #5
	mov r3, #9
	bl AddWindowParameterized
	add r0, r6, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r4, _0225AD08 ; =ov27_0225D074
	ldr r5, [sp, #0x30]
	mov r7, #0
	mov r6, #0xf6
_0225ACB8:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	mov r2, #5
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, #0x12
	add r4, #8
	add r5, #0x10
	cmp r7, #8
	blt _0225ACB8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ACFC: .word ov27_0225CEF0
_0225AD00: .word ov27_0225CEF4
_0225AD04: .word ov27_0225CEEC
_0225AD08: .word ov27_0225D074
	thumb_func_end ov27_0225AC00

	thumb_func_start ov27_0225AD0C
ov27_0225AD0C: ; 0x0225AD0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	mov r0, #0x10
	add r1, #0x1c
	mov r2, #8
	bl G2dRenderer_Init
	str r0, [r5, #0x18]
	add r0, r5, #0
	mov r2, #1
	add r0, #0x1c
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r7, #0x51
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0225AD36:
	mov r0, #0xb
	add r1, r6, #0
	mov r2, #8
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0225AD36
	mov r0, #0x55
	lsl r0, r0, #2
	mov r4, #0
	add r6, r5, r0
_0225AD52:
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfile
	bl PlayerProfile_GetTrainerGender
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_Bag_Get
	add r1, r4, #0
	add r1, #0x64
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0225AE84 ; =0x0000051C
	mov r1, #0x51
	ldr r0, [r5, r0]
	lsl r1, r1, #2
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r1, r5, r1
	add r2, r6, #0
	add r3, r4, #0
	bl ov27_0225AEA8
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #0xb
	blt _0225AD52
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	add r1, #0xe8
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x10
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #8
	add r1, #0xec
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x11
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	add r1, #0xe7
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x44
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x65
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #8
	add r1, #0xeb
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x45
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0x66
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	add r1, #0xe6
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x36
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x66
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #8
	add r1, #0xea
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xe
	mov r2, #0x37
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0xe
	add r1, r0, #0
	add r2, sp, #0x10
	mov r3, #8
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x40
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	ldr r1, _0225AE88 ; =0x000004CC
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	mov r2, #0x40
	bl MIi_CpuCopyFast
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225AE84: .word 0x0000051C
_0225AE88: .word 0x000004CC
	thumb_func_end ov27_0225AD0C

