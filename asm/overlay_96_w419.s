	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8980

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
	thumb_func_start ov96_021F8980
ov96_021F8980: ; 0x021F8980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r5]
	mov r0, #0x37
	add r1, r5, r1
	bl G2dRenderer_Init
	mov r1, #0x5f
	lsl r1, r1, #2
	mov r7, #0xaa
	str r0, [r5, r1]
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_021F89A2:
	ldr r2, [r5]
	mov r0, #1
	add r1, r6, #0
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _021F89A2
	mov r0, #0x67
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0xa0
	str r0, [sp, #8]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #9
	mov r3, #0
	bl AddCharResObjFromNarc
	mov r1, #0xb
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x67
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #6
	str r2, [sp, #8]
	ldr r0, [r5]
	sub r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0xa0
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x67
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xa0
	mov r2, #8
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0xb2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x67
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xa0
	mov r2, #7
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0xb3
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8980

