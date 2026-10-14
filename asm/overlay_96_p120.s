	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E8C70
	.extern ov96_021E91B8

	.text

	.extern PokeathlonCourse_RunSubStateLoop
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_InitPlayerProfiles
	.extern PokeathlonCourse_GetPlayerProfile
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetFieldData_AtIndex
	.extern PokeathlonCourse_GetFieldBA4
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_SetField1ED
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern ov96_021E5E04
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetField3D8_AtIndex
	.extern ov96_021E5E7C
	.extern PokeathlonCourse_GetCurrentParticipantIndex
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_GetSystem
	.extern ov96_021E5F24
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_ResetDataCopyArea
	.extern PokeathlonCourse_SetField3A4
	.extern PokeathlonCourse_ResetField3A4
	.extern PokeathlonCourse_GetField3A4
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateField07_IfDifferent
	.extern PokeathlonCourse_SetStateTransitionType
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern PokeathlonCourse_GetGraphicsSystem

	.text
	thumb_func_start ov96_021E8C70
ov96_021E8C70: ; 0x021E8C70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, [sp, #0x64]
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x64]
	cmp r0, #0
	beq _021E8CA4
	add r0, r2, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8C98
	mov r0, #0xa
	str r0, [sp, #0x44]
	mov r0, #9
	mov r2, #0xb
	str r0, [sp, #0x40]
	b _021E8CC2
_021E8C98:
	mov r0, #7
	str r0, [sp, #0x44]
	mov r0, #6
	mov r2, #8
	str r0, [sp, #0x40]
	b _021E8CC2
_021E8CA4:
	add r0, r2, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8CB8
	mov r0, #4
	str r0, [sp, #0x44]
	mov r0, #3
	mov r2, #5
	str r0, [sp, #0x40]
	b _021E8CC2
_021E8CB8:
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0
	mov r2, #2
	str r0, [sp, #0x40]
_021E8CC2:
	add r0, sp, #0x50
	ldrb r7, [r0, #0x10]
	mov r1, #0x95
	mov r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl AddCharResObjFromNarc
	str r0, [r4]
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x31
	str r0, [sp, #0xc]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x1e
	mov r3, #0
	bl AddPlttResObjFromNarc
	str r0, [r4, #4]
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, [sp, #0x44]
	str r0, [sp, #8]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x95
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #8]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x95
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	ldr r0, [r4, #4]
	bl SpriteTransfer_CreateExtPlttTransferTask
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl SpriteTransfer_GetCharProxy
	str r0, [sp, #0x24]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x24]
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp, #0x28]
	ldr r0, [r4]
	bl GF2DGfxResObj_GetCharDataPtr
	str r0, [sp, #0x20]
	cmp r6, #3
	bne _021E8D6C
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	b _021E8D7A
_021E8D6C:
	cmp r6, #1
	bne _021E8D76
	mov r0, #1
	str r0, [sp, #0x1c]
	b _021E8D7A
_021E8D76:
	mov r0, #1
	str r0, [sp, #0x18]
_021E8D7A:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldrb r2, [r2, #7]
	bl ov96_021E91B8
	add r1, r0, #0
	ldr r2, [r5]
	mov r0, #0x51
	bl AllocAndReadWholeNarcMemberByIdPair
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8DAA
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x3c]
	b _021E8DB4
_021E8DAA:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x3c]
_021E8DB4:
	ldr r0, [sp, #0x34]
	bl NNS_G3dGetTex
	ldr r1, [r0, #0x14]
	str r0, [sp, #0x2c]
	add r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	mov r4, #0
	lsl r1, r0, #5
	mov r0, #2
	lsl r0, r0, #0xa
	str r4, [sp, #0x38]
	sub r7, r0, r1
	add r6, r5, r1
_021E8DD2:
	ldr r0, [sp, #0x3c]
	mov r2, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x3c]
	add r0, r0, r4
	add r3, r2, #0
	bl sub_020145B4
	ldr r0, [sp, #0x64]
	cmp r0, #0
	bne _021E8E72
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E8E2A
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8E2A
	mov r0, #0
_021E8E04:
	cmp r0, r7
	bge _021E8E16
	mov r1, #0x56
	add r2, r6, r0
	lsl r1, r1, #2
	ldrb r3, [r2, r1]
	add r2, r5, r0
	strb r3, [r2, r1]
	b _021E8E20
_021E8E16:
	mov r2, #0x56
	add r3, r5, r0
	lsl r2, r2, #2
	mov r1, #0
	strb r1, [r3, r2]
_021E8E20:
	mov r1, #2
	add r0, r0, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	blt _021E8E04
_021E8E2A:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E8E54
	ldr r0, [sp, #0x24]
	mov r1, #1
	bl NNS_G2dGetImageLocation
	add r1, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r1, r1, r4
	bl GX_LoadOBJ
_021E8E54:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021E8E72
	ldr r0, [sp, #0x24]
	mov r1, #2
	bl NNS_G2dGetImageLocation
	add r1, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r1, r1, r4
	bl GXS_LoadOBJ
_021E8E72:
	ldr r1, [sp, #0x20]
	mov r0, #0x56
	ldr r1, [r1, #0x14]
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r1, r1, r4
	bl MIi_CpuCopyFast
	ldr r0, [sp, #0x14]
	add r4, r4, r0
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, #8
	blt _021E8DD2
	ldr r0, [sp, #0x2c]
	ldr r1, [r0, #0x38]
	add r4, r0, r1
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _021E8EA2
	add r4, #0x20
_021E8EA2:
	add r0, r4, #0
	mov r1, #0x20
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E8EC2
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x20
	bl GX_LoadOBJPltt
_021E8EC2:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021E8EDA
	ldr r0, [sp, #0x28]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_021E8EDA:
	ldr r0, [sp, #0x34]
	bl Heap_Free
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E8C70

